<?php
require_once 'models/UserModel.php';

$model = new UserModel();

echo "<h2>Listado desde Modelo</h2>";
$users = $model->getAll();
foreach ($users as $u) {
    echo "{$u['nombre']} - {$u['email']}<br>";
}
?>
