<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/cssadmin/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>

<div id="layoutSidenav_nav">
	<nav class="sb-sidenav accordion sb-sidenav-dark" style="background-color: black ;" id="sidenavAccordion">
		<div class="sb-sidenav-menu">
			<div class="nav" >

				<a class="nav-link" href="/admin/report">
					<div class="sb-nav-link-icon">
						<i class="fas fa-tachometer-alt"></i>
						
					</div> <div style="color: orange ; font-size: 20px; font-weight: 900;"> Thống Kê </div>
				</a>
				<div class="sb-sidenav-menu-heading">QUẢN LÝ</div>
				<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
					data-bs-target="#collapseLayouts" aria-expanded="false"
					aria-controls="collapseLayouts">
					<div class="sb-nav-link-icon">
						<i class="fas fa-columns"></i>
					</div>  <div style="color: orange ; font-size: 20px; font-weight: 900;"> Tài khoản </div>
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapseLayouts"
					aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="/admin/account"><div style="color: orange ; font-size: 20px; ">Thêm tài khoản </div></a> <a
							class="nav-link" href="/admin/account_views"> <div style="color: orange ; font-size: 20px; ">Danh sách tài
							khoản </div></a>
					</nav>
				</div>
				<!--                             <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                </nav>
                            </div> -->

				<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
					data-bs-target="#collapseLayout" aria-expanded="false"
					aria-controls="collapseLayout">
					<div class="sb-nav-link-icon">
						<i class="fas fa-columns"></i>
					</div>  <div style="color: orange ; font-size: 20px; font-weight: 900;"> Các Mặt Hàng </div>
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapseLayout"
					aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="/admin/category"> <div style="color: orange ; font-size: 20px"> Thêm thể loại </div> </a> <a
							class="nav-link" href="/admin/category_views"> <div style="color: orange ; font-size: 20px"> Danh sách thể
							loại </div></a>
					</nav>
				</div>

				<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
					data-bs-target="#collapseLayou" aria-expanded="false"
					aria-controls="collapseLayou">
					<div class="sb-nav-link-icon">
						<i class="fas fa-columns"></i>
					</div> <div style="color: orange ; font-size: 20px; font-weight: 900;"> Sản Phẩm </div>
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapseLayou"
					aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="/admin/product_new"> <div style="color: orange ; font-size: 20px"> Thêm Sản Phẩm </div> </a> <a
							class="nav-link" href="/admin/product_views"> <div style="color: orange ; font-size: 20px"> Danh Sách Sản
							phẩm </div></a>
					</nav>
				</div>

				<a class="nav-link collapsed" href="/admin/oder">
					<div class="sb-nav-link-icon">
						<i class="fas fa-columns"></i>
					</div> <div style="color: orange ; font-size: 20px; font-weight: 900;"> Danh Sách Oder </div>
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
			</div>
		</div>
	</nav>
</div>