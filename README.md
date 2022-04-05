# SharkAquarium


## About Project
A crowdfunded business support platform, wherein, the entrepreneur can submit their business ideas on the platform. The investor can review the pitches, invest in them, and can get a return as a percentage of the venture’s equity. At a later point, the investor can sell the stocks owned on the platform itself as well as invest in equity of other ventures too. This contributes to the functioning of a stock exchange platform. 

* Entrepreneurs: When the entrepreneurs log in to their account, they will be able to add their pitches for the investors to view and invest. They can also keep track of the amount already invested in their pitch. 

* Investors: When the investors log in to their account, they will be able to review the pitches posted by the entrepreneurs on the pitch aquascape page. If they are willing to fund any, they can contribute the required amount to the entrepreneurs in return for a certain portion of the equity. They can fund multiple pitches. They can also trade their share of equity or buy more on the plaform's stock exchange.

## Getting Started

### Dependencies and installation instructions for Linux<br>
* Java : Follow the instructions [here](https://docs.oracle.com/javase/8/docs/technotes/guides/install/install_overview.html#A1097144) to install Java
* Maven : Download [Maven](https://maven.apache.org/download.cgi) and follow the installation instructions [here](https://maven.apache.org/install.html)
* MySQL : [Download MySQL](https://dev.mysql.com/downloads/mysql/) (Source Code -> `All Operating Systems (Generic) (Architecture Independent)`) and install using these [instructions](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/binary-installation.html).
   
### Installation
  * Install the above dependencies.
  * Clone the repository.
  * Setup the database.
    ```
    mysql -u root -p
    create database db_sharkAquarium;
    create user '<USER>'@'localhost' identified by '<PASS>';
    grant usage on *.* to '<USER>'@'localhost';
    grant all privileges on db_sharkAquarium.* to '<USER>'@'localhost';
      
    NOTE : Here USER = sharkAquarium and PASS = sharkAquarium;
      
    Once the database is setup, We need to create tables in them which can be
    done using the file tables.sql from the repository.
    ```
   * Execute the app using Maven.
     ```
     mvn compile
     mvn spring-boot:run
     ```
