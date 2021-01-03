		<div id="footer">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-3">
						<h4>Các Trang</h4>
						<ul>
							<li><a href="cart.php">Giỏ Hàng</a></li>
							<li><a href="contact.php">Liên Hệ</a></li>
							<li><a href="shop.php">Cửa Hàng</a></li>
							<li><a href="checkout.php">Tài Khoản</a></li>
						</ul>
						<hr>
						<h4>User Section</h4>
						<ul>
							<?php if (!isset($_SESSION['customer_email'])): ?>
								<li><a href="checkout.php">Đăng Nhập</a></li>
							<?php else: ?>
								<li><a href="logout.php">Đăng Xuất</a></li>
							<?php endif ?>
							<li><a href="customer_register.php">Đăng Ký</a></li>
						</ul>
						<hr class="hidden-md-down hidden-lg-down hidden-sm-down">
					</div>

					<div class="col-sm-6 col-md-3">
						<h4>Danh Mục Hàng Đầu</h4>
						<ul>
							<?php
								$product_cats = $getFromU->viewAllFromTable("product_categories");
								foreach ($product_cats as $product_cat) {
									$p_cat_id = $product_cat->p_cat_id;
									$p_cat_title = $product_cat->p_cat_title;
							?>
							<li><a href="shop.php?p_cat_id=<?php echo $p_cat_id; ?>"><?php echo $p_cat_title; ?></a></li>
						  <?php } ?>
						</ul>
						<hr class="hidden-md-down hidden-lg-down">
					</div>

					<div class="col-sm-6 col-md-3">
						<h4></h4>
						<address>
		          <strong>Nguyễn Trọng Tài/ Trần Văn Quang</strong><br>
		          Ngũ Hành Sơn, Đà Nẵng<br>
		          VKU<br><br>
		          <i class="fas fa-phone-square"></i><span class="sr-only">Telephone:</span> <a href="tel:+84889454689">0889454689</a><br>
		          <i class="fas fa-envelope"></i><span class="sr-only">Mail:</span> <a href="mailto:nttai.19i@cit.udn.vn">nttai.19i@cit.udn.vn</a><br>
				  <i class="fas fa-phone-square"></i><span class="sr-only">Telephone:</span> <a href="tel:+84397391045">0397391045</a><br>
		          <i class="fas fa-envelope"></i><span class="sr-only">Mail:</span> <a href="mailto:nttai.19i@cit.udn.vn">nttai.19i@cit.udn.vn</a>
		        					
				</address>
		        <a href="contact.php">Go to Contact Us Page</a>
						<hr class="hidden-md-down hidden-lg-down">
					</div>

					<div class="col-sm-6 col-md-3">
						<h4>Get the News</h4>
						<p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, perferendis.</p>
						<form method="post" action="#">
							<div class="input-group mb-2 mr-sm-2">
						    <input type="email" class="form-control" id="email" placeholder="Email">
						    <div class="input-group-prepend">
						      <input type="submit" name="submit" class="input-group-text btn btn-success" value="Subscribe">
						    </div>
						  </div>
						</form>
						<hr class="hidden-md-down hidden-lg-down">
						<h4>Get in Touch</h4>
						<p class="social">
							<a href="#"><i class="fab fa-facebook-square"></i></a>
							<a href="#"><i class="fab fa-twitter-square"></i></a>
							<a href="#"><i class="fab fa-instagram"></i></a>
							<a href="#"><i class="fab fa-google-plus-square"></i></a>
							<a href="#"><i class="fas fa-envelope"></i></a>
						</p>
					</div>

				</div>
			</div>
		</div>


		<div id="copyright">
			<div class="container text-center">
				<div class="row">
					<div class="col-md-6">
						<p class="text-lg-left">&copy; 2020 Obydullah Shishir</p>
					</div>
					<div class="col-md-6">
						<p class="text-lg-right">Template by <a href="http://www.obydullahshishir.com">Obydullah Shishir</a></p>
					</div>
				</div>
			</div>
		</div>


    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
  </body>
</html>