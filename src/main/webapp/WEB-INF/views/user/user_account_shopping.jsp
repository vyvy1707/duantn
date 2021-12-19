<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<main class=" container" style="margin-top: 100px;">
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
								<c:forEach var="Orders" items="${Orderss}">
									<tr>
										<td scope="row">${Orders.account.fullname }</td>
										<td>${Orders.address }</td>
										<td>${Orders.createDate }</td>
										<td><%-- fmt:formatNumber value="${Orders.amount }"
												type="currency" /> --%><fmt:formatNumber value="${Orders.amount}"
												/> đ</td>
										<td>${Orders.available?"Đã xác nhận":"Chưa xác nhận"}</td>
										<td><a style="margin-right: 15px;"
											href="/user/oderDetails/${Orders.id }"
											class="btn-outline-warning"><i class="fas fa-edit"></i></a> <%--  <a
											href="/admin/deletecate/${Orders.id }"
											class="btn-outline-info"><i class="fas fa-trash-alt"></i></a> --%></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="mt-2">
				<tr>
					<td><a href="/user/index" class="btn btn-warning"><i
							class="fa fa-angle-left"></i> Tiếp tục mua hàng</a></td>
					<td class="hidden-xs"></td>
				</tr>
			</div>
		</section>
		<section class="smart-testing"
			style="margin-bottom: -60px; margin-top: -80px;">
			<div class="container">
				<h2 class="title40Bold center-title text-center mt-5">
					<span>UY TÍN TẠO NÊN</span><span> CHẤT LƯỢNG</span>
				</h2>
				<div class="row justify-content-center">
					<div class="col-12 col-lg-3 col-sm-4 col-custom-padding">
						<div class="smart-box">
							<div class="green-rect">
								<img src="/images/smart1.png" alt="Đa dạng nội dung" />
							</div>
							<h3 class="title25Bold">
								<i class="far fa-address-card"></i> Thẻ thành viên
							</h3>
							<p>Chế độ ưu đãi thành viên VIP: 5% cho thành viên Bạc , 10%
								cho thành viên Vàng</p>
						</div>
					</div>
					<div class="col-12 col-1dot4">
						<div class="green-line"></div>
					</div>
					<div class="col-12 col-lg-3 col-sm-4 col-custom-padding">
						<div class="smart-box">
							<div class="green-rect">
								<img src="/images/smart2.png" alt="Ma trận câu hỏi" />
							</div>
							<h3 class="title25Bold">
								<i class="fas fa-shipping-fast"></i> Thanh toán và giao hàng
							</h3>
							<p>Miễn phí vận chuyển cho đơn hàng trên 599.000 VNĐ - Giao
								hàng và thu tiền tận nơi</p>
						</div>
					</div>
					<div class="col-12 col-1dot4">
						<div class="green-line"></div>
					</div>
					<div class="col-12 col-lg-3 col-sm-4 col-custom-padding last">
						<div class="smart-box">
							<div class="green-rect">
								<img src="/images/smart3.png" alt="Đáp án chi tiết" />
							</div>
							<h3 class="title25Bold">
								<i class="fas fa-phone"></i> Hỗ trợ 24/7
							</h3>
							<p>Gọi ngay cho chúng tôi khi bạn có thắc mắc: 0867898999</p>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</main>
