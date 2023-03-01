--1.Количество исполнителей в каждом жанре.
select "name", count(artist_id) artist_q from genres g
join genres_artists ga on g.genre_id = ga.genre_id
group by g."name" 
order by artist_q desc;

--2.Количество треков, вошедших в альбомы 2019–2020 годов.
select count(track_id) from tracks t
join albums a on t.album_id = a.album_id 
where release_year >= 2019 and release_year <= 2020;

--3.Средняя продолжительность треков по каждому альбому.
select a."name" album, avg(t.duration) av_dur from albums a 
join tracks t ON a.album_id = t.album_id
group by album
order by av_dur desc;

--4.Все исполнители, которые не выпустили альбомы в 2020 году.
select a."name" n from artists a
join albums_artists alb on a.artist_id = alb.artist_id
join albums a2 on a2.album_id = alb.album_id 
where a2.release_year != 2020;

--5.Названия сборников, в которых присутствует конкретный исполнитель(Виктор Цой)
select s."name" n from songbook s 
join songbook_tracks st on s.songbook_id = st.songbook_id 
join tracks t on st.track_id = t.track_id 
join albums a on t.album_id = a.album_id
join albums_artists aa on a.album_id = aa.album_id
join artists art on aa.artist_id = art.artist_id
where art."name" = 'Виктор Цой'
order by n;

--6.Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
--у меня все альбомы для одного исполнителя, поэтому пустой результат. Сделал тубличку ниже по сборникам
select a."name" n from albums a 
join albums_artists aa on a.album_id = aa.album_id 
join artists art on aa.artist_id = art.artist_id
join genres_artists ga on art.artist_id  = ga.artist_id
join genres g on ga.genre_id = g.genre_id
group by n
having count(distinct g."name") > 1
order by n;

--6a.Названия СБОРНИКОВ, в которых присутствуют исполнители более чем одного жанра.
select s."name" n from songbook s
join songbook_tracks st on s.songbook_id = st.songbook_id 
join tracks t on st.track_id = t.track_id
join albums a on t.album_id = a.album_id
join albums_artists aa on a.album_id = aa.album_id 
join artists art on aa.artist_id = art.artist_id
join genres_artists ga on art.artist_id  = ga.artist_id
join genres g on ga.genre_id = g.genre_id
group by n
having count(distinct g."name") > 1
order by n;

--7.Наименования треков, которые не входят в сборники.
select "name" n from tracks t 
join songbook_tracks st on t.track_id = st.track_id 
where st.track_id is null;

--8.Исполнитель или исполнители, написавшие самый короткий по продолжительности трек
select a."name" n from artists a 
join albums_artists aa on a.artist_id = aa.artist_id 
join albums a2 on aa.album_id = a2.album_id 
join tracks t on a2.album_id = t.album_id
group by n, t.duration
having t.duration = (select min(duration) from tracks)
order by n; 

--9.Названия альбомов, содержащих наименьшее количество треков.
select distinct a.name from albums as a
left join tracks as t on t.album_id = a.album_id 
where t.album_id in (
    select album_id
    from tracks
    group by album_id
    having count(album_id) = (
        select count(album_id)
        from tracks
        group by album_id
        order by count
        limit 1
    )
)
order by a.name