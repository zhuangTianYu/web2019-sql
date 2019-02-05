CREATE TABLE IF NOT EXISTS `article` (
   `id` INT UNSIGNED AUTO_INCREMENT COMMENT '主键',
   `title` VARCHAR(50) NOT NULL COMMENT '标题',
   `author` VARCHAR(30) NOT NULL COMMENT '作者',
   `authorID` INT COMMENT '作者id',
   `type` INT NOT NULL COMMENT '文章类型',
   `comment` INT NOT NULL COMMENT '评论数量',
   `createTime` DATE NOT NULL COMMENT '创建时间',
   `updateTime` DATE COMMENT '更新时间',
   PRIMARY KEY ( `id` )
) COMMENT = '文章表' ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `comment` (
   `id` INT UNSIGNED AUTO_INCREMENT COMMENT '主键',
   `articleID` INT NOT NULL COMMENT '文章id',
   `userName` VARCHAR(30) NOT NULL COMMENT '用户名',
   `userID` INT COMMENT '用户id',
   `content` TEXT NOT NULL COMMENT '内容',
   `createTime` DATE NOT NULL COMMENT '创建时间',
   `updateTime` DATE COMMENT '更新时间',
   PRIMARY KEY ( `id` )
) COMMENT = '评论表' ENGINE = InnoDB DEFAULT CHARSET = utf8;
