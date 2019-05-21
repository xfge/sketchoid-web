DROP TABLE IF EXISTS sketch;
DROP TABLE IF EXISTS layout;

CREATE TABLE sketch
(
    id       INTEGER PRIMARY KEY AUTOINCREMENT,
    scenario TEXT NOT NULL,
    img_src  TEXT NOT NULL
);

CREATE TABLE layout
(
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    sketch_id INTEGER NOT NULL,
    app_id    TEXT    NOT NULL,
    file_name TEXT    NOT NULL,
    img_src   TEXT    NOT NULL,
    score     DOUBLE  NOT NULL,
    FOREIGN KEY (sketch_id) REFERENCES sketch (id)
);

INSERT INTO sketch
VALUES (1, 'LOGIN', 'img/sketch/1.jpg');
INSERT INTO layout (sketch_id, app_id, file_name, img_src, score)
VALUES (1, 'test.com', 'login', 'img/sketch/1.jpg', 90.00);
INSERT INTO layout (sketch_id, app_id, file_name, img_src, score)
VALUES (1, 'test2.com', 'login', 'img/sketch/1.jpg', 90.00);
