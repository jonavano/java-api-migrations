ALTER TABLE Films
ADD COLUMN writer_id INT;

ALTER TABLE Films
ADD CONSTRAINT fk_writer_id FOREIGN KEY (writer_id) REFERENCES Writers (id);