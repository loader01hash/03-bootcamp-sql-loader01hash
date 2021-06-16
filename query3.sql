select title from books where id in (select book from books_subjects where subject in (select id from subjects where name in ("Technology","Politics")));
