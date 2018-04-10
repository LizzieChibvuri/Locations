<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    //
    //fillable fields
    protected $fillable=['photoid','prefix','suffix','venueid','name','city','state','country','category','location_id','coordinates'];

     public function Location()
    {
    	return $this->belongsTo('App/Location');

    }
}
