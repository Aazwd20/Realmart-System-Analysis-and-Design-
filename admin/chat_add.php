
<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$name = $_POST['response'];

		$conn = $pdo->open();

		$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM chatbot WHERE name=:name");
		$stmt->execute(['response'=>$name]);
		$row = $stmt->fetch();

		if($row['numrows'] > 0){
			$_SESSION['error'] = 'Response already exist';
		}
		else{
			try{
				$stmt = $conn->prepare("INSERT INTO category (name) VALUES (:name)");
				$stmt->execute(['name'=>$name]);
				$_SESSION['success'] = 'Chat added successfully';
			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}
		}

		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Fill up Chat form first';
	}

	header('location: chat.php');

?>