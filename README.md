# CRUD Project | libreria-django
![](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Flh6.googleusercontent.com%2FrU8dZ0x67y63AeujFhM79UG_I3ZagEqTmDffagrUVuBI5eXPHtW2Z7zP1KU1MLKtl0wU5eNS_QHU-9v3GUJgxlKYeAR1yKADY8xCj7xMrpL8z9Rr2Zde9_OGsmXTigvBr7DEWggV&f=1&nofb=1&ipt=41d6511b408e152125a5e68a606e2dfe7392ddccfb51cfcfae620f97e4b4412f&ipo=images)

This Django application manages book data: name, cover, and description. It provides editing, deletion, and storage in a database.
Based on the YouTube tutorial: 
##### [Sitio web con python | CRUD django mysql](https://www.youtube.com/watch?v=ezIj71CX944&t=3089s "Sitio web con python | CRUD django mysql")



**(Table of Contents)**

[TOCM]

## Introduction
I developed a CRUD application based on Django by following a tutorial. This application allows users to input information about books, including their title, cover image, and description, which is then stored in an SQLite3 database to avoid conflicts. Users have the ability to edit or delete the books they've added. Finally, there is a 'Nosotros' tab that briefly explains the reason behind the creation of this project. Explore this project to learn more about our work.

## Requirements
- Python 3.10+
- Django 4.2.6
- pip 

## Installation
Install using `pip`
```
pip install -r requirements.txt
```
## Running the Application

Before running the application we need to create the needed DB tables:

    python manage.py migrate

Now you can run the development web server:

    python manage.py runserver

To access the applications go to the URL <http://localhost:8000/>


## Create user admin

Now that we have run the application, we must create an administrator user.

With the following command:

``` 
python manage.py createsuperuser 
```

To create a normal user (non super user), you must login to the admin page and
create it: <http://localhost:8000/admin/>

## Documentation

For more information, we recommend using the official Django [documentation](https://docs.djangoproject.com/en/4.2/)
