CREATE TABLE Users (
    user_id varchar(255) PRIMARY KEY,
    Password varchar(255),
    Name varchar(255),
    Email varchar(255),
    Phone varchar(255),
    emergency_contact_number varchar(255),
    Address varchar(255)
);
INSERT INTO Users (user_id, Password, Name, Email, Phone, emergency_contact_number, Address)  
   VALUES ('ram123', 'dummyP', 'Ram Charan', 'ram.cherry@relevel.com', '7777000055', '9965414783','Plot No 5/A, Pedemma Temple Lane, Madhapur, Hyderabad');
   
INSERT INTO Users (user_id, Password, Name, Email, Phone, Address)  
   VALUES ('harry', 'HarrpPws', 'Harry Stain', 'harry@relevel.com', '8454123697', 'Plot No 47/A, Main Road, Madhuranagar, Hyderabad');
   
INSERT INTO Users (user_id, Password, Name, Email, Phone, Address)  
   VALUES ('sukesh', 'SukeshPwd', 'Sukesh Kumar', 'sukesh@relevel.com', '8897456217', 'House No 85-24-5/5/A, Main Road, Sanath Nagar, Hyderabad');
   
INSERT INTO Users (user_id, Password, Name, Email, Phone, Address)  
   VALUES ('saleem', 'SaleemShk', 'Saleem Shaik', 'saleem@relevel.com', '9965471237', 'House No 74/A, Main Road, Bharatnagar, Hyderabad');
   
INSERT INTO Users (user_id, Password, Name, Email, Phone, emergency_contact_number, Address)  
   VALUES ('ramesh', 'Rameshpwd', 'Ramesh Kumar', 'ramesh@relevel.com', '9987415874','8895310173', 'Flat No: 204, 2 nd Floor, MyHome Bhuja, Gachibowli, Hyderabad');

INSERT INTO Users (user_id, Password, Name, Email, Phone, emergency_contact_number, Address)  
   VALUES ('rakesh', 'rakeshP', 'Rakesh', 'rakesh@relevel.com', '9966332745', '9944556741','House No 77/Q-A, Main Road, Sanath Nagar, Hyderabad');
   
CREATE TABLE Hosts (
    host_id varchar(255) PRIMARY KEY,
    password varchar(255),
    host_name varchar(255),
    email varchar(255),
    phone varchar(255)
);

INSERT INTO Hosts (host_id, password, host_name, email, phone)  
   VALUES ('daleep', 'mud@rml', 'Daleep', 'info.daleep@relevel.com', '8457459857');
INSERT INTO Hosts (host_id, password, host_name, email, phone)  
	VALUES ('rudi', 'home&twn', 'Rudi', 'info.rudi@relevel.com', '8454758740');
INSERT INTO Hosts (host_id, password, host_name, email, phone)  
	VALUES ('aj', 'mintWUD', 'Aj', 'info.aj@relevel.com', '9954715695');
INSERT INTO Hosts (host_id, password, host_name, email, phone)  
	VALUES ('rahul', 'casa$crft', 'Rahul', 'info.rahul@relevel.com', '8845769312');
INSERT INTO Hosts (host_id, password, host_name, email, phone)  
	VALUES ('prathiba', 'dreamzzfurnityre$$$', 'Prathiba', 'info.prathiba@relevel.com', '8842632117');
INSERT INTO Hosts (host_id, password, host_name, email, phone)  
	VALUES ('rashi', 'arra@1234', 'Rashi', 'info.rashi@relevel.com', '7845987849');
	
CREATE TABLE Operator (
    operator_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255)
);

INSERT INTO Operator (operator_id, password, name, email)  
   VALUES ('anshuB', 'PwdDtdc', 'Anshul Bist', 'anshul.bist@relevel.com');

 
CREATE TABLE Listings (
	listing_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    host_id varchar(255) references Hosts(host_id),
    experience_name varchar(255),
    listing_name varchar(255),
    location varchar(255),
    extra_features varchar(1000),
    detailed_description varchar(1000),
    amenities varchar(1000),
    message_from_host varchar(1000),
    cost_per_night decimal,
    status varchar(255)
);

