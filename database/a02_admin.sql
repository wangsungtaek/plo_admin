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
) WHERE num BETWEEN 1 AND 10;

-- 회원 조회
SELECT * FROM P_USER WHERE u_no = 1;