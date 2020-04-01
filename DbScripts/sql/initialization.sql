CREATE TABLE GENRES
(
Genre_ID NUMBER(10) NOT NULL,
Title VARCHAR(50) NOT NULL,
CONSTRAINT GENRES_PK PRIMARY KEY (GENRE_ID)
);
CREATE TABLE ARTISTS
(
ARTIST_ID NUMBER(10) NOT NULL,
NAME VARCHAR2(255) NOT NULL,
COUNTRY VARCHAR2(255),
CONSTRAINT ARTISTS_PK PRIMARY KEY(ARTIST_ID)
);
CREATE TABLE TRACKS
(
TRACK_ID NUMBER(10) NOT NULL,
TITLE VARCHAR2(255) NOT NULL,
ALBUM VARCHAR2(255),
DATE_RELEASE DATE NOT NULL,
ARTIST_ID NUMBER(10) NOT NULL,
CONSTRAINT TRACKS_PK PRIMARY KEY(TRACK_ID),
CONSTRAINT TRACKS_FK FOREIGN KEY(ARTIST_ID) REFERENCES ARTISTS(ARTIST_ID) ON DELETE CASCADE
);
CREATE TABLE ARTISTS_GENRES
(
ID NUMBER(10) NOT NULL,
ARTIST_ID NUMBER(10) NOT NULL,
GENRE_ID NUMBER(10) NOT NULL,
CONSTRAINT ARTISTS_GENRES_PK PRIMARY KEY(ID),
CONSTRAINT GENRES_ARTISTS_FK FOREIGN KEY(GENRE_ID) REFERENCES GENRES(GENRE_ID) ON DELETE CASCADE,
CONSTRAINT ARTISTS_GENRES_FK FOREIGN KEY(ARTIST_ID) REFERENCES ARTISTS(ARTIST_ID) ON DELETE CASCADE
);
CREATE SEQUENCE  "C##SA"."ARTIST_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE  "C##SA"."GENRE_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE  "C##SA"."NUMBER_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE  "C##SA"."TRACK_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1;