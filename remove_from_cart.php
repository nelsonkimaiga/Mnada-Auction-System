<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

session_start();

// get the product id
$id = isset($_GET['id']) ? $_GET['id'] : "";
$name = isset($_GET['name']) ? $_GET['name'] : "";

// remove the item from the array
unset($_SESSION['cart_items'][$id]);

// redirect to product list and tell the user it was added to cart
header('Location: cart.php?action=removed&id=' . $id . '&name=' . $name);
?>