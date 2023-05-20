<?php
	include_once("../includes/db_connect.php");
	include_once("../includes/functions.php");
	if($_REQUEST[act]=="save_bug")
	{
		save_bug();
		exit;
	}
	if($_REQUEST[act]=="delete_bug")
	{
		delete_bug();
		exit;
	}
	###Code for save bug#####
	function save_bug()
	{
		global $con;
		$R=$_REQUEST;
		if($R[bug_id])
		{
			$statement = "UPDATE `bug` SET";
			$cond = "WHERE `bug_id` = '$R[bug_id]'";
			$msg = "Data Updated Successfully.";
		}
		else
		{
			$statement = "INSERT INTO `bug` SET";
			$cond = "";
			$msg="Data saved successfully.";
		}
		$SQL=   $statement." 
				`bug_project_id` = '$R[bug_project_id]', 
				`bug_type_id` = '$R[bug_type_id]', 
				`bug_user_id` = '$R[bug_user_id]', 
				`bug_title` = '$R[bug_title]', 
				`bug_description` = '$R[bug_description]', 
				`bug_start_date` = '$R[bug_start_date]', 
				`bug_due_date` = '$R[bug_due_date]', 
				`bug_hours` = '$R[bug_hours]', 
				`bug_status` = '$R[bug_status]'". 
				 $cond;
		$rs = mysqli_query($con,$SQL) or die(mysqli_error($con));
		header("Location:../bug-report.php?msg=$msg");
	}
#########Function for delete bug##########3
function delete_bug()
{
	global $con;
	/////////Delete the record//////////
	$SQL="DELETE FROM bug WHERE bug_id = $_REQUEST[bug_id]";
	mysqli_query($con,$SQL) or die(mysqli_error($con));
	
	header("Location:../bug-report.php?msg=Deleted Successfully.");
}
?>