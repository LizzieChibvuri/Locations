@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-12">
        @if($errors->any())
            <div class="alert alert-danger">
            @foreach($errors->all() as $error)
                <p>{{ $error }}</p>
            @endforeach()
            </div>
        @endif

         @if(Session::has('msg'))
        <div class="alert alert-success">{{ Session::get('msg') }}</div>
        @endif

        <form  method="POST"  action="{{route('locations.search')}}" class="form-horizontal">
           {{ csrf_field() }}
            <div class="form-group">
                 <h1>Enter Location:</h1>
                <div class="col-sm-8">
                    <input type="text" name="location" id="location" class="form-control" required>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2">
                    <input type="submit" class="btn btn-default" value="search"/>

                </div>
            </div>

        </form>
        @if(isset($data))
        @if(!empty($data))
       
           <!--<p>
           <pre/> 
           {{print_r($data)}} 
           </p>-->
            <table class="table">
                @foreach($data['response']['groups'][0]['items'] as  $venuedata)
                 
                    @if(!empty($venuedata['venue']['photos']['groups']))
                    <tr> 
                        <td >
                            <img src="{{$venuedata['venue']['photos']['groups'][0]['items'][0]['prefix']}}width350{{$venuedata['venue']['photos']['groups'][0]['items'][0]['suffix']}}">
                        </td>
                        <td>
                            <ul>
                            <li>{{$venuedata['venue']['name']}}</li>
                            <li>{{$venuedata['venue']['categories'][0]['name']}}</li>
                            <li>{{$venuedata['venue']['location']['country']}}</li>
                            </ul>
                        </td>
                    </tr>
                    @endif
                 </tr>   
                @endforeach
            </table>

            @else

            <h1>Sorry no pictures found for requested location</h1>
           
        @endif
        @endif
      
    </div>
</div>

@endsection


