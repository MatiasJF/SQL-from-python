#drop database steam;
create database steam;
use steam;
#drop table games;
create table games(
	app_id int not null,
    title varchar(500),
    date_release date,
    win	char(5),
    mac	char(5),
    linux char(5),
    rating char(30),
    positive_ratio int,
    user_reviews int,
    price_final decimal(5,2),
    price_original decimal(5,2),
    discount decimal (4,1),
    steam_deck boolean,
    primary key(app_id)
);
#describe table games;
#drop table users;
create table users(
	user_id int not null,
    products int,
    reviews int,
    primary key (user_id)
);
#describe table users;
#drop table recom;
create table recom(
	app_id int not null,
    helpful int not null,
    funny int not null,
    date_ date,
    is_recommended boolean,
    hours decimal(8,1),
    user_id int not null,
    review_id int not null,
    primary key (review_id),
    foreign key (app_id) references games(app_id),
    foreign key (user_id) references users(user_id)
);
#describe table recom;