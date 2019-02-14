#学子新闻列表
#xz_news[id/title/ctime/img_url/point/content]
USE xz;
CREATE TABLE xz_news(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   title  VARCHAR(255),
   ctime  DATETIME,
   img_url VARCHAR(255),
   point   INT,
   content VARCHAR(2000)
);
INSERT INTO xz_news VALUES(null,'1231',now(),
'http://127.0.0.1:3000/1.png',0,'123');
INSERT INTO xz_news VALUES(null,'1232',now(),
'http://127.0.0.1:3000/1.png',0,'123');
INSERT INTO xz_news VALUES(null,'1233',now(),
'http://127.0.0.1:3000/1.png',0,'123');
INSERT INTO xz_news VALUES(null,'1234',now(),
'http://127.0.0.1:3000/1.png',0,'123');
INSERT INTO xz_news VALUES(null,'1235',now(),
'http://127.0.0.1:3000/1.png',0,'123');
INSERT INTO xz_news VALUES(null,'1236',now(),
'http://127.0.0.1:3000/1.png',0,'123');
INSERT INTO xz_news VALUES(null,'1237',now(),
'http://127.0.0.1:3000/1.png',0,'123');
INSERT INTO xz_news VALUES(null,'1238',now(),
'http://127.0.0.1:3000/1.png',0,'1239');
INSERT INTO xz_news VALUES(null,'123',now(),
'http://127.0.0.1:3000/1.png',0,'12310');
INSERT INTO xz_news VALUES(null,'123',now(),
'http://127.0.0.1:3000/1.png',0,'12311');
INSERT INTO xz_news VALUES(null,'123',now(),
'http://127.0.0.1:3000/1.png',0,'12312');
INSERT INTO xz_news VALUES(null,'123',now(),
'http://127.0.0.1:3000/1.png',0,'12313');
INSERT INTO xz_news VALUES(null,'12314',now(),
'http://127.0.0.1:3000/1.png',0,'12314');
INSERT INTO xz_news VALUES(null,'12315',now(),
'http://127.0.0.1:3000/1.png',0,'123');
INSERT INTO xz_news VALUES(null,'12316',now(),
'http://127.0.0.1:3000/1.png',0,'123');
INSERT INTO xz_news VALUES(null,'12317',now(),
'http://127.0.0.1:3000/1.png',0,'123');
INSERT INTO xz_news VALUES(null,'123',now(),
'http://127.0.0.1:3000/1.png',0,'12318');
INSERT INTO xz_news VALUES(null,'123',now(),
'http://127.0.0.1:3000/1.png',0,'12319');
INSERT INTO xz_news VALUES(null,'123',now(),
'http://127.0.0.1:3000/1.png',0,'12320');
INSERT INTO xz_news VALUES(null,'123',now(),
'http://127.0.0.1:3000/1.png',0,'12321');
INSERT INTO xz_news VALUES(null,'12322',now(),
'http://127.0.0.1:3000/1.png',0,'123');

USE xz;
CREATE TABLE xz_news(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   title  VARCHAR(255),
   ctime  DATETIME,
   img_url VARCHAR(255),
   point   INT,
   content VARCHAR(2000)
);


