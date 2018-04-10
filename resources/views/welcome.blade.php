@extends('layouts.app')

@section('content')
<div class="row">
   <h1>Welcome to the Places Photo Gallery,start searching</h1>
   <a href="{{ route('locations.getsearch') }}" class="label label-warning">Start Searching </a>
</div>

@endsection


