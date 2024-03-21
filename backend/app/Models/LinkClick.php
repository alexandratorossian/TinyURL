<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LinkClick extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'link_id',
        'clicked_at',
    ];

    /**
     * Get the link associated with the click.
     */
    public function link()
    {
        return $this->belongsTo(Link::class);
    }
}
