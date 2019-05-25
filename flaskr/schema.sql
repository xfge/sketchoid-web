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
    rank      INTEGER NOT NULL,
    app_id    TEXT    NOT NULL,
    file_name TEXT    NOT NULL,
    img_src   TEXT    NOT NULL,
    score     DOUBLE  NOT NULL,
    FOREIGN KEY (sketch_id) REFERENCES sketch (id)
);

INSERT INTO sketch
VALUES (1, 'Options', 'img/sketch/1.jpg');
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (1, 1, 'com.choiceoflove.dating', 'activity_register_step1',
        'img/screenshot/1/com.choiceoflove.dating-activity_register_step1.png', 88.28);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (1, 2, 'de.appfiction.yocutiegoogle', 'fragment_looking_gander_input',
        'img/screenshot/1/de.appfiction.yocutiegoogle-fragment_looking_gander_input.png', 88.28);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (1, 3, 'go.dev.matchandtalk', 'activity_nselection_interest',
        'img/screenshot/1/go.dev.matchandtalk-activity_nselection_interest.png', 76.05);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (1, 4, 'com.zing.zalo', 'usernearby_settings_activity',
        'img/screenshot/1/com.zing.zalo-usernearby_settings_activity.png', 73.92);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (1, 5, 'com.faithcomesbyhearing.android.bibleis', 'font_fragment',
        'img/screenshot/1/com.faithcomesbyhearing.android.bibleis-font_fragment.png', 70.55);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (1, 6, 'com.yk.grid', 'activity_insta', 'img/screenshot/1/com.yk.grid-activity_insta.png', 67.57);

INSERT INTO sketch
VALUES (2, 'Text Input', 'img/sketch/2.jpg');
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (2, 1, 'org.wordpress.android', 'new_account_user_fragment_screen',
        'img/screenshot/2/org.wordpress.android-new_account_user_fragment_screen.png', 86.44);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (2, 2, 'com.trandrapp.trandr', 'fragment_register_about_more',
        'img/screenshot/2/com.trandrapp.trandr-fragment_register_about_more.png', 77.30);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (2, 3, 'com.app.androidpersianlivetv', 'activity_sign_up',
        'img/screenshot/2/com.app.androidpersianlivetv-activity_sign_up.png', 74.25);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (2, 4, 'com.popboxapp.newmovieboxapp', 'activity_sign_up',
        'img/screenshot/2/com.popboxapp.newmovieboxapp-activity_sign_up.png', 74.25);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (2, 5, 'com.mischiefmaker', 'fragment_edit_profile',
        'img/screenshot/2/com.mischiefmaker-fragment_edit_profile.png', 72.03);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (2, 6, 'com.newchic.client', 'fragment_sign_up', 'img/screenshot/2/com.newchic.client-fragment_sign_up.png',
        70.57);

INSERT INTO sketch
VALUES (3, 'Fixed-item List', 'img/sketch/3.jpg');
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (3, 1, 'com.aranoah.healthkart.plus', 'activity_about_us',
        'img/screenshot/3/com.aranoah.healthkart.plus-activity_about_us.png', 100.00);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (3, 2, 'ru.yandex.weatherplugin', 'fragment_about_r',
        'img/screenshot/3/ru.yandex.weatherplugin-fragment_about_r.png', 87.25);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (3, 3, 'com.ehi.national.mobile', 'activity_about_this_app',
        'img/screenshot/3/com.ehi.national.mobile-activity_about_this_app.png', 87.25);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (3, 4, 'all.in.one.calculator', 'fragment_screen_converters_ring_size',
        'img/screenshot/3/all.in.one.calculator-fragment_screen_converters_ring_size.png', 74.67);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (3, 5, 'all.in.one.calculator', 'nfragment_screen_converters_shoe_size_children',
        'img/screenshot/3/all.in.one.calculator-fragment_screen_converters_shoe_size_children.png', 74.67);
INSERT INTO layout (sketch_id, rank, app_id, file_name, img_src, score)
VALUES (3, 6, 'com.deals.deal', 'activity_about.png', 'img/screenshot/3/com.deals.deal-activity_about.png', 72.28);