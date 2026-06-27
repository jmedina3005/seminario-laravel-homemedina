<?php
require_once 'controllers/UserController.php';

$controller = new UserController();

$action = $_GET['action'] ?? 'index';

if ($action === 'index') {
    $controller->index();
} elseif ($action === 'create') {
    $controller->create();
} elseif ($action === 'delete') {
    $controller->delete();
} elseif ($action === 'edit') {
    $controller->edit();
} else {
    echo "Página no encontrada";
}
?>
