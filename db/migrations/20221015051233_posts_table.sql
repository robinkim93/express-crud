-- migrate:up
CREATE TABLE posts (
    id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    content VARCHAR(1000) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT ports_users_id_fkey FOREIGN KEY (user_id) REFERENCES users(id) 
)
-- migrate:down

