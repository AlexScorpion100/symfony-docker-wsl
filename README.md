#Symfony Server
>symfony server:start

#Doctrine can create the db_name database for you
>php bin/console doctrine:database:create

#Update your Database Schema
>php bin/console make:migration   
>php bin/console doctrine:migrations:diff  
>php bin/console doctrine:migrations:migrate

#Creating an Entity Class
>php bin/console make:entity

#Create your Controller
>php bin/console make:controller ExampleController

#Symfony Password Encoder Utility
>php bin/console security:encode-password