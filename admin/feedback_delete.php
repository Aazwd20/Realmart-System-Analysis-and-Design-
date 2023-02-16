<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("DELETE FROM feedback WHERE id=:id");
			$stmt->execute(['id'=>$id]);

			$_SESSION['success'] = 'Feedback deleted successfully';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Select Feedback to delete first';
	}

	header('location: feedback.php');
	
?>