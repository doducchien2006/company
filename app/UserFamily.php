<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserFamily extends Model
{
 protected $table = 'user_family';
 protected $fillable = ['name', 'level', 'description', 'balance', 'status'];

}
?>
