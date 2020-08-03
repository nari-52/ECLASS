<<<<<<< HEAD
    
    show user;
-- USER이(가) "FINALORAUSER1"입니다.

    create table eclass_member
    ( idx      number(10)   not null -- 회원번호
    , name      varchar2(30)   not null -- 회원명
    , userid      varchar2(20)   not null -- 회원아이디
    , pwd      varchar2(200)   not null -- 비밀번호 (SHA-256 암호화 대상)
    , university   varchar2(200)   not null -- 대학명
    , major      varchar2(200)   not null -- 학과명
    , student_num   varchar2(200)   not null -- 학생만 not null
    , email                varchar2(200)   not null -- 이메일 (AES-256 암호화/복호화 대상)
    , hp1               varchar2(3)                     -- 연락처 (AES-256 암호화/복호화 대상) 

    , postcode           varchar2(5)                    -- 우편번호
    , address             varchar2(200)                  -- 주소
    , detailaddress      varchar2(200)                 -- 상세주소
    , extraaddress       varchar2(200)                 -- 참고항목
    
    
    , point              number default 0              -- 포인트 
    , registerday        date default sysdate         -- 가입일자
    , status             number(1) default 1           -- 회원탈퇴유무   1:사용가능(가입중) / 0:사용불능(탈퇴) 
    , lastLoginDate      date default sysdate          -- 마지막으로 로그인 한 날짜시간 기록용
    , lastPwdChangeDate  date default sysdate          -- 마지막으로 암호를 변경한 날짜시간 기록용
    , filename          varchar2(255)   -- 파일이름(WAS 저장용)
    , orgfilename       varchar2(255)   -- 파일이름 (진짜이름)
=======
show user;
-- USER이(가) "FINALPROJECT1"입니다.

--후원하기 스토리, 후원테이블 
create table donStory
(donseq         number                not null    -- 글번호(시퀀스)
,subject        Nvarchar2(200)        not null    -- 후원제목
,content        Nvarchar2(2000)       not null    -- 후원내용   -- clob (최대 4GB까지 허용) 
,listMainImg    varchar2(100)         not null    -- 리스트 메인이미지  
,storyImg       varchar2(100)         not null    -- 상세 메인이미지  
,donCnt         number default 0      not null    -- 글 조회수 
,donDate        date default sysdate  not null    -- 후원 등록일자
,donDueDate     date                  not null    -- 후원 종료일자 
,donStatus      number default 1      not null    -- 글삭제여부   1:사용가능한 글,  0:삭제된글 
,targetAmount   number -- 목표금액   
,totalPayment   number -- 후원총액
,totalSupporter number -- 후원총인원
,constraint PK_donStory_seq primary key(donseq)
,constraint CK_donSotry_status check( donStatus in(0,1) )
);


create sequence donStorySeq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


--후원하기 상세이미지 테이블 (donImg table)
create table donImg
(donImgseq  number                not null    -- 후원이미지 번호
,fk_donSeq  number                not null    -- 후원 글번호 
,donImg     varchar2(200)         not null    -- 후원 이미지
,constraint PK_donImg_seq primary key(donImgseq)
,constraint FK_donImg_fk_donSeq foreign key(fk_donSeq) references donStory(donseq)
);


create sequence donImgSeq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


--후원결제 테이블 
create table donPayment
(fk_donSeq      number               not null  -- 글번호(FK_시퀀스)
,fk_userid      number                         -- 회원번호(FK_시퀀스)
,fk_name        varchar2(20)                   -- 회원명(FK)
,noName         number(1) default 0            -- 이름 비공개(Flag)
,noDonpmt       number(1) default 0            -- 금액 비공개(Flag)
,paymentDate    date default sysdate not null  -- 결제날짜 
,payment        number               not null  -- 결제금액 
,constraint FK_donPayment_fk_donSeq foreign key(fk_donSeq) references donStory(donseq)
,constraint FK_donPayment_fk_member_num foreign key(fk_userid) references eclass_member(name)
,constraint FK_donPayment_fk_name foreign key(fk_name) references eclass_member(name)
,constraint CK_donPayment_status check( noName in(0,1) )
,constraint CK_noDonpmt_status check( noDonpmt in(0,1) )
);

drop table donStory purge;
drop sequence donStorySeq;

drop table donImg purge;
drop sequence donImgSeq;

drop table donPayment purge;

commit;

select *
from donStory;

desc donStory;
>>>>>>> branch 'developer' of https://github.com/nari-52/ECLASS.git
