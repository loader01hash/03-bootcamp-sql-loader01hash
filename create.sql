create table publisher(
   ID INT PRIMARY KEY AUTOINCREMENT,
   NAME TEXT NOT NULL,
   COUNTRY TEXT
);

create table books(
   ID INT PRIMARY KEY AUTOINCREMENT,
   TITLE TEXT NOT NULL,
   PUBLISHER INT NOT NULL,
   FOREIGN KEY(PUBLISHER) REFERENCES publisher(ID)
   );


CREATE TABLE subjects(
    id INT PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE books_subjects(
    book INT,
    subject INT,
    FOREIGN KEY(book) REFERENCES books(id),
    FOREIGN KEY(subject) REFERENCES subjects(id)
);
