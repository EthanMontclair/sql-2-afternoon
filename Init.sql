-- SELECT invoice_line_id FROM invoice_line WHERE unit_price > 0.99; wrong
-- 1.
SELECT * FROM invoice
JOIN invoice_line ON invoice_line.invoice_id = invoice.invoice_id
WHERE invoice_line.unit_price > 0.99;

-- 2.
SELECT invoice.invoice_date, customer.first_name, customer.last_name, total FROM invoice
JOIN customer ON invoice.customer_id = customer.customer_id;

-- 3.
SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name 
FROM employee
JOIN customer ON customer.support_rep_id = employee.employee_id;

-- 4.
SELECT album.title, artist.name 
FROM album
JOIN artist ON album.artist_id = artist.artist_id;

-- 5.
SELECT playlist_track.track_id 
FROM playlist
JOIN playlist_track ON playlist.playlist_id = playlist_track.playlist_id
WHERE playlist.name = 'Music';

-- 6.
SELECT track.name FROM track
JOIN playlist_track ON playlist_track.track_id = track.track_id
WHERE playlist_id = 5;

-- 7.
SELECT t.name, p.name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

-- 8.
SELECT track.name, album.title
FROM track
JOIN album ON track.album_id = album.album_id
JOIN genre ON genre.genre_id = track.album_id
WHERE genre.name = 'Alternative & Punk';