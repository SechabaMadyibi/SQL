--exercise 1

CREATE TABLE albums (
 album_id bigserial,
 album_catalog_code varchar(100),
 album_title text ,
 album_artist text ,
 album_release_date date,
 album_genre varchar(40),
 album_description text
 CONSTRAINT album_id PRIMARY KEY (album_id)
);
CREATE TABLE songs (
 song_id bigserial,
 song_title text,
 song_artist text,
 album_id bigint REFERENCES albums (album_id) 
CONSTRAINT songs_key PRIMARY KEY (song_id, album_id)
);
'for the albums table i used the album id column as our primary key beacuse the bigserial variable will 
automatically generate values for the column giving it unique values to use as primary keys for our rows.
i did the same with the songs table.
the song album table uses the album id as the foreign key because the album id column is the primary key for 
the albums table this creates a relationship between the tables
'
--exercise 2
'
we can use the  album_catalog_code column. if the values of the column are unique then we can use the column as 
the natural key 
'

--exercise 3
'album_title, 
album_artist
album_release_date
album_description
song_title
song_artist
'