<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserLang extends Model
{
    protected $table ='user_lang';
    protected $fillable =[ 'tên', 'trình độ', 'description', 'balance', 'trạng thái'];

}
