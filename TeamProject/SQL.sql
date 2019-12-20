drop table board;

create table board(
	boardId int AUTO_INCREMENT primary key,
	userId varchar(50),
	boardTitle varchar(100),
	boardContent varchar(2000),
	boardDate datetime default CURRENT_TIMESTAMP,
	boardViews int default 0
);

insert into board (userId, boardTitle, boardContent) values('홍길동', '안녕하세요 제목입니다', '오늘날씨가 좋다~');
insert into board (userId, boardTitle, boardContent) values('구용호', '게시물 제목입니다', '게시물 내용입니다');
insert into board (userId, boardTitle, boardContent) values('이순근', '평화로운 하루입니다', '심심해요 놀아주실분?');

