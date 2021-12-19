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
		<div class="container-fluid px-4" style="margin-top: 26px;">
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
				<div class="col mt-4 ">
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
			<section class="row">
				<div class="col mt-4 ">
					<div class="card">
						<div class="card-header">
							<h1 style="font-size: 20px">
								<b>DOANH THU</b>
							</h1>
						</div>
						<div class="card-body">
							<table class="table table-striped table-inverse table-hover ">
								<thead class="thead-inverse">
									<tr>
										<th>Ngày hôm nay</th>
										<th>Tháng 6</th>
										<th>Năm 2021</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td scope="row"><%-- <fmt:formatNumber value="${summDate}"
												type="currency" /> --%><fmt:formatNumber value="${summDate}"
												/> đ</td>
										<td><%-- <fmt:formatNumber value="${summMonth}"
												type="currency" /> --%><fmt:formatNumber value="${summMonth}"
												 /> đ</td>
										<td><%-- <fmt:formatNumber value="${summ}" type="currency" /> --%><fmt:formatNumber value="${summ}" /> đ</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
</div>