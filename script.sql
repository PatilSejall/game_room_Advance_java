CREATE TABLE `chat` (
	`chatID` int(11) NOT NULL AUTO_INCREMENT,
	`SENDER` varchar(25) NOT NULL,
	`RECEIVER` varchar(25) NOT NULL,
	`CONTENT` longtext NOT NULL,
	`TIME` datetime NOT NULL,
	PRIMARY KEY (`chatID`),
	KEY `SENDER` (`SENDER`),
	KEY `RECEIVER` (`RECEIVER`)
);

CREATE TABLE `friendship` (
	`USER1` varchar(25) NOT NULL,
	`USER2` varchar(25) NOT NULL,
	PRIMARY KEY (`USER1`,`USER2`)
);

CREATE TABLE `gamemoves` (
	`fromWho` varchar(25) NOT NULL,
	`moveG` varchar(25) NOT NULL,
	PRIMARY KEY (`fromWho`,`moveG`)
);

CREATE TABLE `gamerequests` (
	`toPlayer` varchar(25) NOT NULL,
	`fromPlayer` varchar(25) NOT NULL,
	`game` varchar(25) NOT NULL,
	`accepted` int(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`toPlayer`,`fromPlayer`)
);

CREATE TABLE `games` (
	`name` varchar(25) NOT NULL,
	`avail` int(11) NOT NULL
);

CREATE TABLE `history` (
	`player1` varchar(25) NOT NULL,
	`player2` varchar(25) NOT NULL,
	`game` varchar(25) NOT NULL,
	`timePlayed` datetime NOT NULL,
	`winner` varchar(25) NOT NULL,
	PRIMARY KEY (`player1`,`player2`,`timePlayed`)
);

CREATE TABLE scores (
	`username` varchar(25) NOT NULL,
	`game` varchar(25) NOT NULL,
	`score` int(11) DEFAULT 0,
	PRIMARY KEY (`username`, `game`)
);

CREATE TABLE `users` (
	`username` varchar(25) NOT NULL,
	`fname` varchar(25) NOT NULL,
	`lname` varchar(25) NOT NULL,
	`pass` varchar(100) NOT NULL,
	`is_online` bit(1) DEFAULT NULL,
	PRIMARY KEY (`username`)
);