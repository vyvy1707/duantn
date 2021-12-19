<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.5.0/mdb.min.css" rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.5.0/mdb.min.css"
	rel="stylesheet" /> -->

<!-- <link rel="stylesheet"
	href="https://s.tracnghiem.net/assets/css/common.css?id=1.002j">
<link rel="stylesheet"
	href="https://cdn.rawgit.com/t4t5/sweetalert/v0.2.0/lib/sweet-alert.css" />
<script
	src="https://cdn.rawgit.com/t4t5/sweetalert/v0.2.0/lib/sweet-alert.min.js"></script> -->

<body >
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="/user/index"> <p style = "color: orange; font-size: 30px; font-weight: 900;margin-left:50px;"> No Name </p>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon "><i
					class="fas fa-align-justify"></i></span>
			</button>
			<div class="collapse navbar-collapse justify-content-center"
				id="collapsibleNavbar">
				<ul class="navbar-nav ">
					<!-- <li class="nav-item mx-2">&ensp;&ensp;&ensp;&ensp;</li>
					<li class="nav-item mx-2">&ensp;&ensp;&ensp;&ensp;</li> -->
					<li class="nav-item mx-2"><a
						class="nav-link hvr-underline-from-center text-body"
						href="/user/index"> <i class="fas fa-home"></i> <s:message
								code="lo.mn.home" />
					</a></li>
					<li class="nav-item mx-2"><a
						class="nav-link hvr-underline-from-center text-body"
						href="/user/mainProduct"> <s:message code="lo.mn.product" /></a></li>
					<li class="nav-item mx-2 "><a
						class="nav-link hvr-underline-from-center text-body"
						href="/user/lienhe"> <s:message code="lo.mn.contact" /></a></li>
					<li class="nav-item mx-2"><a
						class="nav-link hvr-underline-from-center text-body"
						href="/user/gioithieu"><s:message code="lo.mn.introduce" /></a></li>

					<form class="d-flex" action="/user/search" method="post">
						<input style="margin-top: -2px" name="keywords" autocomplete="off"
							value="${keywords}" class="form-control" type="search"
							placeholder="Search" aria-label="Search">
						<button type="submit" class=" mx-2 button1 button1:hover">
							<span class=""><s:message code="lo.mn.search" /></span>
						</button>
						<!-- <button class="btn btn-outline-success" type="submit">Search</button> -->
					</form>

					<%-- <form action="/user/search" method="post">
				<input name="keywords" value="${keywords}">
				<button>Search</button>
				
			</form>
 --%>
				</ul>
				<div style="margin-bottom: 3px;">
					<%-- 	<a href="/shoppingCart/index"><button type="button"
							class=" mx-2 button1 button1:hover">
							<span class="caret"><i class="fas fa-cart-plus"></i>
								${Count} Giỏ hàng</span>
						</button> </a> --%>

					<a href="/shoppingCart/index"><button type="button"
							class="nav-icon position-relative text-decoration-none mx-2 button1 button1:hover">
							<i class="fas fa-cart-plus"></i><span
								class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"><b
								style="color: red; size: 11px;">${Count}</b></span> </span>
						</button> </a>

					<c:if test="${empty user }">
						<a href="/user/login"><button type="button"
								class=" mx-2 button1 button1:hover">
								<span class="caret"></i> <s:message code="lo.mn.login" /></span>
							</button> </a>
						<a href="/user/newAccount"><button type="button"
								class=" mx-2 button1 button1:hover">
								<span class="caret"></i> <s:message code="lo.mn.registration" /></span>
							</button> </a>

					</c:if>
					<c:if test="${!empty user }">
						<span>&ensp;&ensp;</span>
						<button type="button" class=" button1 button1:hover"
							data-toggle="dropdown">
							<span class="caret"><i class="fas fa-user-cog"></i>
								${user.fullname}</span>
						</button>
						<div class="dropdown-menu" style="margin-left: 90px">
							<a class="dropdown-item"
								href="/user/editUserAccount/${user.username}"> Hồ sơ</a> <a
								class="dropdown-item" href="/user/editPassword/${user.username}">
								Đổi mật khẩu</a> <a class="dropdown-item"
								href="/user/oder/${user.username}">Lịch sử mua hàng</a> <a
								class="dropdown-item" href="/user/logout"> Đăng xuất</a>
						</div>
					</c:if>
				</div>
				<ul class="navbar-nav reverser">
					<li class="nav-item"><a class="nav-link" href="?lang=en">English</a>
					</li>
					<li class="nav-item"><a class="nav-link active"
						href="?lang=vi">Tiếng Việt</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
<script>
	$(document).ready(function() {
		$("a[href*=lang]").on("click", function() {
			var param = $(this).attr("href");
			$.ajax({
				url : "/user/index" + param,
				success : function() {
					location.reload();
				}
			});
			return false;
		})
	})

	
</script>