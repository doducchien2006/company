<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserMin extends Model{
    protected $table = 'user_min';
    protected $fillable = ['name', 'age', 'level', 'balance', 'status'];
}
?>
