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
class Product extends Model
{

    public $id;
    public $name;
    public $price;
    public $image;
    public $type;
    public $quantity;

    public function __construct($data)
    {
        $this->id = $data['id'];
        $this->name = $data['name'];
        $this->price = $data['price'];
        $this->image = $data['image'];
        $this->type = $data['type'];
        $this->quantity = 1;
    }

    function total(){
        return $this->price*$this->quantity;
    }
}
