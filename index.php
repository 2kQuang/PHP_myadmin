<?php require_once 'includes/header.php'; ?>

		<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top" id="navbar">
		  <!-- <a class="navbar-brand home" href="#">Navbar</a> -->
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto text-uppercase">
		      <li >
		        <a class="active" href="index.php">Trang Chủ</a>
		      </li>
		      <li>
		        <a href="shop.php">Cửa Hàng</a>
		      </li>
		      <?php if (!isset($_SESSION['customer_email'])): ?>
						<li><a href="checkout.php">Tài Khoản</a></li>
					<?php else: ?>
						<li><a href="customer/my_account.php?my_orders">Tài Khoản</a></li>
					<?php endif ?>
		      <li>
		        <a href="cart.php">Giỏ Hàng</a>
		      </li>
		      <li>
		        <a href="contact.php">Liên Hệ</a>
			  </li>
			  
		    </ul>
					<a href="cart.php" class="btn btn-success mr-2"><i class="fas fa-shopping-cart"></i><span> <?php echo $getFromU->count_product_by_ip($ip_add); ?> sản phẩm trong giỏ hàng</span></a>

		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Tìm Kiếm" aria-label="Search" name="user_query" required="1">
		      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="search">Tìm Kiếm</button>
		    </form>
		  </div>
		</nav>		
		<div class="container h-25" id="slider">
			<div class="row">
				<div class="col-md-12">
				  <!-- carousel slide starts -->
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
					  <ol class="carousel-indicators">
					    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
					    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
					  </ol>
					  <div class="carousel-inner">
					  	<?php
					  		$slides = $getFromU->selectSlide1();
					  		foreach ($slides as $slide) {
					  			$slide_image = $slide->slide_image;
					  			$slide_name  = $slide->slide_name;
					  			$slide_title  = $slide->slide_title;
					  			$slide_text  = $slide->slide_text;
					  	?>
					  	 <div class="carousel-item active">
					      <img class="d-block w-100 img-fluid" src="assets/images/<?php echo $slide_image; ?>" alt="<?php echo $slide_name; ?>">
					      <div class="carousel-caption d-none d-md-block">
							    <h5><?php echo $slide_title; ?></h5>
							    <p><?php echo $slide_text; ?></p>
							  </div>
					    </div>

							<?php } ?>

							<?php
					  		$slides = $getFromU->selectSlideAll();
					  		foreach ($slides as $slide) {
					  			$slide_image = $slide->slide_image;
					  			$slide_name  = $slide->slide_name;
					  			$slide_title  = $slide->slide_title;
					  			$slide_text  = $slide->slide_text;
					  	?>
					  	 <div class="carousel-item">
					      <img class="d-block w-100 img-fluid" src="assets/images/<?php echo $slide_image; ?>" alt="<?php echo $slide_name; ?>">
					      <div class="carousel-caption d-none d-md-block">
							    <h5><?php echo $slide_title; ?></h5>
							    <p><?php echo $slide_text; ?></p>
							  </div>
					    </div>
							<?php } ?>

					  </div>

					  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					  </a>
					</div>
					<!-- carousel slide ends -->
				</div>
			</div>
		</div>
		</div>	

		<!-- <div class="container mt-4 advantages"> 
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
					  <div class="card-body text-center">
					    <h5 class="card-title text-uppercase text-info">we love our customers</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
					</div>
				</div>

				<div class="col-sm-4">
					<div class="card">
					  <div class="card-body text-center">
					    <h5 class="card-title text-uppercase text-info">best prices</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
					</div>
				</div>

				<div class="col-sm-4">
					<div class="card">
					  <div class="card-body text-center">
					    <h5 class="card-title text-uppercase text-info">100% satisfiction &amp guarented </h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
					</div>
				</div>
			</div>
		</div> 
 -->

		<div id="hot">
			<div class="container-fluid mt-4 px-0">
				<div class="row">
					<div class="col-12">
						<h2 class="p-4 bg-light text-center text-uppercase">Sản Phẩm Mới Trong Tuần</h2>
					</div>
				</div>
				<div class="container w-100 h-50">	
			  	<div class="col-md-4 hidden-sm hidden-xs">
										<div class="option browse-tags">
											<label class="lb-filter hide" for="sort-by">Sắp xếp theo:</label>
											<span class="custom-dropdown custom-dropdown--grey">
												<select class="sort-by custom-dropdown__select">

													<option value="manual">Sản phẩm nổi bật</option>

													<option value="price-ascending" data-filter="&amp;sortby=(price:product=asc)">Giá: Tăng dần</option>
													<option value="price-descending" data-filter="&amp;sortby=(price:product=desc)">Giá: Giảm dần</option>
													<option value="title-ascending" data-filter="&amp;sortby=(title:product=asc)">Tên: A-Z</option>
													<option value="title-descending" data-filter="&amp;sortby=(price:product=desc)">Tên: Z-A</option>
													<option value="created-ascending" data-filter="&amp;sortby=(updated_at:product=desc)">Cũ nhất</option>
													<option value="created-descending" data-filter="&amp;sortby=(updated_at:product=asc)">Mới nhất</option>
													<option value="best-selling" data-filter="&amp;sortby=(sold_quantity:product=desc)">Bán chạy nhất</option>
													<option value="quantity-descending">Tồn kho: Giảm dần</option>
												</select>
											</span>
										</div>
									</div>
			</div>
		</div>

		<div class="container" id="content">
			<div class="row">

				<?php
					$getProducts = $getFromU->selectLatestProduct();
					foreach ($getProducts as $getProduct) {
						$product_id = $getProduct->product_id;
						$product_title = $getProduct->product_title;
						$product_price = $getProduct->product_price;
						$product_img1 = $getProduct->product_img1;
				?>

				<div class="col-sm-6 col-md-4 col-lg-3 single">
					<div class="product mb-4">
						<div class="card">
						  <a href="details.php?product_id=<?php echo $product_id; ?>"><img class="card-img-top img-fluid p-4" width="300px" height="200px" src="admin_area/product_images/<?php echo $product_img1; ?>" alt="Card image cap"></a>
						  <div class="card-body text-center">
						    <h6 class="card-title"><a href="details.php?product_id=<?php echo $product_id; ?>"><?php echo $product_title; ?></a></h6>
						    <h5 class="card-text">Giá : <?php echo number_format($product_price, 0, ',', '.'); ?> VNĐ</h5>
						    <div class="row">
									<div class="col-md-6  pr-1 pb-2">
										<a href="details.php?product_id=<?php echo $product_id; ?>" class="btn btn-outline-info form-control">Chi tiết</a>
									</div>
									<div class="col-md-6  pr-3">
										<a href="details.php?product_id=<?php echo $product_id; ?>" class="btn btn-success form-control"><i class="fas fa-shopping-cart"></i> Thêm</a>
									</div>
								</div>
						  </div>
						</div>
					</div>
				</div> <!-- SINGLE PRODUCT END -->

				<?php } ?>





			</div>
		</div>


		<?php require_once 'includes/footer.php'; ?>

