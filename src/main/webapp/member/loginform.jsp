<%@page import="com.jspshop.domain.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.jspshop.repository.CategoryDAO"%>
<%@page import="com.jspshop.mybatis.MybatisConfig"%>
<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<%@ include file="/inc/header.jsp"%>
</head>

<body>
	<!-- Page Preloder -->
	<%@ include file="/inc/preloader.jsp"%>

	<!-- Offcanvas Menu Begin -->
	<%@ include file="/inc/main_navi.jsp"%>
	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->
	<%@ include file="/inc/header_section.jsp"%>
	<!-- Header Section End -->

	<!-- Shop Section Begin -->
	<section>
		<div class="wrapper">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="card card-info col-md-6 p-0 m-5">
					<div class="card-header">
						<h3 class="card-title">Login</h3>
					</div>
	
					<!-- loading bar bigin -->
					<form class="form-horizontal" id="loginForm">
						<div class="card-body">
							<!-- loading bar end -->
	
							<!-- /.card-header -->
							<!-- form start -->
							<div class="form-group row">
								<label for="member_id" class="col-sm-2 col-form-label">ID</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="member_id" placeholder="ID">
								</div>
							</div>
							<div class="form-group row">
								<label for="member_pass" class="col-sm-2 col-form-label">Password</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" name="member_pass" placeholder="Password">
								</div>
							</div>
							<div class="form-group row">
								<div class="offset-sm-2 col-sm-10">
									<div class="form-check">
										<input type="checkbox" class="form-check-input" id="exampleCheck2"> <label class="form-check-label" for="exampleCheck2">Remember me</label>
									</div>
								</div>
							</div>
						</div>
						<!-- /.card-body -->
						<div class="card-footer">
							<button type="button" class="btn btn-info" id="login">Login</button>
							<button type="button" class="btn btn-dark float-right" id="regist">Regist</button>
						</div>
						<!-- /.card-footer -->
					</form>
				</div>
				<div class="col-md-3"></div>
			</div>
		</div>
	</section>
	<!-- Shop Section End -->

	<!-- Instagram Begin -->
	<%@ include file="/inc/instagram.jsp"%>
	<!-- Instagram End -->

	<!-- Footer Section Begin -->
	<%@ include file="/inc/footer.jsp"%>
	<!-- Footer Section End -->

	<!-- Search Begin -->
	<%@ include file="/inc/search.jsp"%>
	<!-- Search End -->

	<!-- Js Plugins -->
	<%@ include file="/inc/footer_link.jsp"%>
</body>

<script type="text/javascript">
	function login() {
		$("#loginForm").attr({
			action: "/member/login.jsp",
			method: "POST"
		});
		$("#loginForm").submit();
	}

	$(function() {
		$("#login").on("click", function() {
			login();
		});
		$("#regist").on("click", function() {
			$(location).attr("href", "/member/joinform.jsp");
		});
	});
</script>
</html>