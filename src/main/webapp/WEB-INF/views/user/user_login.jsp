<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>






<main class="container" style="margin-top: 100px;">
	<section class="row">
		<div class="col-6 offset-3 mt-4 ">
			<form action="/user/dologin" method="POST">
				<div class="card">
					<div class="card-header">
						<h1 style="font-size: 20px;">
							<b>Đăng nhập</b>
					</div>
					<div class="card-body">
						<div class="form-group">
							<label for="username">Tài khoản</label> 
							<input type="text"
								class="form-control" name="username" id="username"
								aria-describedby="usernameHid" placeholder="Username"> 
								<small
								id="usernameHid" class="form-text text-muted">&ensp;</small>
						</div>
						<div class="form-group">
							<label for="password">Mật khẩu</label> 
							<input type="password"
								class="form-control" name="password" id="password"
								aria-describedby="passwordHid" placeholder="Password"> 
								<small
								id="passwordHid" class="form-text text-muted"></small>
						</div>
						<div class="form-check">
							<label class="form-check-label"> 
							<input type="checkbox"
								class="form-check-input" name="remember" value="true"> Nhớ mật khẩu
							</label>
						</div>
					</div>
					<div class="card-footer text-muted">
						<button class="btn btn-primary">Login</button>
						<button type="reset" class="btn btn-secondary">Reset</button>
					</div>
				</div>
			</form>
			<div class=" row py-3">
				<div class=" col-7 small">
					<a href="/user/passwordMail">Quên mật khẩu?</a>
				</div>
				<div class="col-5 small">
					<a href="/user/newAccount">Chưa có tài khoản? Đăng ký ngay!</a>
				</div>
			</div>
			<div class=" mt-2 mb-5">
				<c:if test="${!empty mess}">
					<div class="alert alert-danger" role="alert">
						<b>${mess}</b>
					</div>
				</c:if>
			</div>
		</div>
	</section>
	<footer class="row"></footer>
</main>
