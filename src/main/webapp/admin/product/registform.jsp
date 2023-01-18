<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>
	<%@ include file="/admin/inc/header_link.jsp" %>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
	<%@ include file="/admin/inc/preloader.jsp" %>

  <!-- Navbar -->
	<%@ include file="/admin/inc/navbar.jsp" %>
	
  <!-- /.navbar -->

	<!-- mian sidbar -->
	<%@ include file="/admin/inc/sidebar_left.jsp" %>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">상품 개별등록</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
				<div class="col">
					<!-- general form elements -->
					<div class="card card-dark">
              <div class="card-header">
                <h3 class="card-title">상품등록</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form>
                <div class="card-body">
                  <div class="form-group">
                    <select class="form-control" id="exampleInputEmail1">
                    	<option value="0">카테고리 선택</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">상품명</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="상품명">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">브랜드</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="브랜드">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">가격</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="가격">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">할인가</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="할인가">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">상세내용</label>
                    <textarea class="form-control" id="detail"></textarea>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputFile">이미지 등록</label>
                    <div class="row m-2">
                      	<input type="file" multiple class="form-cotrol">
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-dark">등록</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
					
				</div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  
  <!-- /.content-wrapper -->
  
  <!-- Footer -->
	<%@ include file="/admin/inc/footer.jsp" %>

  <!-- Control Sidebar -->
	<%@ include file="/admin/inc/sidebar_right.jsp" %>
	
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- Footer Link -->
<%@ include file="/admin/inc/footer_link.jsp"%>

<script type="text/javascript">
	$(function(){
		$('#detail').summernote({
			tabsize: 2,
			height: 400
		});
	});
</script>
</body>
</html>
