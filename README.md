## 음원 사이트 (팀프로젝트)

## 담당영역 : 관리자, 게시판

> 관리자 페이지 ( 회원, 음원, 앨범, 게시판 관리 )

> 자주 묻는 질문

> 공지사항

## 기간

> 21.02.27 ~ 21.03.19

<br>

## 사용기술

> MVC2 방식 사용

> Ajax를 사용하여 화면전환 없이 상세정보 확인 가능
 
> JSTL 라이브러리 사용

> Jquery 라이브러리 사용 

<br>

### 어려웠던 점

- 문제 : Detail화면을 모달로 구성하기 위해 Ajax를 활용하여 페이지 전환없이

  데이터를 출력할 수 있게 구성을 하였으나 엔터(\n)가 있으면 json데이터가 깨지는 문제가 발생하였다.
  
  제목과 같이 짧은 글은 읽어오는데 문제가 없었지만 가사 같은 긴 문장을 읽어오는데 에러가 발생하였다.
  
- 해결 : 데이터베이스에서 읽어온 문자열 데이터를 .replaceAll("\r\n", "<br>") 메서드를 통해

  <br>태그로 변경을 줌으로써 해결할 수 있었다.
 
### 느낀 점

MVC2 방식을 사용하여 코드의 깔끔함을 몸소 느낄 수 있었고 결과론적인 이야기지만
 
Model, view, control 각자의 역할이 분명하게 나뉨으로써

유지 보수가 편해 작업 시간을 단축할 수 있었다고 생각한다. 

<br>

뷰에서 코드 블록을 사용하여 for 루프를 돌렸을 때, 코드의 복잡함을 느낄 수 있었다

하지만 JSTL 라이브러리를 활용하였을 때 가독성이 좋아짐으로써 심적인 편안함을 되찾을 수 있었던 거 같다.

 <% } %> << 이제 이거 안 해도 됨에... 감사했다,,

또, Ajax를 통한 비동기 통신을 통해 사용자에게 페이지 전환 없이 데이터의 변화를 보여줄 수 있다는

장점을 느낄 수 있었다. Json 형식의 포맷이 왜 가장 많이 사용되는지 조금은 이해할 수 있었다.

<br>

---
#### 데이터베이스 설계

> 총 16개의 테이블로 구성

![image](https://user-images.githubusercontent.com/68735491/112411133-be5b5c00-8d5f-11eb-897f-a32ef689e1e8.png)

<br>

#### 관리자 페이지 : 조회

- 회원, 아티스트, 음원, 앨범, 게시판, 자주묻는 질문 조회기능

- 페이징 기능 적용 ( 한 페이지에 10개의 목록만 나타남, 버튼은  1~5, 6~10, 11~15 형식으로 동적으로 변경 )

- 테이블의 ROW를 더블클릭하여 Detail 정보 확인( Ajax 기능 활용 )

![ezgif com-gif-maker](https://user-images.githubusercontent.com/68735491/112414265-22ccea00-8d65-11eb-8cd5-5c5d884cb1ca.gif)

![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/68735491/112414002-9cb0a380-8d64-11eb-8c3e-bd982f2c75ed.gif)

<br>

#### 관리자 페이지 : 등록, 수정

- 회원, 아티스트, 음원, 앨범, 게시판, 자주묻는 질문 등록기능

- 테이블에 참조열의 정보를 가져와 select 버튼 옵션 구성 ( Ajax 기능 활용 )

~~~HTML
// (예: FAQ 구분코드, 앨범코드, 아티스트 번호)
// 아래 option 태그 목록, DB 테이블 변경 시 동적으로 변경
<select>
  <option></option>
  <option></option>
</select>
~~~

![ezgif com-gif-maker (2)](https://user-images.githubusercontent.com/68735491/112415059-81469800-8d66-11eb-80d5-426ee317ea83.gif)

<br>

#### 공지사항, FAQ 페이지

- 등록된 공지사항, FAQ 조회

- 페이징 기능 적용 ( 한 페이지에 10개의 목록만 나타남, 버튼은  1~5, 6~10, 11~15 형식으로 동적으로 변경 )

- jquery라이브러리를 이용하여 Content영역 활성화 및 비활성화 구현

- 검색 기능 ( 검색 query와 FAQ 구분을 이용한 검색 )

~~~ sql
-- FAQ 검색, 조회
SELECT * FROM (
	SELECT ROWNUM num, faq.* FROM (
			SELECT f.*, code.fc_name
			  FROM P_FAQ f, P_FAQ_CODE code
			 WHERE f.fc_no = code.fc_no
			   AND f_title LIKE UPPER('%%')
			   AND fc_name LIKE UPPER('%%')
		  ORDER BY f_no DESC
		) faq
) WHERE num BETWEEN 1 AND 10;
~~~

![ezgif com-gif-maker (3)](https://user-images.githubusercontent.com/68735491/112415594-69bbdf00-8d67-11eb-912d-05a8a0a8a388.gif)

<br>
