<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PLO-관리자페이지</title>

<!-- Custom fonts for this template-->
<link href="${path}/a00_admin/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${path}/z01_css/admin/sb-admin-2.min.css" rel="stylesheet">

<!-- jquery -->
<script src="${path}/z02_js/jquery-3.5.1.js"></script>

<!-- Boot Strab -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

<style>
#top-nav { height: 100px; }
.container-fluid { padding: 50px; }
.pageBtn, .delBtn { overflow-x: scroll; white-space: nowrap; }


</style>
</head>
<body>

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="${path}/admin">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">PLO ADMIN</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="${path}/admin"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>관리자</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Member Managerment</div>

			<!-- Nav Item - 회원관리 -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapse_user"
				aria-expanded="true" aria-controls="collapse_user"> <i
					class="fas fa-fw fa-cog"></i> <span>회원관리</span>
			</a>
				<div id="collapse_user" class="collapse">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">회원관리:</h6>
						<a class="collapse-item" href="${path}/userManager">회원 조회</a> <a
							class="collapse-item" href="${path}/userReg">회원 등록</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Music Managerment</div>

			<!-- Nav Item - 아티스트 관리 -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapse_artist"
				aria-expanded="true" aria-controls="collapse_artist"> <i
					class="fas fa-fw fa-cog"></i> <span>아티스트 관리</span>
			</a>
				<div id="collapse_artist" class="collapse">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">아티스트 관리:</h6>
						<a class="collapse-item" href="${path}/artistManager">아티스트 조회</a>
						<a class="collapse-item" href="${path}/artistReg">아티스트 등록</a>
					</div>
				</div></li>

			<!-- Nav Item - 음원 관리 -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapse_music"
				aria-expanded="true" aria-controls="collapse_music"> <i
					class="fas fa-fw fa-cog"></i> <span>음원 관리</span>
			</a>
				<div id="collapse_music" class="collapse">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">음원 관리:</h6>
						<a class="collapse-item" href="${path}/musicManager">음원 조회</a> <a
							class="collapse-item" href="${path}/musicReg">음원 등록</a>
					</div>
				</div></li>

			<!-- Nav Item - 앨범 관리 -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapse_album"
				aria-expanded="true" aria-controls="collapse_album"> <i
					class="fas fa-fw fa-cog"></i> <span>앨범 관리</span>
			</a>
				<div id="collapse_album" class="collapse">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">앨범 관리:</h6>
						<a class="collapse-item" href="${path}/albumManager">앨범 조회</a> <a
							class="collapse-item" href="${path}/albumReg">앨범 등록</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Service Center</div>

			<!-- Nav Item - 공지사항 관리 -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapse_notice"
				aria-expanded="true" aria-controls="collapse_notice"> <i
					class="fas fa-fw fa-cog"></i> <span>공지사항 관리</span>
			</a>
				<div id="collapse_notice" class="collapse">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">공지사항 관리:</h6>
						<a class="collapse-item" href="${path}/noticeManager">공지사항 조회</a>
						<a class="collapse-item" href="${path}/noticeReg">공지사항 등록</a>
					</div>
				</div></li>

			<!-- Nav Item - FAQ 관리 -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapse_faq"
				aria-expanded="true" aria-controls="collapse_faq"> <i
					class="fas fa-fw fa-cog"></i> <span>FAQ 관리</span>
			</a>
				<div id="collapse_faq" class="collapse">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">FAQ 관리:</h6>
						<a class="collapse-item" href="${path}/faqManager">FAQ 조회</a> <a
							class="collapse-item" href="${path}/faqReg">FAQ 등록</a>
					</div>
				</div></li>
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-3 text-gray-800">회원 등록</h1>
					</div>

					<!-- card -->
					<div class="card shadow mb-4 w-25">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">회원 등록</h6>
						</div>

						<!-- card-item -->
						<div class="card-body pb-0">
							<form method="get">
							<div class="idCheck text-right"></div>
							<div class="input-group mb-3">
								<span class="input-group-text w-25 text-center d-block" id="inputGroup-sizing-default">아이디</span>
								<input type="text" class="inId form-control" aria-label="Sizing example input" 
								aria-describedby="inputGroup-sizing-default" placeholder="아이디를 입력하세요." name="id">
							</div>
							
							<div class="passCheck text-right"></div>
							<div class="input-group mb-3">
								<span class="input-group-text w-25 text-center d-block" id="inputGroup-sizing-default">비밀번호</span>
								<input type="text" class="inPass form-control" aria-label="Sizing example input" 
								aria-describedby="inputGroup-sizing-default" placeholder="비밀번호를 입력하세요." name="pass">
							</div>
							
							<div class="input-group mb-3">
								<span class="input-group-text w-25 text-center d-block" id="inputGroup-sizing-default">이름</span>
								<input type="text" class="inName form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" placeholder="이름을 입력하세요." name="name">
							</div>
							
							<div class="input-group mb-3">
								<span class="input-group-text w-25 text-center d-block" id="inputGroup-sizing-default">이메일</span>
								<input type="email" class="inMail form-control" aria-label="Sizing example input"
							  	aria-describedby="inputGroup-sizing-default" placeholder="exam@mail.com" name="mail">
							</div>
							
							<div class="input-group">
								<span class="input-group-text w-25 text-center d-block" id="inputGroup-sizing-default">생년월일</span>
								<input type="date" class="inDate form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" name="date">
							</div>
							</form>
							
						</div>
						<!-- End of card-item -->
												
						<button type="button" class="regBtn btn btn-primary m-3">등 록</button>
						
					</div>
					<!-- End of card -->
					
				</div>	
				<!-- End of Begin Page Content -->

			</div>
			<!-- End of Main Content -->

		</div>
		<!-- End of Content Wrapper -->
		

	</div>
	<!-- End of Wrapper -->
	
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#top-nav"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Bootstrap core JavaScript-->
	<script src="${path}/a00_admin/vendor/jquery/jquery.min.js"></script>
	<script
		src="${path}/a00_admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${path}/a00_admin/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="${path}/z02_js/admin/sb-admin-2.min.js"></script>

	<script>
		var xhr = new XMLHttpRequest();
		var userList;
		var regCheck = "${result}";
		
		if(regCheck == 'true'){
			if(confirm("등록이 완료되었습니다. \n조회페이지로 이동하시겠습니까?"))
				location.href="${path}/userManager";
		}
		
		// validate check : id
		$('.inId').keyup(function(){
			var inId = $(this).val();
			if(inId.length >= 4 && inId.length <= 16 ) {
				$('.idCheck').text('유효').css('color', 'green');
				$(userList.idList).each(function(idx, id){
					if(inId == id) {
						$('.idCheck').text('아이디가 중복됩니다.').css('color', 'red');
						return false;
					}
				});
			}
			else {
				$('.idCheck').text('4~16글자로 입력하세요.').css('color', 'red');
			}
		});
		// validate check : pass
		$('.inPass').keyup(function(){
			var inPass = $(this).val();
			if(inPass.length >= 8 && inPass.length <= 16 ) {
				$('.passCheck').text('유효').css('color', 'green');
			}
			else {
				$('.passCheck').text('8~16글자로 입력하세요.').css('color', 'red');
			}
		});
		
		// 등록
		$('.regBtn').on('click', function(){
			var id = $('.idCheck').text();
			var pass = $('.passCheck').text();
			var name = $('.inName').val();
			var mail = $('.inMail').val();
			var date = $('.inDate').val();
			
			if(id == '') {
				alert('id를 입력하세요.');
				$('.inId').focus();
				return false;
			}
			else if(id == '아이디가 중복됩니다.') {
				alert('아이디가 중복됩니다.');
				$('.inId').val('');
				$('.inId').focus();
				return false;
			}
			else if(id == '4~16글자로 입력하세요.') {
				alert('아이디는 4~16글자로 입력하세요.');
				$('.inId').val('');
				$('.inId').focus();
				return false;
			}
			else if(pass == '') {
				alert('pass를 입력하세요.');
				$('.inPass').focus();
				return false;
			}
			else if(pass == '8~16글자로 입력하세요.') {
				alert('비밀번호는 8~16글자로 입력하세요.');
				$('.inPass').val('');
				$('.inPass').focus();
				return false;
			}
			else if(name == '') {
				alert('이름을 입력하세요.');
				$('.inName').val('');
				$('.inName').focus();
				return false;
			}
			else if(mail == '') {
				alert('메일을 입력하세요.');
				$('.inMail').val('');
				$('.inMail').focus();
				return false;
			}
			else if(date == '') {
				alert('생년월일을 입력하세요.');
				$('.inDate').val('');
				$('.inDate').focus();
				return false;
			} else {
				$('form').submit();
			}
			
		})
		
		// get : userList
		function getUserList(){
			xhr.open("get", '${path}/a00_admin/z02_userTotal.jsp', true);
			xhr.onreadystatechange = function() {
				if(xhr.readyState == 4 && xhr.status == 200){
					userList = JSON.parse(xhr.responseText);
					console.log(userList);
				}
			}
			xhr.send();
		}
		getUserList();
	</script>
</body>
</html>