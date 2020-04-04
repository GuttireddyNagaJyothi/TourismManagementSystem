# TourismManagementSystem
create database tourism_db;
use tourism_db ;
create table tourism(
`id` int not null auto_increment,
`name` varchar(45) not null,
`from_location` varchar(45) not null,
`to_location` varchar(45) not null,
`no_of_days` int not null,
`price` double(7,2) not null,
primary key (`id`)
)ENGINE = InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET= latin1;

CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

SELECT * FROM `tourism`;
SELECT * FROM `login`;
