select title from books where publisher in (select id from publisher where name='PHI');
