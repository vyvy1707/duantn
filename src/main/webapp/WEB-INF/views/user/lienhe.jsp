<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.5.0/mdb.min.css"
	rel="stylesheet" />

<div style="margin-top: 80px;" class="my-data" data-spy="scroll"
	data-bs-offset="0" data-target="#subject" id="subject">
	<div class="container">
		<div class="row">
			<iframe style="width: 1000px;"
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1809.314644509947!2d108.16929297924077!3d16.075642566414015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314218e6e07b1c3f%3A0x459e4bf5a2af323e!2zVHLGsOG7nW5nIGNhbyDEkeG6s25nIHRo4buxYyBow6BuaCBGUFQgUE9MWVRFQ0hOSUMgxJDDoCBO4bq1bmc!5e0!3m2!1svi!2s!4v1617939258980!5m2!1svi!2s"
				width="600" height="450" style="border:0;" allowfullscreen=""
				loading="lazy"></iframe>
		</div>
		<div class="row">
			<div class="col-6 thongTinLH">
				<div class="card">
					<div class="card-header">
						<h4>Thông tin liên hệ</h4>
					</div>
					<div class="card-body">
						<h5>Liên hệ trực tiếp:</h5>
						<h3>
							<b></b>
						</h3>
						<div class="row">
							<div class="col-md-3">
								<b>Địa chỉ:</b>
							</div>
							<div class="col-md-9">
								<p>86 Nguyễn Sinh Sắc, Hoà Minh, Liên Chiểu Đà Nẵng</p>
							</div>
							<div class="col-md-3">
								<b>Điện thoại:</b>
							</div>
							<div class="col-md-9">
								<p>0867899999</p>
							</div>
							<div class="col-md-3">
								<b>Email:</b>
							</div>
							<div class="col-md-9">
								<p>cskh@gmail.com</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div class="nhapThongTinLH">
					<div style="padding: 8px;">
						<b>Hoặc gửi liên hệ cho chúng tôi theo mẫu dưới đây:</b> <input
							class="form-control" type="text" required name="" id=""
							placeholder="Họ và tên *"><br> <input
							class="form-control" type="text" name="" id=""
							placeholder="Địa chỉ"><br> <input
							class="form-control" type="number" required name="" id=""
							placeholder="Số điện thoại *"><br> <input
							class="form-control" type="email" required name="" id=""
							placeholder="Thư điện tử *"><br>
						<textarea class="form-control" name="" id="" cols="49" rows="4"
							placeholder="Nội dung liên hệ *"></textarea>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>