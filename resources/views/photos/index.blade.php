@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-12">
        @if(Session::has('success_msg'))
        <div class="alert alert-success">{{ Session::get('success_msg') }}</div>
        @endif
    <!-- datas list -->
    
    @if(!empty($data))
        <div class="row">
            <div class="col-lg-12 margin-tb">
                <div class="pull-left">
                    <h2>Photo List  </h2>
                </div>
                
            </div>
        </div>
        <div class="row">
           @foreach($data as $photo)
            <div class="col-xs-12 col-sm-12 col-md-12">
             

                     <div class="col-md-8  col-sm-8">
                     <img src="{{$photo->prefix}}width350{{$photo->suffix}}">
                     <h3> <div><a href="{{ route('locations.getphotodetails', $photo->id) }}">Details</a></div></h3>
                    </div>     
                    
            </div>
            <br/><br/>
             @endforeach
        </div>
    @endif
    </div>
</div>
@endsection

