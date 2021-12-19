<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
				<div class=" mt-4  ">
					<div class="card">
						<div class="card-header">
							<h1 style="font-size: 20px">
								<b>Danh sách đơn hàng</b>
							</h1>
						</div>
						<div class="card-body">
							<div class="row mb-2">
								<div class="col-8"></div>
								<div class="col-4">
									<form class="d-flex" action="/admin/SearchOrders" method="post">
										<input name="keywordsOrders" autocomplete="off" value="${keywordsOrders}"
											class="form-control" type="search" placeholder="Search"
											aria-label="Search">
										<button class="btn btn-outline-success"
											style="margin-left: 5px" type="submit">Tìm</button>
									</form>
								</div>
							</div>
							<table class="table table-striped table-inverse table-hover ">
								<thead class="thead-inverse">
									<tr>
										<th>Tên khách hàng</th>
										<th>Địa chỉ</th>
										<th>Ngày</th>
										<th>Tổng tiền</th>
										<th>Trạng thái</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="Orders" items="${Orderss.content}">
										<tr>
											<td scope="row">${Orders.account.fullname }</td>
											<td>${Orders.address }</td>
											<td>${Orders.createDate }</td>
											<td><%-- <fmt:formatNumber value="${Orders.amount }"
													type="currency" /> --%><fmt:formatNumber value="${Orders.amount }"
													/>đ</td>
											<td>${Orders.available?"Đã xác nhận":"Chưa xác nhận"}</td>
											<td><a style="margin-right: 15px;"
												href="/admin/edit_orders/${Orders.id }"
												class="btn-outline-warning"><i class="fas fa-edit"></i></a>
												<a href="/admin/oderDetails/${Orders.id }"
												class="btn-outline-info"><i class="fas fa-list-ul"></i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div style="margin-bottom: -20px;" class="text-center">${Orderss.number+1}/
							${Orderss.totalPages}</div>
						<div class="card-footer text-muted">
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center mt-2">
									<li ng-click="first()" class="page-item text-primary"><a
										href="/admin/SearchOrders?p=0" class="page-link"
										style="font-size: 14px;">Đầu trang</a></li>
									<c:choose>
										<c:when test="${Orderss.number>0}">
											<li ng-click="prev()" class="page-item text-primary"><a
												href="/admin/SearchOrders?p=${Orderss.number-1}"
												class="page-link" style="font-size: 14px;">Trước</a></li>
										</c:when>
										<c:when test="${Orderss.number>-1}">
											<li ng-click="prev()" class="page-item text-primary"><a
												onclick="return false;"
												href="/admin/SearchOrders?p=${Orderss.number-1}"
												class="page-link" style="font-size: 14px;">Trước</a></li>
										</c:when>
									</c:choose>
									<c:choose>
										<c:when test="${Orderss.number<Orderss.totalPages-1}">
											<li ng-click="next()" class="page-item text-primary"><a
												href="/admin/SearchOrders?p=${Orderss.number+1}"
												class="page-link" style="font-size: 14px;">Tiếp theo</a></li>
										</c:when>
										<c:when test="${Orderss.number<Orderss.totalPages}">
											<li ng-click="next()" class="page-item text-primary"><a
												onclick="return false;"
												href="/admin/SearchOrders?p=${Orderss.number+1}"
												class="page-link" style="font-size: 14px;">Tiếp theo</a></li>
										</c:when>
									</c:choose>
									<li ng-click="last()" class="page-item text-primary"><a
										href="/admin/SearchOrders?p=${Orderss.totalPages-1}"
										class="page-link" style="font-size: 14px;">Cuối trang</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
</div>