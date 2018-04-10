<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Location;
use App\Photo;
use JD\Cloudder\Facades\Cloudder;


class LocationsController extends Controller
{
    //


    /**
     * Create a new controller instance.
       except is to specify routes that are not authenticated
     *
     * @return void
     */
    public function __construct()
    {
       // $this->middleware('auth',['except'=>['index','show']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$data=Location::orderby('name','asc')->get();
       
        //pass locations data to view
        return view('locations.index',['data'=>$data]);
    }

    public function getlocationphotos($id)
    {
    	$data=Photo::where('location_id',$id)->get();
       
        //pass locations data to view
        return view('photos.index',['data'=>$data]);
    }

       public function getlocationphotodetails($id)
    {
    	$data=Photo::find($id);
       
        //pass locations data to view
        return view('photos.details',['data'=>$data]);
    }


     public function getsearch()
    {
  
        //pass locations data to view
        return view('locations.search');
    }


    //search for specific location using cordinates of place name
     public function search(Request $request)
    {
       $this->validate($request,[
       	'location'=>'required'
       	]);

//constructing foursquare url
       $url="https://api.foursquare.com/v2/venues/explore?";
       $url.="client_id=".config('apis.fsclientid','');
       $url.="&client_secret=".config('apis.fsclientsecret','');
       $url.="&v=".date("Ymd");
       $url.="&near=".$request->input('location');
       $url.="&venuePhotos=1";
      
                                                                   
       try
       {
	       $response=file_get_contents($url);
	       $data = json_decode($response, TRUE);

	       if(!empty($data))
	       {

		       $locationid=$data['response']['geocode']['longId'];

		       //check if location is in DB if not ,save location
		       if(!empty($locationid))
		       {
			       	$location=Location::where('locationid',$locationid)->get()->first();

			       	if(empty($location))
			       	{
			       		$locationData=new Location;
			       		$photoData=new Photo;

			       		$name=$data['response']['geocode']['displayString'];
			       		$locationData->locationid=$locationid;
			       		$locationData->name=$name;

                        

			       		//save  to Db
			       		try
			       		{
			       			DB::beginTransaction();
			       			//query 1
			       			$locationData->save();


	                        //query 2
	                        $photoData->location_id=$locationData->id;
	                        $photos_array=[];


		                    foreach($data['response']['groups'][0]['items'] as  $venuedata)
	                        {

	                        	if(!empty($venuedata['venue']['photos']['groups']))
	                        	{
						       		//photofields
						       		$photoid=$venuedata['venue']['photos']['groups'][0]['items'][0]['id'];
						       		$prefix=$venuedata['venue']['photos']['groups'][0]['items'][0]['prefix'];
						       		$suffix=$venuedata['venue']['photos']['groups'][0]['items'][0]['suffix'];
						       		$venueid=$venuedata['venue']['id'];
						       		$name=$venuedata['venue']['name'];
						       		//$state=$venuedata['venue']['location']['state'];
						       		$country=$venuedata['venue']['location']['country'];
						       		$category=$venuedata['venue']['categories'][0]['name'];
						       		$coordinates=$venuedata['venue']['location']['lat'].','.$venuedata['venue']['location']['lng'];


						       		$photoData->photoid=$photoid;
						       		$photoData->prefix=$prefix;
						       		$photoData->suffix=$suffix;
						       		$photoData->venueid=$venueid;
						       		$photoData->name=$name;
						       		//$photoData->state=$state;
						       		$photoData->country=$country;
						       		$photoData->category=$category;
						       		$photoData->coordinates=$coordinates;

						       		//add to array
						       		$photos_array[]=$photoData->attributesToArray();

						       		$dbdata=Photo::where('photoid',$photoid)->get();
						       		//upload image to cloudinary if photo not in DB already
						       		if(empty($dbdata))
						       		{
						       			try
							       		{
								       		$imagename=$prefix.'width250'.$suffix;
								       		Cloudder::upload($imagename, null);
								       		Session::flash('msg','Photo Uploaded successfully!');
								       	}
								       	catch(Exception $e)
								       	{
								       		Session::flash('msg','photo not uploaded!');
								       	}

						       		}

						       		
						       	}

	                        }


				       		Photo::insert($photos_array);
				       		DB::commit();

	                        Session::flash('msg','Location saved to database!');
			       		}
			       		catch(\Exception $e)
			       		{
			       			Session::flash('msg',$e->getMessage());
			       			DB::rollback();

			       		}
			       	} 
			       	 	
		       }
		       else
		       {
		       	Session::flash('msg','location field empty!');
		       }
	       }


	       //save photos

	       //upload photos to flickr
       }
      
       catch(Exception $ex)
       {
	       	 //store status message
	        Session::flash('msg','Sorry location information could not be retrieve,try a different location!');
	       	return view('locations.index');
       }

       return view('locations.search',['data'=>$data]);  
    }



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //load create form
        return view('locations.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */


    public function store(Request $request)
    {
        //validate location data
        $this->validate($request,[ 
            
            ]);
        //get location data
        $locationData= new location;
        //$locationData=$request->all();
    

        //insert location dta
       //location::create($locationData);
        $locationData->save();

        //store status message
        Session::flash('success_msg','location added successfully');

        return redirect()->route('locations.index');

       
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //fetch location data
        $location=location::find($id);

        //pass data to details view
        return view('locations.details',['location'=>$location]);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //get location data
        $location=location::find($id);

        //load data in view
        return view('locations.edit',['location'=>$location]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
          
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
     
        //delete location dta
       $locationData=location::find($id);

      
       $locationData->delete();

        //store status message
        Session::flash('success_msg','location deleted successfully');

        return redirect()->route('locations.index');
    }
}
