<?php
/**
 * Created by PhpStorm.
 * User: DELL
 * Date: 11/19/2018
 * Time: 9:42 AM
 */
use yii\widgets\ActiveForm;
use yii\helpers\Html;
$this->title = 'Len sợi nhập khẩu';
use yii\
?>

<div class="container">
    <div class="col-lg-3 col-md-4 col-sm-6">
        <h1>Danh mục sản phẩm</h1>
        <div class="list-group">
            <?php
                $categories = $cat->getAll()->data;
            ?>
            ?>
        </div>
    </div>

</div>