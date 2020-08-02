    
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