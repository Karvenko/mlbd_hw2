drop table if exists artists;

create external table artists (
    mbid string,
    artist_mb string,
    artist_lastfm string,
    country_mb string,
    country_lastfm string,
    tags_mb array <string>,
    tags_lastfm array <string>,
    listeners_lastfm bigint,
    scrobbles_lastfm bigint,
    ambiguous_artist boolean)
row format delimited 
    fields terminated by ','  
    COLLECTION ITEMS TERMINATED BY ';'
    LINES TERMINATED BY '\n'
stored as textfile
location '/ar'
TBLPROPERTIES ('skip.header.line.count'='1');
