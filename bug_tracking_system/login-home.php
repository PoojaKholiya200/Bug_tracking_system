<?php 
	include_once("includes/header.php"); 
	if($_REQUEST[car_id])
	{
		$SQL="SELECT * FROM car WHERE car_id = $_REQUEST[car_id]";
		$rs=mysqli_query($con,$SQL) or die(mysqli_error($con));
		$data=mysqli_fetch_assoc($rs);
	}
?> 
	<div class="crumb">
    </div>
    <div class="clear"></div>
	<div id="content_sec">
		<div class="col1">
			<div class="contact">
					<h4 class="heading colr">Welcome to Bug Tracking System</h4>
					<div class='msg'><?=$_REQUEST['msg']?></div>
					<ul class="login-home">
						<li><a href="project.php">Add Project</a></li>
						<li><a href="project-report.php">Project Report</a></li>
						<li><a href="bug.php">Add Bugs</a></li>
						<li><a href="bug-report.php">Bugs Report</a></li>
						<li><a href="user.php">Add User</a></li>
						<li><a href="user-report.php">Users Report</a></li>
						<li><a href="course.php">Add Course</a></li>
						<li><a href="course-report.php">Course Report</a></li>
					</ul>
			</div>
		</div>
		<div class="col2">
			<?php include_once("includes/sidebar.php"); ?> 
		</div>
	</div>
<?php include_once("includes/footer.php"); ?> 
