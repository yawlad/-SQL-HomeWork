
CREATE USER 'shop_read'@'localhost' IDENTIFIED WITH sha256_password BY '1111';
GRANT SELECT ON shop.* to 'shop_read'@'localhost';

CREATE USER 'shop'@'localhost' IDENTIFIED WITH sha256_password BY '1111';
GRANT ALL ON shop.* to 'shop'@'localhost';