create table member (
    userid varchar2(50) primary key,    -- 유저 아이디. 이메일 형식
    password varchar2(20) not null,     -- 비밀번호
    nickname varchar2(30) not null,     -- 닉네임
    iconno number not null,             -- 프로필 아이콘 번호 default 값 1
    age number not null,                -- 연령대
    gender varchar2(10) not null,       -- 성별 (남성,여성)
    teamname varchar2(30) not null,     -- 좋아하는 팀 default 값 None(없음)
    introduce varchar2(300),            -- 자기소개 입력. 
    joindate date not null,             -- 가입날짜
    grade number not null               -- 등급. 1 : 일반회원, 2 : 관리자. default 값 1
);

create sequence member_seq;

select * from member;                   -- member 생성 확인

create table icon (
    iconno number primary key,          -- 아이콘 식별 번호. 자동생성
    iconname varchar2(30) not null,     -- 아이콘 이름
    filename varchar2(30) not null,     -- 아이콘 이미지 파일 명
    storename varchar2(40) not null     -- 아이콘 이미지 저장 시 변형 이름
);

create sequence icon_seq;
select * from icon;                     -- icon 생성 확인

create table team (
    teamname varchar2(30) primary key,  -- 팀 이름
    iconno number not null,             -- 팀 아이콘 번호
    region varchar2(15) not null,       -- 팀 연고지
    stadium varchar2(30) not null,      -- 홈 경기장
    event number not null               -- 경기 종목 1: 야구, 2: 축구
);

create sequence team_seq;
select * from team;

create table board (
    boardno number primary key,         -- 게시판 번호 (자동생성)
    userid varchar2(50) not null,       -- 작성자 아이디
    title varchar2 (150) not null,      -- 게시판 제목
    content varchar2 (3000),            -- 게시판 본문
    scheduleno number not null,         -- 선택한 직관 스케줄 번호
    insertdate date not null,           -- 게시판 작성일
    hit number not null                 -- 게시판 조회수
);

create sequence board_seq;
select * from board;

create table report (
    reportno number primary key,        -- 신고글 번호 (자동생성)
    userid varchar2 (50) not null,      -- 신고당한 유저 아이디
    reason varchar2 (150) not null,     -- 신고 사유
    explain varchar2 (1500),            -- 신고 사유 설명
    reportdate date not null            -- 신고글 작성 날짜
);

create sequence report_seq;
select * from report;

create table getout (
    getoutid varchar2 (50) primary key, -- 제재회원 아이디. 재가입 불가
    reason varchar2 (150) not null,     -- 제재 사유 선택
    explain varchar2 (1500)             -- 제재 사유 설명
);

create sequence getout_seq;
select * from getout;

create table reply (
    replyno number primary key,         -- 댓글 번호
    userid varchar2 (50) not null,      -- 댓글 작성자 아이디
    boardno number not null,            -- 댓글 작성한 게시글 번호
    recontent varchar2 (900) not null,  -- 댓글 내용
    insertdate date not null            -- 댓글 작성일
);

create sequence reply_seq;
select * from reply;

create table schedule (
    scheduleno number primary key,      -- 스케줄 번호
    hometeam varchar2 (30) not null,    -- 홈팀 이름
    awayteam varchar2 (30) not null,    -- 원정팀 이름
    gamedate date not null              -- 경기 날짜
);

create sequence schedule_seq;
select * from schedule;

create table exit (
    exitid varchar2 (50) primary key,   -- 탈퇴 회원 아이디
    exitreason varchar2 (1500)          -- 탈퇴 사유
);

create sequence exit_seq;
select * from exit;

alter table member                      -- member table iconno 외래키 지정
add constraint iconno_fk
    foreign key(iconno)
    references icon(iconno);

alter table member                      -- member table iconno 외래키 지정
add constraint teamname_fk
    foreign key(teamname)
    references team(teamname);

alter table team
add constraint teamicon_fk
    foreign key (iconno)
    references icon(iconno);

alter table board
add constraint boardid_fk
    foreign key (userid)
    references member (userid);
    
alter table board
add constraint scheduleno_fk
    foreign key (scheduleno)
    references schedule (scheduleno);

alter table report
add constraint reportid_fk
    foreign key (userid)
    references member (userid);

alter table reply
add constraint replyid_fk
    foreign key (userid)
    references member (userid);

alter table reply
add constraint boardno_fk
    foreign key (boardno)
    references board (boardno);

alter table schedule
add constraint hometeam_fk
    foreign key (hometeam)
    references team(teamname);

alter table schedule
add constraint awayteam_fk
    foreign key (awayteam)
    references team(teamname);
commit;