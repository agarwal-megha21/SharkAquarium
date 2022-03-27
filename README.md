# SharkAquarium

## Getting Started
   
### Installation
    git clone https://github.com/agarwal-megha21/SharkAquarium.git

### Setup the database<br>

      mysql -u root -p
      create database db_sharkAquarium;
      create user '<USER>'@'localhost' identified by '<PASS>';
      grant usage on *.* to '<USER>'@'localhost';
      grant all priveleges on db_sharkAquarium.* to '<USER>'@'localhost';
      
      NOTE : Here USER = sharkAquarium and PASS = sharkAquarium;
      

Once the database is setup, We need to create tables in them which can be done using the file tables.sql from the repository.
