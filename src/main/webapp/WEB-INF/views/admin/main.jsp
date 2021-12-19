<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/cssadmin/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>



<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<h1 class="mt-4">Thống kê</h1>
			<div class="row mt-3">
				<div class="col-xl-3 col-md-6">
					<div class="card bg-primary text-white mb-4">
						<div class="card-body">Phản hồi tin nhắn</div>
						<div
							class="card-footer d-flex align-items-center justify-content-between">
							<a class="small text-white stretched-link" href="#">View
								Details</a>
							<div class="small text-white">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-md-6">
					<div class="card bg-warning text-white mb-4">
						<div class="card-body">Phản hồi đánh giá</div>
						<div
							class="card-footer d-flex align-items-center justify-content-between">
							<a class="small text-white stretched-link" href="#">View
								Details</a>
							<div class="small text-white">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-md-6">
					<div class="card bg-success text-white mb-4">
						<div class="card-body">Phản hồi sản phẩm</div>
						<div
							class="card-footer d-flex align-items-center justify-content-between">
							<a class="small text-white stretched-link" href="#">View
								Details</a>
							<div class="small text-white">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-md-6">
					<div class="card bg-danger text-white mb-4">
						<div class="card-body">Phản hồi báo cáo</div>
						<div
							class="card-footer d-flex align-items-center justify-content-between">
							<a class="small text-white stretched-link" href="#">View
								Details</a>
							<div class="small text-white">
								<i class="fas fa-angle-right"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<section class="row">
				<div class="col mt-4 ">
					<div class="card">
						<div class="card-header">
							<h1 style="font-size: 20px">
								<b>ĐƠN HÀNG</b>
							</h1>
						</div>
						<div class="card-body">
							<table class="table table-striped table-inverse table-hover ">
								<thead class="thead-inverse">
									<tr>
										<th>Khách hàng</th>
										<th>Tổng giá</th>
										<th>Số đơn hàng</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${itemss}">
										<tr>
											<td scope="row">${item.group.fullname }</td>
											<td><%-- <fmt:formatNumber value="${item.sum}"
													type="currency" /> --%><fmt:formatNumber value="${item.sum}"
													 /> đ</td>
											<td>${item.count }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</section>
			<section class="row">
				<div class="col mt-4 mb-4 ">
					<div class="card">
						<div class="card-header">
							<h1 style="font-size: 20px">
								<b>TỒN KHO THEO THỂ LOẠI</b>
							</h1>
						</div>
						<div class="card-body">
							<table class="table table-striped table-inverse table-hover ">
								<thead class="thead-inverse">
									<tr>
										<th>Loại hàng</th>
										<th>Tổng giá</th>
										<th>Số sản phẩm</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${items}">
										<tr>
											<td scope="row">${item.group.name }</td>
											<td><%-- <fmt:formatNumber value="${item.sum}"
													type="currency" /> --%><fmt:formatNumber value="${item.sum}"
													/> đ</td>
											<td>${item.count }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
</div>