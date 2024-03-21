<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Link extends Model
{
    use HasFactory;

    protected $table = 'links';

    protected $fillable = ['tab_id', 'long_url'];

     // Method to count the number of clicks for each link

    
}