USE xz;
CREATE TABLE xz_comment(
    id INT PRIMARY KEY AUTO_INCREMENT,
    content VARCHAR(2000),
    ctime DATETIME,
    nid INT
);
INSERT INTO xz_comment VALUES(null,"akd",now(),1);
INSERT INTO xz_comment VALUES(null,"ass",now(),1);
INSERT INTO xz_comment VALUES(null,"wqs",now(),1);
INSERT INTO xz_comment VALUES(null,"rew",now(),1);
INSERT INTO xz_comment VALUES(null,"dgs",now(),1);
INSERT INTO xz_comment VALUES(null,"wer",now(),1);
INSERT INTO xz_comment VALUES(null,"dsf",now(),1);
INSERT INTO xz_comment VALUES(null,"cvz",now(),1);
INSERT INTO xz_comment VALUES(null,"gfd",now(),1);
INSERT INTO xz_comment VALUES(null,"fge",now(),1);
INSERT INTO xz_comment VALUES(null,"qww",now(),1);
INSERT INTO xz_comment VALUES(null,"vcsd",now(),1);
INSERT INTO xz_comment VALUES(null,"ated",now(),1);
INSERT INTO xz_comment VALUES(null,"asgh",now(),1);
INSERT INTO xz_comment VALUES(null,"abgg",now(),1);
INSERT INTO xz_comment VALUES(null,"ads",now(),1);
INSERT INTO xz_comment VALUES(null,"cvd",now(),1);
INSERT INTO xz_comment VALUES(null,"avdf",now(),1);
INSERT INTO xz_comment VALUES(null,"fgjn",now(),1);
INSERT INTO xz_comment VALUES(null,"dfgh",now(),1);
INSERT INTO xz_comment VALUES(null,"asdf",now(),1);
INSERT INTO xz_comment VALUES(null,"qwe",now(),1);
INSERT INTO xz_comment VALUES(null,"adfj",now(),1);
INSERT INTO xz_comment VALUES(null,"ghjd",now(),1);
INSERT INTO xz_comment VALUES(null,"ufgt",now(),1);
INSERT INTO xz_comment VALUES(null,"lkui",now(),1);
INSERT INTO xz_comment VALUES(null,"ghf",now(),1);

#创建商品表
#xz_product
#id       INT
#name     VARCHAR(255)
#img_url  VARCHAR(255)
#price    DECIMAL(10,2) 
#bank     INT

USE xz;
CREATE TABLE xz_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  img_url VARCHAR(255),
  price DECIMAL(10,2),
  bank  INT
);
INSERT INTO xz_product VALUES(null,'辣椒1','http://127.0.0.1:3000/img/banner1.png',10.50,1);
INSERT INTO xz_product VALUES(null,'辣椒2','http://127.0.0.1:3000/img/banner2.png',13.50,1);
INSERT INTO xz_product VALUES(null,'辣椒3','http://127.0.0.1:3000/img/banner3.png',12.50,1);
INSERT INTO xz_product VALUES(null,'辣椒4','http://127.0.0.1:3000/img/banner4.png',11.50,1);
INSERT INTO xz_product VALUES(null,'辣椒1','http://127.0.0.1:3000/img/banner1.png',10.50,1);
INSERT INTO xz_product VALUES(null,'辣椒2','http://127.0.0.1:3000/img/banner2.png',13.50,1);
INSERT INTO xz_product VALUES(null,'辣椒3','http://127.0.0.1:3000/img/banner3.png',12.50,1);
INSERT INTO xz_product VALUES(null,'辣椒4','http://127.0.0.1:3000/img/banner4.png',11.50,1);
INSERT INTO xz_product VALUES(null,'辣椒3','http://127.0.0.1:3000/img/banner3.png',12.50,1);
INSERT INTO xz_product VALUES(null,'辣椒4','http://127.0.0.1:3000/img/banner4.png',11.50,1);

#购物车:
#xz_cart
#id     编号
#count  数量
#price  价格
#name   商品名称
#pid    商品编号
#uid    用户编号

#SELECT id,count,price,name,pid,uid
#FROM  xz_cart
#WHERE  uid = ?
# pno2-029282823-
CREATE TABLE xz_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  pid INT,
  price DECIMAL(10,2),
  count INT
);
INSERT INTO xz_cart VALUES(null,1,1,10,1);
INSERT INTO xz_cart VALUES(null,1,2,12,2);

#分析:查询购物信息
#[id,uid,price,count],[name]
#xz_cart              xz_product
#多表查询套路
#-将所有表名保存FROM 后
#FROM xz_cart,xz_product
#-为每一张表起一个别名
#FROM xz_cart c,xz_product p
#-查找两张表1个列有关系(= != <= >= )
#WHERE  c.pid = p.id 

SELECT c.uid,c.id,c.count,c.price,p.name
FROM xz_cart c,xz_product p
WHERE  c.pid = p.id 

#用户注册
# 用户登录:id name pwd 
# 用户信息:avatar phone addr ..
CREATE TABLE xz_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(25),
  pwd  VARCHAR(32)
);
INSERT INTO xz_login VALUES(null,'tom',md5('123'));
INSERT INTO xz_login VALUES(null,'jerry',md5('123'));