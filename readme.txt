Project Name:MyStore

Purpose:This application allows users to search for locations(from foursquare) and view pictures for that location.
In addition the application upload the returned images on(cloudinary) and saves the images to a local database as well. 

Steps to setupon local machine:

1.clone locations project from github 
2.From the DB_backup folder import locations.sql file on your local mysql database
2.using cmd on local machine go to project folder
3.run composer install
4.open .env file and change database credentials DB_DATABASE(database name you imported the file into)
and DB_USERNAME (your mysql password) and DB_PASSWORD if any
5.Run php artisan serve
7. use localhost to run the application.(The app url I set up on foursquare is www.locationsfinder.com:8080)

