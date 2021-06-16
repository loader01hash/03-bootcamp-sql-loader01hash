select books.title,publisher.name from books,publisher where books.publisher in (select id from publisher where country='UK') and books.publisher=publisher.id;
