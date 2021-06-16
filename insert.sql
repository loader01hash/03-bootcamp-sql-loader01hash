INSERT INTO publisher(name , country)
VALUES
('PHI','INDIA'),
('Harper','USA'),
('GCP','USA'),
('Atomic Habits','USA'),
('Del Rey','UK'),
('Vintage','UK');

INSERT INTO subjects(name)
VALUES
('C'),
('UNIX'),
('Technology'),
('Go'),
('Science Fiction'),
('Productivity'),
('Psychology'),
('Science Fiction'),
('Politics'),
('History');

INSERT INTO books(title,publisher)
VALUES
('The C Programming Language',1),
('The Go Programming Language',1),
('The UNIX Programming Environment',1),
('Cryptonomicon',2),
('Deep Work',3),
('Atomic Habits',4),
('The City and The City',5),
('The Great War for Civilisation',6);

INSERT INTO books_subjects(book, subject)
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The C Programming Language' AND subjects.name='C'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The C Programming Language' AND subjects.name='UNIX'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The C Programming Language' AND subjects.name='Technology'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The Go Programming Language' AND subjects.name='Go'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The Go Programming Language' AND subjects.name='Technology'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The UNIX Programming Environment' AND subjects.name='UNIX'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The UNIX Programming Environment' AND subjects.name='Technology'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='Cryptonomicon' AND subjects.name='Technology'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='Cryptonomicon' AND subjects.name='Science Fiction'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='Deep Work' AND subjects.name='Productivity'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='Deep Work' AND subjects.name='Technology'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='Atomic Habits' AND subjects.name='Psychology'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='Atomic Habits' AND subjects.name='Productivity'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The City and The City' AND subjects.name='Science Fiction'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The City and The City' AND subjects.name='Politics'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The Great War for Civilisation' AND subjects.name='History'
UNION
SELECT books.id,subjects.id FROM books,subjects WHERE books.title='The Great War for Civilisation' AND subjects.name='Politics'
;
