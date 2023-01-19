<%@page import="java.util.ArrayList"%>
<%@page import="com.jspshop.domain.Psize"%>
<%@page import="com.jspshop.domain.Category"%>
<%@page import="com.jspshop.domain.Product"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.jspshop.util.FileManager"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="com.jspshop.exception.PsizeException"%>
<%@page import="com.jspshop.exception.ColorException"%>
<%@page import="com.jspshop.exception.ProductException"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.jspshop.repository.PsizeDAO"%>
<%@page import="com.jspshop.repository.ColorDAO"%>
<%@page import="com.jspshop.repository.ProductDAO"%>
<%@page import="com.jspshop.mybatis.MybatisConfig"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%!MybatisConfig mybatisConfig = MybatisConfig.getInstance();

	ProductDAO productDAO = new ProductDAO();
	ColorDAO colorDAO = new ColorDAO();
	PsizeDAO psizeDAO = new PsizeDAO();
	
	//upload 객체를 만드는 공장
	DiskFileItemFactory factory = new DiskFileItemFactory();%>

<%

//멀티파트 폼에 대한 파라미터 얻기
int maxSize = 5 * (1024 * 1024);
String path = application.getRealPath("/data/");

factory.setSizeThreshold(maxSize);
factory.setRepository(new File(path));
factory.setDefaultCharset("utf-8"); //request.setCharset(); 대체하는 메서드

//멀티파트 요청을 받을 객체 생성
ServletFileUpload upload = new ServletFileUpload(factory);

List<FileItem> itemList = upload.parseRequest(request);

// empty DTO 생성
Product product = new Product();
Category category = new Category();
product.setCategory(category);

for (FileItem item : itemList) {
	if (item.isFormField()) {
		switch (item.getFieldName()) {
		case "category_idx":
			product.getCategory().setCategory_idx(Integer.parseInt(item.getString()));
			break;
		case "product_name":
			product.setProduct_name(item.getString());
			break;
		case "brand":
			product.setBrand(item.getString());
			break;
		case "price":
			product.setPrice(Integer.parseInt(item.getString()));
			break;
		case "discount":
			product.setDiscount(Integer.parseInt(item.getString()));
			break;
		case "size":
			System.out.println(item.getString()); 
			break;
		case "color":
			System.out.println(item.getString()); 
			break;
		case "detail":
			product.setDetail(item.getString());
			break;
		}
	} else {
		long time = System.currentTimeMillis();
		String ext = FileManager.getExt(item.getName());
		System.out.println(path);

		item.write(new File(path + time + "." + ext));
	}
}

System.out.println("파라미터를 얻은 DTO :" + product);

//session 얻기
SqlSession sqlSession = mybatisConfig.getSqlSession();

//session 주입
productDAO.setSession(sqlSession);
colorDAO.setSession(sqlSession);
psizeDAO.setSession(sqlSession);

try {
	productDAO.insert(null);
	colorDAO.insert(null);
	psizeDAO.insert(null);

	sqlSession.commit();
} catch (ProductException e) {
	sqlSession.rollback();
} catch (ColorException e) {
	sqlSession.rollback();
} catch (PsizeException e) {
	sqlSession.rollback();
} finally {
	mybatisConfig.release(sqlSession);
}
%>