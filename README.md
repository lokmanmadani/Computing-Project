# Computing-Project(ICALENDAR)

**REPOSITORY STRUCTURE**-------------------------------------------------------------------------------------------------------------------
1. The source code for this project is inside 'fyp6.zip' folder. You need to unzip it.
2. 'fyp6_calendar' folder and 'fyp6_calendar.sql' file are both the same database. You may use either

**WALKTHROUGH ON HOW TO GET THE WEB APP RUNNING**-------------------------------------------------------------------------------------------
1. Unzip the source code folder and place it in your laravel root directory, eg. I put it in my 'www' folder inside 'laragon'.
2. Place the database correct: There are two ways to do this.
   (i)Way 1: Go on your php.myadmin or whichever mySQL server you are using, then import the "fyp6_calendar.sql' file. The database will be 
      automatically added to your mySQL server.
   (ii)Way 2: Place the 'fyp_calendar' folder in the database directory of your mysql.eg: my database dir path is C:\laragon\data\mysql
3. Configure your database: Go on your prject/source code foler. Open .env file. 
    
    if your database username is root and has no password, you dont need to change the file.
    
    if your database username and passord is different, then you need change this part:
    
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=fyp6_calendar
DB_USERNAME=root                <-----------------CHANGE THIS
DB_PASSWORD=                    <-----------------CHANGE THIS
   
4. Now go on your command prompt/terminal and change directory to the project foler. 
5. Type 'php artisan serve'(P.S: Your laravel should be running)
6. Copy the host address eg.http://127.0.0.1:8000
7. Paste the address on your browser URL and run.

**SIMPLE WALKTHROUGH FOR ICALENDAR**--------------------------------------------------------------------------------------------------------
1. Register if you haven't already. If you have, then log in. When you do either of them, it will bring you to the calendar page
2. You can choose to use any of the functions from there. Create,edit and delete events. Upload/Download file, mark attendance.
3. You can logout from the top-right button. However due to a bug, you cannot logout from the calendar page where URL= http://127.0.0.1:8000/events
4. You need to click on Laravel on top left side and after that click on home on top right side. Then you can log out.
5. You can also log out from either of these pages: the upload/download file page, attendance marking page.
