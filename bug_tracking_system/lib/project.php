<?php
	include_once("../includes/db_connect.php");
	include_once("../includes/functions.php");
	if($_REQUEST[act]=="save_project")
	{
		save_project();
		exit;
	}
	if($_REQUEST[act]=="delete_project")
	{
		delete_project();
		exit;
	}
	###Code for save project#####
	function save_project()
	{
		global $con;
		$R=$_REQUEST;
		if($R[project_id])
		{
			$statement = "UPDATE `project` SET";
			$cond = "WHERE `project_id` = '$R[project_id]'";
			$msg = "Data Updated Successfully.";
		}
		else
		{
			$statement = "INSERT INTO `project` SET";
			$cond = "";
			$msg="Data saved successfully.";
		}
		$SQL=   $statement." 
				`project_type_id` = '$R[project_type_id]', 
				`project_manager_id` = '$R[project_manager_id]', 
				`project_title` = '$R[project_title]', 
				`project_description` = '$R[project_description]', 
				`project_frontend` = '$R[project_frontend]', 
				`project_backend` = '$R[project_backend]', 
				`project_client_name` = '$R[project_client_name]'". 
				 $cond;
		$rs = mysqli_query($con,$SQL) or die(mysqli_error($con));
		header("Location:../project-report.php?msg=$msg");
	}
#########Function for delete project##########3
function delete_project()
{
	global $con;
	/////////Delete the record//////////
	$SQL="DELETE FROM project WHERE project_id = $_REQUEST[project_id]";
	mysqli_query($con,$SQL) or die(mysqli_error($con));
	
	header("Location:../project-report.php?msg=Deleted Successfully.");
}
?>