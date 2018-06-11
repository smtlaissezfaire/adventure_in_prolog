
customer('customer 1', 'small town', aaa).
customer('customer 2', 'small town', bbb).
customer('customer 3', 'small town', ccc).
customer('customer 4', 'large town', aa).

items_for_sale(abc0001, 'widget 1', 100).
items_for_sale(abc0002, 'widget 2', 200).
items_for_sale(abc0003, 'widget 3', 50).
items_for_sale(abc0004, 'widget 4', 10).

inventory(abc0001, 99).
inventory(abc0002, 250).
inventory(abc0003, 90).
inventory(abc0004, 10).

items_for_sale(X, 'widget 3', Y), inventory(X, Z)
