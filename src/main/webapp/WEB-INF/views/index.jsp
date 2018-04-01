<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Minishop</title>
	<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	
	<div id="header" class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-light bg-light nav_background_none">
			  <a class="navbar-brand" href="#" >
			  	<img alt="yameshop" src="<c:url value='/resources/images/icon_yame_shop.png'/>" width="120" height="60" class="d-inline-block align-top" >
			  </a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			
			  <div class="collapse navbar-collapse " id="navbarSupportedContent">
				    <ul class="navbar-nav mr-auto mt-2 mt-lg-0 navbar-center-header">
				      <li class="nav-item active">
				       		<a class="nav-link" href="#">TRANG CHỦ <span class="sr-only">(current)</span></a>
				      </li>
				      <li class="nav-item">
				        	<a class="nav-link" href="#">DỊCH VỤ</a>
				      </li>
				      <li class="nav-item dropdown">
					        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					          DROPDOWN
					        </a>
					        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
					          <a class="dropdown-item" href="#">Action</a>
					          <a class="dropdown-item" href="#">Another action</a>
					          <div class="dropdown-divider"></div>
					          <a class="dropdown-item" href="#">Something else here</a>
					        </div>
				      </li>
				      <li class="nav-item">
				        	<a class="nav-link disabled" href="#">LIÊN HỆ</a>
				      </li>
				    </ul>
				    
				    <ul class="nav navbar-nav navbar-right">
				    	<c:if test="${SESSION_ACCOUNT != null}">
				    		<li class="nav-item">
				        		<a class="nav-link" href="">${SESSION_ACCOUNT.hoten}</a>
				        	</li>	
			        		<li class="nav-item">
					        	<a class="nav-link" href="">Đăng xuất</a>
					        </li>
				    	</c:if>
				    	<c:if test="${SESSION_ACCOUNT == null}">
				    		<li class="nav-item">
				        		<a class="nav-link" href="login">Đăng nhập</a>
				        	</li>
				        	<li class="nav-item">
					        	<a class="nav-link" href="register-acount">Đăng ký</a>
					        </li>
				    	</c:if>
				      	
			        	<li class="nav-item">
			        		<a class="nav-link" href="#">
			        			<img alt="shopping cart icon" src="<c:url value='/resources/images/shop_cart.png'/>">
			        		</a>
			        	</li>
				  	</ul>
			  </div>
		</nav>
		
		<div class="event_header container wow shake" data-wow-iteration="3" >
			<span>Thời gian: 17/10 - 23/11/2018</span> <br>
			<span>MUA 1 TẶNG 1</span> <br>
			<button class='wow zoomIn' data-wow-duration="3s">XEM NGAY</button> <br>
		</div>
	</div>
	
	<div id="infor" class="container-fluid">
		<div class="row">
			<div class="col-12 col-sm-4 col-lg-4 wow fadeInLeft" data-wow-duration="1s">
				<img alt="icon quality" src="<c:url value='/resources/images/icon_chatluong.png'/>"  class="icon"> <br>	
				<span class="text-infor">CHẤT LƯỢNG</span><br>
				<p>Chúng tôi cam kết sẽ mang đến cho bản những sản phẩm chất lượng tốt nhất</p>
			</div>
			<div class="col-12 col-sm-4 col-lg-4 wow fadeInDown" data-wow-duration="2s" data-wow-delay="1s">
				<img alt="icon quality" src="<c:url value='/resources/images/icon_conheo.png'/>" class="icon" ><br>	
				<span class="text-infor">TIẾT KIỆM CHI PHÍ</span><br>
				<p>Cam kết sản phẩm bán rẽ nhất trên thị trường giúp các bạn tiết kiệm 20% cho từng sản phẩm</p>
			</div>
			<div class="col-12 col-sm-4 col-lg-4 wow fadeInRight" data-wow-duration="1s" data-wow-delay="1s">
				<img alt="icon quality" src="<c:url value='/resources/images/icon_giaohang.png'/>" class="icon" ><br>	
				<span class="text-infor">GIAO HÀNG</span><br>
				<p>Cam kết giao hàng tận nơi trong ngày. Để mang sản phẩm đến cho khách hàng nhanh nhất</p>
			</div>	
		</div>
	</div>
	
	<div id="hot-product" class="container">
		<div class="hot-product-title text-infor wow flip" data-wow-duration="2s">
			<span>SẢN PHẨM HOT</span>
		</div>
		<div class="hot-product-items">
			<div class="row">
				<div class="col-sm-6 col-md-3 card product-item wow zoomIn box" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
				<div class="col-sm-6 col-md-3 card product-item wow zoomInUp box" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
				<div class="col-sm-6 col-md-3 card product-item wow zoomIn box" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
				<div class="col-sm-6 col-md-3 card product-item wow zoomInUp box" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-md-3 card product-item wow zoomIn" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
				<div class="col-sm-6 col-md-3 card product-item wow zoomInUp" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
				<div class="col-sm-6 col-md-3 card product-item wow zoomIn" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
				<div class="col-sm-6 col-md-3 card product-item wow zoomInUp" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-md-3 card product-item wow zoomIn" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
				<div class="col-sm-6 col-md-3 card product-item wow zoomInUp" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
				<div class="col-sm-6 col-md-3 card product-item wow zoomIn" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
				<div class="col-sm-6 col-md-3 card product-item wow zoomInUp" style="width: 20rem;">
					  <img class="card-img-top" src="<c:url value='/resources/images/product_item.png'/>" alt="images" />
					  <div class="card-body">
					    	<h4 class="card-title">Áo sơ mi cánh dài</h4>
							<span class="product-cost">150.000 VNĐ</span> <br>
					  </div>
				</div>
			</div>
		</div>	
	</div>
	
	<div id="footer" class="container-fluid">
		<div class="row wow tada">
			<div class="col-sm-6 col-md-4 text-footer">
				<span class="text-infor">THÔNG TIN SHOP</span>
				<p>Yame là một thương hiệu thời trang đầy uy tín, luôn đảm bảo chất lượng sản phẩm tốt nhất cho khách hàng</p>
			</div>
			<div class="col-12 col-sm-6 col-md-4 text-footer">
				<span class="text-infor">LIÊN HỆ</span>
				<p>74 Nam Cao - Đà Nẵng</p>
				<p>phanngocquyen250995@gmail.com <br><br>SĐT: 0164 767 2501</p>
			</div>
			<div class="col-12 col-sm-6 col-md-4 text-footer">
				<span class="text-infor">GÓP Ý</span> <br>
				<form action="" method="POST">
					<input class="material-input-text" type="text" name="tenNV" value="" placeholder=" Email"> <br>
					<textarea name="diaChi" class="material-ta-text" rows="5" placeholder=" Information ... "></textarea> <br>
					<button class="primary-button">ĐỒNG Ý</button> <br>
				</form>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>