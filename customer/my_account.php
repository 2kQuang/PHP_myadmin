<?php require_once 'includes/header.php'; ?>

<?php
	if (!isset($_SESSION['customer_email'])) {
		header('Location: ../checkout.php');
	}
?>

<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top" id="navbar">
		  <!-- <a class="navbar-brand home" href="#">Navbar</a> -->
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto text-uppercase">
		      <li >
		        <a class="active" href="../index.php">Trang Chủ</a>
		      </li>
		      <li>
		        <a href="../shop.php">Cửa Hàng</a>
		      </li>
		      <?php if (!isset($_SESSION['customer_email'])): ?>
						<li><a href="../checkout.php">Tài Khoản</a></li>
					<?php else: ?>
						<li><a href="customer/my_account.php?my_orders">Tài Khoản</a></li>
					<?php endif ?>
		      <li>
		        <a href="../cart.php">Giỏ Hàng</a>
		      </li>
		      <li>
		        <a href="../contact.php">Liên Hệ</a>
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
				    <li class="breadcrumb-item"><a href="../index.php">Home</a></li>
				    <li class="breadcrumb-item" aria-current="page">Tài Khoản</li>
				  </ol>
				</nav>
			</div>

			<div class="col-md-3">
				<?php require_once 'includes/sidebar.php'; ?>
			</div>

			<div class="col-md-9">
				<?php if (isset($_SESSION['login_success_msg'])): ?>
					<div class="alert alert-success text-center alert-dismissible fade show" role="alert">
					  <?php echo $_SESSION['login_success_msg']; unset($_SESSION['login_success_msg']); ?>
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>
					</div>
				<?php endif ?>

				<?php
					if (isset($_GET['my_orders'])) {
						require_once 'includes/my_orders.php';
					}
					if (isset($_GET['pay_offline'])) {
						require_once 'includes/pay_offline.php';
					}
					if (isset($_GET['edit_account'])) {
						require_once 'includes/edit_account.php';
					}
					if (isset($_GET['change_pass'])) {
						require_once 'includes/change_pass.php';
					}
					if (isset($_GET['delete_account'])) {
						require_once 'includes/delete_account.php';
					}
				?>
			</div>



		</div>
	</div>
</div>

<?php require_once 'includes/footer.php'; ?>