INSERT INTO Listings (host_id, experience_name,listing_name, location, extra_features, detailed_description, amenities, message_from_host, cost_per_night, status)  
	VALUES ('daleep', 'Tiny homes', 'Whispering Pines Cottages', 'Jibhi, Himachal Pradesh, India', 'Entire home, Enhanced Clean, Great Location',
	'A stay straight out of the pages of a Ruskin Bond novel.One of the most successful Airbnbs in India
In Tandi, a village above Jibhi', 'Hair dryer, Arata shampoo, Arata conditioner,Hot water, Washing machine, Dryer, Iron, Portable Fans, Heating, 
Fire extinguisher, pocket wifi', 'I am a farmer who lives in Tandi, a village above Jibhi. I am the Numbardaar in this village. I run the most successful Airbnbs in the town, though I built my mudhouse two years ago, and my treehouse less than a year ago. Virtually all my guests have written a review, and virtually all of them have written me five star reviews. 
Im a very involved host who attends to every need of my guests, from the time they book my cottages to the time they check out. I, along with my wife, offer the best service in the town.', 6846,'active');
	
INSERT INTO Listings (host_id, experience_name,listing_name, location, extra_features, detailed_description, amenities, message_from_host, cost_per_night, status) 
	VALUES ('rudi', 'Tiny homes', 'Unique Tree House', 'Blahbatuh, Bali, Indonesia', 'Entire home, Enhanced Clean, Rudi is a Superhost, Pool',
	'A unique opportunity to have an unforgettable experience will give you a stay in an amazing tree house. You live in direct contact with nature, inhale it`s aromats, fill it with sounds around and admire it`s views. The house is built from eco materials, 
overlooking the pool and surrounding area and beautiful garden from a tree height. We are located in about 20 minutes from Ubud.
Our concept is return to nature! Our space is ALCOHOL FREE! Our kitchen is vegetarian/vegan! (no meat)', 'Shampoo, Essentials, Wifi, Private entrance, Pool', 'We are happy to provide you with all useful information you may need. 
We are living next door, so you will always have somebody nearby if you have any questions or need some help.', 3078,'active');

INSERT INTO Listings (host_id, experience_name, listing_name, location, extra_features, detailed_description, amenities, message_from_host, cost_per_night, status) 
	VALUES ('aj', 'Tiny homes', 'Explore, Experience, Enjoy T-HOUSE Lakestaycation!', 'Cavinti, Calabaarzon, Philippines', 'Wifi, Free cancellation for 48 hours',
	'CAMP-T-HOUSE is located within the BLOC Camp Site. It is situated on top of the Sierra Madre mountains surrounded by a fresh-water lake.
The crime-free neighborhood is away from the busy-noisy cities and is generally peaceful and calm conducive for productivity and creativity.
Welcome to our humble slice of paradise!', 'Lake view, Bay view, Beach access - Beachfront, Kitchen, Wifi, Shared backyard-Not fully fenced', 'Each Guest basically enjoy the immediate premises of their booked T-HOUSE plus some
shared amenities(lake/shore/grounds) and facilities(cooking/dining/toilet&bath).', 3432,'active');

INSERT INTO Listings (host_id, experience_name, listing_name, location, extra_features, detailed_description, amenities, message_from_host, cost_per_night, status) 
	VALUES ('rahul', 'Private room in rental unit', 'Green Paradise Koramangala-5', 'Bengaluru, Karnataka, India', 'Self check-in, Enhanced Clean, Pets allowed',
	'A Fantastically affordable,spacious warm & classy accomodation in the very heart of BLRs own Silicon Valley- Koramangala! 
True to its name,listing has TREES galore all around the listing and all you can see from the balcony/terrace are trees. 
Single large room within a 2 bhk with a large attached loo too All essentials available & also 7 day a week customer support + 24 hr security.
 All at a rock bottom price thats hard to find!', 'Courtyard view, Garden view, Kitchen, Wifi, Pets allowed, Washing machine', 'Well read, well travelled, & generally peace loving
type of guy. Like positive vibes, enjoyes a good laugh & the daily workout/martial arts too. Pet lover.', 540,'active');

INSERT INTO Listings (host_id, experience_name, listing_name, location, extra_features, detailed_description, amenities, message_from_host, cost_per_night, status) 
	VALUES ('prathiba', 'Entire retal unit', 'Entire flat, couples friendly, BTM, Workstation', 'Bengaluru, Karnataka, India', 'Self check-in, Entire home, Wifi, Experienced host',
	'This is a rare find', 'Kitchen, Wifi, Free on-street parking, Lift', 'Languages known English, Hindi, Responses in an hour', 999,'active');

INSERT INTO Listings (host_id, experience_name, listing_name, location, extra_features, detailed_description, amenities, message_from_host, cost_per_night, status) 
	VALUES ('rashi', 'Entire retal unit', 'Entire flat, couples friendly, central mall, Bellandur', 'Bengaluru, Karnataka, India', 'Entire home, Self check-in, Enhanced Clean, Pets allowed',
	'Our Home Located in Bellandur area very close to the software Hub eco-space, eco words! 
its private entire 1 BHK apartment with fully equipped kitchen. 
Its ideal for families and working professionals its close to everything.', 'Kitchen, Wifi, Pets allowed, Washing machine', 'Hello All and welcome, I love meeting people from different part of world.
 I am excited to be a part of this community .I look forward to connecting with you as host or traveller.', 999,'active');
 

CREATE TABLE Wishlist (
    wishlist_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    listing_id varchar(255) references Listings(listing_id)
);

INSERT INTO Wishlist (user_id, listing_id)  
   VALUES ('ram123', 1);
INSERT INTO Wishlist (user_id, listing_id)
   VALUES ('ram123', 2);



CREATE TABLE Bookings (
   booking_id INTEGER AUTO_INCREMENT PRIMARY KEY,
   user_id varchar(255) references Users(user_id),
   listing_id INTEGER references Listings(listing_id),
   checkin_date DATE,
   checkout_date DATE,
   booking_date DATE,
   number_of_adults INTEGER,
   total_cost_of_booking DECIMAL,
   order_status varchar(255)
);
     

INSERT INTO Bookings (user_id, listing_id, checkin_date, checkout_date, booking_date, number_of_adults, total_cost_of_booking, order_status)  
   VALUES ('ram123', 1, '2022-02-13', '2022-02-18', '2022-02-06', 2, 54500, 'upcoming');

INSERT INTO Bookings (user_id, listing_id, checkin_date, checkout_date, booking_date, number_of_adults, total_cost_of_booking, order_status)  
   VALUES ('harry', 1, '2022-02-20', '2022-02-25', '2022-02-08', 2, 54500, 'upcoming');

INSERT INTO Bookings (user_id, listing_id, checkin_date, checkout_date, booking_date, number_of_adults, total_cost_of_booking, order_status)  
   VALUES ('sukesh', 4, '2022-02-16', '2022-02-18', '2022-02-07', 2, 1080, 'upcoming');

INSERT INTO Bookings (user_id, listing_id, checkin_date, checkout_date, booking_date, number_of_adults, total_cost_of_booking, order_status)  
   VALUES ('saleem', 4, '2022-02-13', '2022-02-15', '2022-02-06', 2, 1080, 'upcoming');

INSERT INTO Bookings (user_id, listing_id, checkin_date, checkout_date, booking_date, number_of_adults, total_cost_of_booking, order_status)  
   VALUES ('rakesh', 6, '2022-02-13', '2022-02-18', '2022-02-06', 1, 2100, 'canceled');

 

 
CREATE TABLE Queries (
    query_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    booking_id varchar(255) references Bookings(booking_id),
    operator_id varchar(255) references Operator(operator_id),
    query varchar(255),
    status varchar(255),
    operator_comment varchar(255)
);


INSERT INTO Queries (user_id, booking_id, query, status)  
   VALUES ('rakesh', 5, 'The refund for my booking is still pending', 'pending');
