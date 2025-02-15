<?php
include 'db.php';
session_start();

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['success' => false, 'message' => 'Unauthorized']);
    exit;
}

$userId = $_SESSION['user_id'];

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Check if an ID is provided for viewing a specific book
    if (isset($_GET['id'])) {
        $stmt = $pdo->prepare("SELECT * FROM books WHERE id = ? AND userId = ?");
        $stmt->execute([$_GET['id'], $userId]);
        $book = $stmt->fetch(PDO::FETCH_ASSOC);
        echo json_encode($book);
    } else {
        // Fetch all books for the logged-in user
        $stmt = $pdo->prepare("SELECT * FROM books WHERE userId = ?");
        $stmt->execute([$userId]);
        $books = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($books);
    }
} elseif ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Check if we are updating an existing book
    if (isset($_POST['bookId']) && !empty($_POST['bookId'])) {
        // Update existing book
        $stmt = $pdo->prepare("UPDATE books SET title = ?, photo = ?, author = ?, publisher = ?, pages = ? WHERE id = ? AND userId = ?");
        if ($stmt->execute([$_POST['title'], $_POST['photo'], $_POST['author'], $_POST['publisher'], $_POST['pages'], $_POST['bookId'], $userId])) {
            echo json_encode(['success' => true]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Failed to update book.']);
        }
    } else {
        // Add a new book
        $stmt = $pdo->prepare("INSERT INTO books (title, photo, author, publisher, pages, userId) VALUES (?, ?, ?, ?, ?, ?)");
        if ($stmt->execute([$_POST['title'], $_POST['photo'], $_POST['author'], $_POST['publisher'], $_POST['pages'], $userId])) {
            echo json_encode(['success' => true]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Failed to add book.']);
        }
    }
} elseif ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
    // Delete a book
    if (isset($_GET['id'])) {
        $stmt = $pdo->prepare("DELETE FROM books WHERE id = ? AND userId = ?");
        if ($stmt->execute([$_GET['id'], $userId])) {
            echo json_encode(['success' => true]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Failed to delete book.']);
        }
    }
}
?>