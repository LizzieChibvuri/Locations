<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserLocation extends Model
{
    //
    //fillable fields
    protected $fillable=['location_id','user_id'];

    public function Location()
    {
    	return $this->belongsTo('App/Location')

    }

    public function User()
    {
    	return $this->belongsTo('App/User');

    }
}
