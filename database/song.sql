DROP DATABASE IF EXISTS songdb;

CREATE DATABASE IF NOT EXISTS songdb
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

USE songdb;

CREATE TABLE song(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    singer VARCHAR(100) NOT NULL,
    youtube VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
)ENGINE = INNODB
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
    
insert song values (null, "그냥 안아달란 말야", "다비치", 'https://www.youtube.com/watch?v=davichi')
insert song values (null, "라일락", "아이유", 'https://www.youtube.com/watch?v=iu')
insert song values (null, "Timeless", "SG 워너비", 'https://www.youtube.com/watch?v=sg')
insert song values (null, "On The Ground", "로제", 'https://www.youtube.com/watch?v=loge')
insert song values (null, "Dynamite", "방탄소년단", 'https://www.youtube.com/watch?v=BTS')
insert song values (null, "밝게 빛나는 별이 되어 비춰줄게", "송이한", 'https://www.youtube.com/watch?v=LeeHanSong')
insert song values (null, "LOVE DAY", "양요섭, 정은지", 'https://www.youtube.com/watch?v=EunJiJung')
#insert song values (null, "롤린", "브레이브걸스", 'https://www.youtube.com/watch?v=bravegirls')