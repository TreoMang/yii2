<?php

namespace app\models;

use Yii\base\Model;

/**
 * This is the model class for table "product".
 *
 * @property int $id
 * @property string $name
 * @property int $price
 * @property string $image
 * @property int $type
 */
class ShoppingCart extends Model
{
    var $products;
    function __construct()
    {
        $this->products = array();
    }


}
