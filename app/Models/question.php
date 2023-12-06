<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class question extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'created_at',
        'updated_at',
        'level',
        'question',
        'option_one',
        'option_two',
        'option_three',
        'option_four',
        'correct_ans',
        'correct_ans_str',
        'status',
        'fifty_fifty'
    ];

}
