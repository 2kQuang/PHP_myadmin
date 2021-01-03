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
					<a href="cart.php" class="btn btn-success mr-2"><i class="fas fa-shopping-cart"></i><span> <?php echo $getFromU->count_product_by_ip($ip_add); ?> sản phẩm trong hiỏ hàng</span></a>

		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Tìm Kiếm" aria-label="Search" name="user_query" required="1">
		      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="search">Tìm Kiếm</button>
		    </form>
		  </div>
		</nav>


<div id="content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="index.php">Trang Chủ</a></li>
				    <li class="breadcrumb-item" aria-current="page">Checkout</li>
				  </ol>
				</nav>
			</div>

			<div class="col-md-3">
				<?php require_once 'includes/sidebar.php'; ?>
			</div> <!-- col-md-3 End -->

			<div class="col-md-9">
				<?php
					if (!isset($_SESSION['customer_email'])) {
						require_once 'customer/customer_login.php';
					}else {
						require_once 'payment_options.php';
					}


				?>
			</div> <!-- col-md-9 End -->



		</div> <!-- Row End -->





	  </div> <!-- SINGLE PRODUCT ROW END -->

	</div>
</div>




<?php require_once 'includes/footer.php'; ?>