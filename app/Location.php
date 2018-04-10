<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
   
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name', 'locationid'];


    public function Photos()
    {
    	return $this->hasMany('App/Photo');

    }

    public function UserLocations()
    {
    	return $this->hasMany('App/UserLocation');
    }

}
