drop database IF EXISTS music;
CREATE DATABASE music charset=utf8;
use music;
CREATE TABLE m_user (
    u_id INT PRIMARY KEY auto_increment,
    u_name VARCHAR(20),
    u_avatar VARCHAR(500),
    u_fans int
);
INSERT INTO m_user VALUES(null,'ZR子绕','https://al-qn-echo-image-cdn.app-echo.com/bee7817645711afdc8aef1ab231201ee14e36b7d?imageMogr2/auto-orient/quality/100%7CimageMogr2/thumbnail/!250x250r/gravity/Center/crop/250x250/dx/0/dy/0&imageMogr2/auto-orient/quality/100%7CimageMogr2/thumbnail/!50x50r/gravity/Center/crop/50x50/dx/0/dy/0',2000);
INSERT INTO m_user VALUES(null,'Meandi鸦缺','https://al-qn-echo-image-cdn.app-echo.com/a2859d2bf08634f365c38c30d1492550.png?imageMogr2/auto-orient/quality/100%7CimageMogr2/thumbnail/!250x250r/gravity/Center/crop/250x250/dx/0/dy/0&imageMogr2/auto-orient/quality/100%7CimageMogr2/thumbnail/!50x50r/gravity/Center/crop/50x50/dx/0/dy/0',3000);


CREATE TABLE m_list (
    m_id INT PRIMARY KEY auto_increment,
    m_time DATETIME,
    uid INT,
    m_image VARCHAR(500),
    m_url VARCHAR(500),
    m_play INT,
    m_like INT,
    m_name VARCHAR(30),
    m_channel VARCHAR(20)
    
);

INSERT INTO m_list VALUES(null,now(),1,'https://ws-qn-echo-image-cdn.app-echo.com/FjNgvG13erXdFUU3uwExY9UbzSyo?imageMogr2/auto-orient/quality/100%7CimageMogr2/thumbnail/!500x500r/gravity/Center/crop/500x500/dx/0/dy/0','https://ws-qn-echo-cp-cdn.app-echo.com/c2/62591f38a39c1e7e37d7f40155fa1ad83ff84ca89f05cde1b0665ae49504f1fa5ea8828a.mp3?1471880612',12000,300,'「3D」活力的电气蹲妹 Super Natural','雅马哈|3D音乐奇幻旋律馆');
INSERT INTO m_list VALUES(null,now(),2,'https://al-qn-echo-image-cdn.app-echo.com/FqIDCbduJIvD-hmVi_UyqrulzPQ5?imageMogr2/auto-orient/quality/100%7CimageView2/0/w/500/q/100','https://al-qn-echo-cp-cdn.app-echo.com/c2/b79d1eb3e06b99773121f4dd86418a3973af3276c11075c4cc7786f1cef318f39e9543d4.mp3?1476420256',210000,200,'懒汉之歌 The lazy song 女声翻唱','高手在民间');

-- 统计 热门 从上一次中统计出前 5 名 显示在 banner 上


-- 统计 上一次的所有 
create table m_statistics(m_id int UNIQUE,m_stat_count int);
INSERT INTO m_statistics VALUES(1,3000);



INSERT INTO m_statistics (m_id,m_stat_count) VALUES (1,1) ON DUPLICATE KEY UPDATE m_stat_count=m_stat_count+1;
