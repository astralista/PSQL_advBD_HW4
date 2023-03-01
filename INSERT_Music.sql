insert into artists
values(1, 'Виктор Цой');

insert into artists
values(2, 'Земфира');

insert into artists
values(3, 'Ария');

insert into artists
values(4, 'Disturbed');

insert into artists
values(5, 'Metallica');

insert into artists
values(6, 'Игорь Скляр');

insert into artists
values(7, 'DVRST');

insert into artists
values(8, 'DMX');

insert into genres 
values(1, 'Rock');

insert into genres 
values(2, 'Metal');

insert into genres 
values(3, 'Hip-Hop');

insert into genres 
values(4, 'Phonk');

insert into genres 
values(5, 'Pop');

insert into albums 
values(1, 'Вендетта', 2005);

insert into albums 
values(2, 'Звезда по имени Солнце', 1989);

insert into albums 
values(3, 'Кровь за кровь', 1991);

insert into albums 
values(4, 'The Sickness', 2000);

insert into albums 
values(5, 'St. Anger', 2003);

insert into albums 
values(6, 'Комарово / Простите Меня, Волны', 1985);

insert into albums 
values(7, 'Old Library', 2022);

insert into albums 
values(8, 'The Great Depression', 2001);

insert into tracks 
values(1, 'Небомореоблака', '00:03:38', 1);

insert into tracks 
values(2, 'Повесица', '00:03:48', 1);

insert into tracks 
values(3, 'Звезда по имени Солнце', '00:03:45', 2);

insert into tracks 
values(4, 'Пачка сигарет', '00:04:26', 2);

insert into tracks 
values(5, 'Кровь за кровь', '00:07:43', 3);

insert into tracks 
values(6, 'Антихрист', '00:05:05', 3);

insert into tracks 
values(7, 'Down With the Sickness', '00:04:39', 4);

insert into tracks 
values(8, 'Shout 2000', '00:04:18', 4);

insert into tracks 
values(9, 'My World', '00:05:46', 5);

insert into tracks 
values(10, 'St. Anger', '00:07:21', 5);

insert into tracks 
values(11, 'Комарово', '00:02:09', 6);

insert into tracks 
values(12, 'Runaway', '00:02:50', 7);

insert into tracks 
values(13, 'Komarovo', '00:02:26', 7);

insert into tracks 
values(14, 'Sometimes', '00:01:06', 8);

insert into tracks 
values(15, 'We Right Here', '00:04:28', 8);

insert into songbook 
values(1, 'Русский Рок Лучшее', 2018);

insert into songbook 
values(2, 'ХИТЫ в дорогу', 2019);

insert into songbook 
values(3, 'Agressive Metal', 2006);

insert into songbook 
values(4, 'USSR&Phonk', 2023);

insert into songbook 
values(5, 'Best music for GYM', 2020);

insert into songbook 
values(6, 'Russian Rock Ballads', 2021);

insert into songbook 
values(7, 'All of 2000', 2010);

insert into songbook 
values(8, 'RIP Legends', 2023);

insert into songbook_tracks
values(1,1),(1,2),(1,3);

insert into songbook_tracks
values(2,4),(2,6),(2,5);

insert into songbook_tracks
values(3,7),(3,10);

insert into songbook_tracks
values(4,11),(4,13);

insert into songbook_tracks
values(5,8),(5,15);

insert into songbook_tracks
values(6,4),(6,5);

insert into songbook_tracks
values(7,14),(7,2),(7,9);

insert into songbook_tracks
values(8,3),(8,14);

insert into albums_artists
values(1,2),(2,1),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8);

insert into genres_artists
values(1,1),(1,2),(1,3),(2,4),(2,5),(3,8),(4,7),(5,6);