<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%> --%>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.5.0/mdb.min.css"
	rel="stylesheet" />

<div style="margin-top: 100px;" class="my-data" data-spy="scroll"
	data-bs-offset="0" data-target="#subject" id="subject">
	<div class="container-fluid">


		<div class="container row " style="margin-top: 10px; ">
			<div class="col-4" >
			<h1 class="title20Bold" style="margin-left: 55px;border-color: 1px-solid red">Thông tin dịch vụ</h1>
				<h1 class="mb-4" > </h1>
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="../images/No Name.jpg" alt="">
					<div class="card-body">
						<h5 class="card-title title20Bold container" style="color: red;">Chúng tôi cam kết</h5>
						<h6 class="card-text"> <i class="fas fa-thumbs-up"></i> Hàng đảm bảo chất lượng.</h6>
						<h6 class="card-text"> <i class="fas fa-sync"></i> Đổi trả linh hoạt.</h6>
						<h6 class="card-text"> <i class="fas fa-heart"></i> Dịch vụ khách hàng tốt nhất.</h6>
						 
						
						<a href="https://www.facebook.com/ctadzzn/" class="btn btn-primary">Contact Facebook</a>
						
					
					</div>
					<br>
					<img style="width: 270px; height: 250px"
								class="card-img-top img-fluid hvr-grow-shadow"
									src="/images/zalo.jpg" alt="">
				</div>
			</div>
			<div class="col-4" style="margin-left: 0px">
				<img style="width: 380px; height: 530px"
					class="card-img-top img-fluid hvr-grow-shadow"
					src="/upload/${productt.image}" alt="">
			</div>
			<div class="col-4">
				<p>
				<h1 class="title20Bold"> [NEW] ${productt.name}</h1>
				</p>
				<br />
				<div>
					<h1 class="title20Bold" style="color: red">
						<fmt:formatNumber value="${productt.price}" />
						
					</h1>
				</div>
				<div>
					<p style="color:red">(-${productt.discount}%)</p>
				</div>
				<br />
				<h1 class="title15Bold"><i class="far fa-check-circle"></i> &emsp; Nhà sản xuất:
					${productt.category.name}</h1>
				<h1 class="title15Bold"><i class="far fa-check-circle"></i> &emsp; Bảo hành:
					24 tháng</h1> 
				<h1 class="title15Bold"><i class="far fa-check-circle"></i> &emsp; Tình trạng:
					Còn hàng</h1>
		<div class="card" style="width: 27rem;">	
			<div style="background-color: blue;"><h1 class="title20Bold container"
			 style="color: White;margin-left: 40px; ">Khuyến mãi Số Lượng có hạn</h1></div>
			<div class="card-body">
				
				<div class="title15Bold"><img class="_1ift _2560 img " 
				src="https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png"
				 alt="✅">&emsp;Hỗ trợ trả góp lãi suất 0%</div>
				<div class="title15Bold"><img class="_1ift _2560 img " 
				src="https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png"
				 alt="✅">&emsp;Tặng ngay gói bảo hành 24 tháng</div>
				<div class="title15Bold"><img class="_1ift _2560 img " 
				src="https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png"
				 alt="✅">&emsp;Dùng thử miễn phí trong 7 ngày đâu tiên</div>
				<div class="title15Bold"><img class="_1ift _2560 img " 
				src="https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png"
				 alt="✅">&emsp;Quà tặng kèm túi xách, voucher, adapter...</div>
				 <div class="title15Bold"><img class="_1ift _2560 img " 
				src="https://static.xx.fbcdn.net/images/emoji.php/v9/tba/1.5/16/2705.png"
				 alt="✅">&emsp;Discount 10% dành cho đợt khuyến mãi này.</div>
			 </div>
		</div>
				

				<div>
					<h1 class="title15Bold">Bạn muốn chọn :</h1>
					
					<div class="form-group">
  					
					  <select class="form-control" id="sel1">
					    <option>4GB: SSD 125GB</option>
					    <option>8GB: SSD 125GB</option>
					  </select>
					</div>
					

				</div>
				
				<div>
					<a href="/shoppingCart/add/${productt.id}"><button
							type="button" class="btn btn-danger mt-3">Thêm vào giỏ</button></a>
				</div>
			</div>
			<div class="row container-fluid">
			
			<div class=col-4>
			</div>
						
			 <div class=col-8>
			 <h1 class="title20Bold"> THÔNG SỐ KỸ THUẬT</h1>
			 	<table class="table" border ="1">
            <thead>
               <tr>
                  <th>CPU: </th>
                  <th>AMD Ryzen 5 5500U, 6 nhân / 12 luồng</th>
                  
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>RAM	</td>
                  <td>8GB LPDDR4x bus 4266 MHz</td>
                  
               </tr>
               <tr>
                  <td>Ổ cứng</td>
                  <td>SSD 256GB NVMe PCIe (Nâng cấp tối đa 2TB)</td>
                  
               </tr>
               <tr>
                  <td>Card đồ họa</td>
                  <td>NVIDIA® GeForce® MX450 2GB GDDR5 VRAM</td>
                  
               </tr>
               <tr>
                  <td>Màn hình</td>
                  <td>14.0" FHD IPS (1920 x 1080) chống chói viền siêu mỏng NanoEdge | 90% sRGB</td>
                  
               </tr>
               <tr>
                  <td>Cổng giao tiếp</td>
                  <td>2 x USB-C 3.2 Gen 2, 1 x USB-A 3.2 Gen 2, 1 x microSD , 1 x HDMI</td>
                  
               </tr>
            </tbody>
         </table>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/UJ0NAZb5mNA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	
			
			</div>
		</div>
	</div>
	<div>
		

	</div>

	<section class="smart-testing" style="margin-bottom: -60px;">
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