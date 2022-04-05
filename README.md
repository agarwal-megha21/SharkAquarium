# SharkAquarium

## Getting Started

### Dependencies and installation instructions for Linux<br>
* Java : Follow the instructions [here](https://docs.oracle.com/javase/8/docs/technotes/guides/install/install_overview.html#A1097144) to install Java
* Maven : Download [Maven](https://maven.apache.org/download.cgi) and follow the installation instructions [here](https://maven.apache.org/install.html)
* MySQL : [Download MySQL](https://dev.mysql.com/downloads/mysql/) (generix-linux) from here and install using these [instructions](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/binary-installation.html) 
   
### Installation
     git clone https://github.com/agarwal-megha21/SharkAquarium.git

### Setup the database<br>

      mysql -u root -p
      create database db_sharkAquarium;
      create user '<USER>'@'localhost' identified by '<PASS>';
      grant usage on *.* to '<USER>'@'localhost';
      grant all privileges on db_sharkAquarium.* to '<USER>'@'localhost';
      
      NOTE : Here USER = sharkAquarium and PASS = sharkAquarium;
      
      Once the database is setup, We need to create tables in them which can be
      done using the file tables.sql from the repository.

### Run the code

```
mvn compile
mvn spring-boot:run
```

## About Project
     A crowdfunded business support platform, wherein, the entrepreneur can submit 
     their business ideas on the platform. The investor can review the pitches,
     invest in them, and can get a return as a percentage of the venture’s equity. 
     At a later point, the investor can sell the stocks owned, on the platform itself;
     as well as invest in equity of other ventures too. 
     This contributes to the functioning of a stock exchange platform. 

     * Entrepreneurs:
         When the entrepreneurs log in to their account, they will be able to add 
         their pitches for the investors to view. They can also keep track of the 
         number of pitches already invested. 

      * Investors:
         When the investors log in to their account, they will be able to review the
         pitches posted by the entrepreneurs on the pitch-seabed/ aquascape page.
         If they are willing to fund any, they can contribute the required amount to the 
         entrepreneurs. In a case where they accept the pitch, the investor will benefit 
         from the entitlement of equity. They can fund multiple pitches. Also, they are 
         free to trade their stocks on the stock exchange platform at a later point in time.

