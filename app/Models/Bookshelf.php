<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\Book;

class Bookshelf extends Model
{
    use HasFactory;

    protected $fillable = ['code', 'name'];

    public function books()
    {
        return $this->hasMany(Book::class);
    }
}