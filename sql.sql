CREATE TABLE items(
    id SERIAL PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    details JSONB
);

INSERT INTO items(category, details)
VALUES('pizzas', '{
            "type": "margherita",
            "cost": 6.00,
            "description": "A classic - tomato, mozzarella & basil"
        }'),
		('pizzas', '{
            "type": "napoletana",
            "cost": 7.00,
            "description": "Gourmet pizza - San Marzano tomatoes, buffalo mozzarella, basil & oregano"
        }'),


		('pizzas', '{
            "type": "marinara",
            "cost": 7.50,
            "description": "Gourmet classic - tomatoes, mozzarella, anchovies, olive oil & garlic"
        }'),

		('pizzas', '{
            "type": "calzone",
            "cost": 8.50,
            "description": "A year-round favourite - oven-baked, folded pizza, stuffed with ham, mozzarella and an egg"
        }'),
		('pizzas',


		' {
            "type": "veg supreme",
            "cost": 10,
            "description": "vegetarian food"
        }')
		

-- check if cost is greater than

select details->>'type' name,  (details->'cost')::float  price
from items 
WHERE 
 category = 'pizzas' 

 AND

 details @? '$.cost ? (@ > 7)';
		
		
		
      
RETURNING *;