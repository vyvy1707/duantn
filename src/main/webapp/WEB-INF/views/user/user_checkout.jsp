<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<main class=" container" style="margin-top: 100px;">
	<div class="container-fluid px-4" style="margin-top: 26px;">
		<section class="row col-12">
			<div class="col-1"></div>
			<div class="col-7 mt-4 ">
				<div class="">
					<div class="card-header">
						<h1 style="font-size: 20px; font-family:"Nunito", sans-serif;">
							<b>Thanh toán</b>
						</h1>
					</div>
					<div class="card-body">
						<form:form action="/cart/checkout" modelAttribute="UserCheckout"
							method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label>Tài khoản</label>
								<form:input type="text" readonly="true" class="form-control"
									path="username" placeholder="Enter UserName" />
								<br>
							</div>
							<div class="form-group">
								<label>Họ tên</label>
								<form:input type="text" readonly="true" class="form-control"
									path="fullname" placeholder="Enter fullname" />
								<br>
							</div>
							<div class="form-group">
								<label>Email</label>
								<form:input type="text" readonly="true" class="form-control"
									path="email" placeholder="Enter email" />
								<br>
							</div>
							<div class="form-group">
								<label>Số điện thoại</label>
								<form:input type="text" class="form-control" path="phone"
									placeholder="Enter phone" />
								<br>
								<c:if test="${!empty messagePhone }">
									<h4 class="text-danger">${messagePhone}</h5>
								</c:if>
							</div>

							<div class="form-group">
								<label>Địa chỉ</label>
								<form:input type="text" class="form-control" path="address"
									placeholder="Enter address" />
								<br>
								<c:if test="${!empty messageAddress }">
									<h4 class="text-danger">${messageAddress}</h4>
								</c:if>
							</div>
							<div class="card-footer">
								<form:button type="submit" class="btn btn-success btn-block">
									<i class="fas fa-check"></i> Thanh toán</form:button>
								<a href="/shoppingCart/index" class="btn btn-danger"><i
									class="fas fa-list-ul"></i> Xem giỏ hàng</a>
							</div>

						</form:form>
					</div>
				</div>
				<div class="mb-5">
					<c:if test="${!empty message }">
						<div class="alert alert-danger" role="alert">
							<b>${message}</b>
						</div>
					</c:if>
					<c:if test="${!empty messQuantity }">
						<div class="alert alert-danger" role="alert">
							<b>${messQuantity}</b>
						</div>
					</c:if>
				</div>

			</div>
			<div class="col-3 mt-4">
				<div class="col-md-12 col-lg-12">
					<h4 class="d-flex justify-content-between ">
						<span class="text-danger"><b>Giỏ hàng</b></span> <span
							class="badge bg-success rounded-pill"><i
							class="fas fa-cart-plus"></i> ${Countt}</span>
					</h4>
					<ul class="list-group ">
						<c:forEach var="item" items="${carttItems}">
							<li class="list-group-item d-flex justify-content-between lh-sm">
								<div class="row">
									<h6 class="my-0 col-3">
										<img src="/images/rosa_img/${item.image}"
											style="height: 50px; width: 40px" alt=" "
											class="img-responsive" />
									</h6>
									<h4 class="nomargin col-6" style="font-size: 16px;">${item.name}</h4>
									<small class="text">SL: ${item.quantity}</small>
								</div> <span class="text"><%-- <fmt:formatNumber
										value="${item.price*item.quantity*(100-item.discount)*0.01 }"
										type="currency" /> --%><fmt:formatNumber
										value="${item.price*item.quantity*(100-item.discount)*0.01 }"
										 /> đ</span>
							</li>
						</c:forEach>
						<li
							class="list-group-item d-flex justify-content-between bg-light">
							<div class="text-danger">
								<h6 class="my-0">Tổng:</h6>
							</div> <span class="text-danger"><%-- <fmt:formatNumber
									value="${totall}" type="currency" /> --%><fmt:formatNumber
									value="${totall}"  />đ</span>
						</li>

					</ul>
				</div>
			</div>
		</section>
	</div>
</main>
