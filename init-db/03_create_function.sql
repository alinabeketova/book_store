create or replace function get_book(
	p_order_number varchar DEFAULT null
	,genre_name varchar DEFAULT null
)
returns table (
	id int
	,title varchar
	,description text
	,unit_price decimal(10,2)
	,total_price decimal(10,2)
	,full_name varchar
)
as $$
begin
	return QUERY
	select DISTINCT
		b.id,
        b.title,
        b.description,
        oi.unit_price,
        oi.total_price,
        a.full_name
	from "order" o
	join order_item oi on o.id = oi.order_id
	join book b on b.id = oi.book_id
    join book_author ba on ba.book_id = b.id
    join author a on a.id = ba.author_id
    join book_genre bg on b.id = bg.book_id
    join genre g on bg.genre_id = g.id
    where (o.order_number = p_order_number OR p_order_number IS NULL)
      and (g."name" = genre_name OR genre_name IS NULL);
end;
$$ language plpgsql;