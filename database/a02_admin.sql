-- 회원 수
SELECT count(*) cnt FROM P_USER;

-- 공지사항 수
SELECT count(*) cnt FROM P_NOTICE;

-- FAQ 수
SELECT count(*) cnt FROM P_FAQ;

-- 아티스트 수
SELECT count(*) cnt FROM P_ARTIST;

-- 앨범 수
SELECT count(*) cnt FROM P_ALBUM;

-- 음원 수
SELECT count(*) cnt FROM P_MUSIC;

SELECT * FROM P_PLAYLOG;

-- 페이지별 회원 리스트
SELECT * FROM (
	SELECT ROWNUM num, u.* FROM (
		SELECT * FROM P_USER ORDER BY U_NO
	) u
) WHERE num BETWEEN 1 AND 99999;

-- 회원 조회
SELECT * FROM P_USER WHERE u_no = 1;

-- 페이지별 아티스트 리스트
SELECT * FROM (
	SELECT ROWNUM num, u.* FROM (
		SELECT * FROM P_ARTIST ORDER BY ART_NO
	) u
) WHERE num BETWEEN 1 AND 10;

SELECT * FROM P_ARTIST;
SELECT * FROM P_USER;

-- 아티스트 업데이트
UPDATE P_ARTIST
   SET art_name = 'BLACKPINK',
   	   art_gender = '여성',
   	   art_group = '그룹',
   	   art_img = 'img/aasdf.png'
 WHERE art_no = 5;
 
-- 회원 업데이트
UPDATE P_USER
   SET u_pass = ?,
   	   u_name = ?,
   	   u_mail = ?,
   	   u_date = to_date(?, 'yyyy-mm-dd')
 WHERE u_no = ?;
   