<?php

/* @var $this yii\web\View */
use yii\helpers\Html;
use yii\bootstrap\Progress;
$this->title = 'Home';
$this->params['breadcrumbs'][] = $this->title;
?>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
    .mySlides {
        display:none;
        width: 960px;
        height: 400px;
        margin-right: 10px;
    }
</style>

<div class="w3-content w3-section site-index">
    <img class="mySlides" src="..\images\21.jpg">
    <img class="mySlides" src="..\images\122.jpg">
    <img class="mySlides" src="..\images\36338121_1425182324293802_2347774658960424960_n.jpg">
    <img class="mySlides" src="..\images\36445895_1427704234041611_4878038239195168768_n.jpg">
</div>

<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) {myIndex = 1}
        x[myIndex-1].style.display = "block";
        setTimeout(carousel, 2000); // Change image every 2 seconds
    }
</script>