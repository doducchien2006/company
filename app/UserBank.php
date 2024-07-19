<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserBank extends Model
{
    protected $table = 'user_bank';
    protected $fillable= [
        'acc_num', 'acc_name', 'acc_bank', 'user_id', 'sort', 'status',
    ];

}
