CREATE TABLE IF NOT EXISTS user
(
  username VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  role VARCHAR(255) NOT NULL,
  PRIMARY KEY (username)
);

CREATE TABLE IF NOT EXISTS userDetails
(
    id INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(255) NOT NULL,
    middleName VARCHAR(255),    
    lastName VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    houseNo VARCHAR(255) NOT NULL,
    pincode VARCHAR(255) NOT NULL,
    streetName VARCHAR(255) NOT NULL,
    phoneNo VARCHAR(255) NOT NULL,
    gender VARCHAR(255),
    username VARCHAR(255) UNIQUE NOT NULL,
    emailID VARCHAR(255) NOT NULL,
    FOREIGN KEY (username) REFERENCES user(username) ON DELETE CASCADE,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS pitch
(
    id INT NOT NULL AUTO_INCREMENT,
    company VARCHAR(255) NOT NULL,
    description VARCHAR(1024) NOT NULL,
    amountPerStock DOUBLE NOT NULL,
    numberOfStocks INT NOT NULL,
    availableStocks INT NOT NULL,
    username VARCHAR(255) NOT NULL,
    FOREIGN KEY(username) REFERENCES user(username) ON DELETE CASCADE,
    PRIMARY KEY (id)
);
 
CREATE TABLE IF NOT EXISTS transaction
(
    id INT NOT NULL AUTO_INCREMENT,
    pitchId INT NOT NULL,
    username VARCHAR(255) NOT NULL,
    amount DOUBLE NOT NULL,
    FOREIGN KEY(username) REFERENCES user(username) ON DELETE CASCADE,
    FOREIGN KEY(pitchId) REFERENCES pitch(id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);

