@extends('layouts.app')


@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Photo Details</h2>
        </div>
        <div class="pull-right">
           
        </div>
    </div>
</div>

 <img src="{{$data->prefix}}width350{{$data->suffix}}">
 <br/><br/>

<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Name:</strong>
            {{ $data->name }}
        </div>
    </div>

     <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Category:</strong>
            {{ $data->category}}
        </div>
    </div>

    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>Available Stock:</strong>
            {{ $data->country}}
        </div>
    </div>
   
</div>
@endsection


