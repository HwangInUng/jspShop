<%@page import="com.jspshop.domain.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.jspshop.repository.CategoryDAO"%>
<%@page import="com.jspshop.mybatis.MybatisConfig"%>
<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<%@ include file="/inc/header.jsp" %>
</head>

<body>
    <!-- Page Preloder -->
		<%@ include file="/inc/preloader.jsp" %>

    <!-- Offcanvas Menu Begin -->
		<%@ include file="/inc/main_navi.jsp" %>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
		<%@ include file="/inc/header_section.jsp" %>
    <!-- Header Section End -->

    <!-- Shop Section Begin -->
    <section>
      <div class="wrapper">
        <div class="register-box col">
          <div class="register-logo">
            <a href="/member/joinform.jsp"><b>회원가입</b></a>
          </div>
          <div class="card">
            <div class="card-body register-card-body">
              <p class="login-box-msg">Register a new membership</p>
              <form id="registForm">
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="Enter ID" name="member_id">
                </div>
                <div class="input-group mb-3">
                  <input type="password" class="form-control" placeholder="Enter Password" name="member_pass">
                </div>
                <div class="input-group mb-3">
                  <input type="password" class="form-control" placeholder="Retype Password" name="member_pass2">
                </div>
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="Enter Name" name="member_name">
                </div>
                <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder="Enter E-mail" name="email">
                </div>
                <div class="row">
                  <div class="col-4">
                    <button type="button" class="btn btn-primary btn-block" id="regist">등록</button>
                  </div>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>
    </section>
    <!-- Shop Section End -->

<!-- Instagram Begin -->
<%@ include file="/inc/instagram.jsp" %>
<!-- Instagram End -->

<!-- Footer Section Begin -->
<%@ include file="/inc/footer.jsp" %>
<!-- Footer Section End -->

<!-- Search Begin -->
<%@ include file="/inc/search.jsp" %>
<!-- Search End -->

<!-- Js Plugins -->
<%@ include file="/inc/footer_link.jsp" %>
</body>

<script type="text/javascript">
  function regist(){
	  if($("input[name='member_pass']").val() == $("input[name='member_pass2']").val()){
	    $("#registForm").attr({
	      action: "/member/join.jsp",
	      method:"POST"
	    });
	    $("#registForm").submit();
	  } else{
		  alert("비밀번호가 일치하지 않습니다.");
	  }
  }

  $(function(){
    $("#regist").on("click", function(){
      regist();
    });
  });
</script>
</html>