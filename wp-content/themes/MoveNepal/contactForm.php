<?php
if (!($_SERVER["REQUEST_METHOD"] == "POST")){
	include 'htmlContact.php';

} else {
	//check robot with captcha TURNED OFF FOR TESTING
	// if ( !( !empty($_POST['g-recaptcha-response']) && checkCaptcha($_POST['g-recaptcha-response']) ) ){
	// 	echo 'error : invalid captcha';
	if (false){
	} else{




		$formValid = true;

		$textElements = array('first-name','last-name','gender','email','nationality','inspiration-text','skills-text','ideas-text','describe-text','emergency1-first-name','emergency1-last-name','emergency2-first-name','emergency2-last-name','heard-about-us','more-info');
		$prefix = 'a-';

		foreach($textElements as $key){
			if (!empty($_POST[$prefix . $key])){
				if (checkText($_POST[$prefix . $key])){
					$formElements[$key] = cleanInput($_POST[$prefix . $key]);
				} else{
					echo 'Error : '. $key .' incorrect format - ' . $_POST[$prefix . $key] . '<br>';
					$formValid = false;
				}
			} else{
				// echo 'Error : '. $key .' missing<br>';
				// $formValid = false;
			}
		}

		$dateElements = array('dob','start-date','end-date');
		foreach($dateElements as $key){
			if (!empty($_POST[$prefix . $key])){
				if (checkFormDate($_POST[$prefix . $key])){
					$formElements[$key] = cleanInput($_POST[$prefix . $key]);
				} else{
					echo 'Error : '. $key .' incorrect format - ' . $_POST[$prefix . $key] . '<br>';
					$formValid = false;
				}
			} else{
				// echo 'Error : '. $key .' missing<br>';
				// $formValid = false;
			}
		}

		$phoneNumberElements = array('phone-number','emergency1-phone-number','emergency2-phone-number');
		foreach($phoneNumberElements as $key){
			if (!empty($_POST[$prefix . $key])){
				if (checkPhoneNumber($_POST[$prefix . $key])){
					$formElements[$key] = cleanInput($_POST[$prefix . $key]);
				} else{
					echo 'Error : '. $key .' incorrect format - ' . $_POST[$prefix . $key] . '<br>';
					$formValid = false;
				}
			} else{
				// echo 'Error : '. $prefix . $key .' missing<br>';
				// $formValid = false;
			}
		}

		$emailElements = array('email','emergency1-email','emergency2-email');
		foreach($emailElements as $key){
			if (!empty($_POST[$prefix . $key])){
				if (checkEmail($_POST[$prefix . $key])){
					$formElements[$key] = cleanInput($_POST[$prefix . $key]);
				} else{
					echo 'Error : '. $key .' incorrect format - ' . $_POST[$prefix . $key] . '<br>';
					$formValid = false;
				}
			} else{
				// echo 'Error : '. $prefix . $key .' missing<br>';
				// $formValid = false;
			}
		}

		if (!empty($_POST['a-select-project'])){
			$num = 1;
			foreach($_POST['a-select-project'] as $value){
				$formElements['Project-' . $num] = $value;
				$num++;
			}
		} else{
			// echo 'Error : '. $prefix . $key .' missing<br>';
			// $formValid = false;
		}

		if(!checkImage('a-photo')){
			$formValid = false;
		}

		if ($formValid){
			sendForm($formElements);	
		}else{
			echo 'Form not sent.<br>';
			// foreach ($formElementsErr as $prefix . $key => $value) {
			// 	echo $prefix . $key . ' - ' . $value . '<br>';
			// }
		}
	}

}

function checkCaptcha($gcaptcha){
	$url = 'https://www.google.com/recaptcha/api/siteverify';
	$privatekey = "6LcdDikUAAAAAEUt8LFAMV80coQKhlf8Nv_usbkj";
	$response = file_get_contents($url."?secret=".$privatekey."&response=".$_POST['g-recaptcha-response']."&remoteip=".$_SERVER['REMOTE_ADDR']);
	$data = json_decode($response);

	if (isset($data->success) AND $data->success==true) {
	    return true;
	}
	else{
		return false;
	}
}

function sendForm($formElements){


	require 'vendor/phpmailer/phpmailer/PHPMailerAutoload.php';

	$mail = new PHPMailer;

	//$mail->SMTPDebug = 3;                               // Enable verbose debug output

	$mail->isSMTP();                                      // Set mailer to use SMTP
	$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
	$mail->SMTPAuth = true;                               // Enable SMTP authentication
	$mail->Username = 'movenepalvolunteer@gmail.com';                 // SMTP username
	$mail->Password = 'movenepal2415';                           // SMTP password
	$mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
	$mail->Port = 465;                                    // TCP port to connect to

	$mail->setFrom($formElements['email'], $formElements['full-name']);
	$mail->addAddress('aloizel@ensc.fr', 'Antoine');     // Add a recipient
	$mail->addReplyTo($formElements['email'], $formElements['full-name']);

	//$mail->isHTML(true);                                  // Set email format to HTML

	$mail->Subject = 'New Move Nepal application from ' . $formElements['first-name'];

	$body = "<h1>Hey Khom! You've got a new application! Here's the rundown:</h1>";
	foreach($formElements as $key=>$value){
		$body .= '<br><strong>' . $key . ':</strong> ' . $value;
	}

	$mail->Body = $body;

	$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

	$mail->AddAttachment($_FILES['a-photo']["tmp_name"], $_FILES['a-photo']['name']);

	if(!$mail->send()) {
	    echo 'Message could not be sent.';
	    echo 'Mailer Error: ' . $mail->ErrorInfo;
	} else {
	    echo sentMessage();
	}
}

function sentMessage(){
	echo '<div class="card">
  <div class="card-block">
    <h4 class="card-title">Your message has been sent!</h4>
    <h6 class="card-subtitle mb-2 text-muted">Sit back, relax, and we\'ll be in touch soon</h6>
    <a href="' . site_url() . '" class="btn btn-primary">Go back to the main page</a>
  </div>
</div>';
}

function checkImage($name){
	$errorMessage = '';

	$target_file = basename($_FILES[$name]["name"]);
	$uploadOk = 1;
	$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
	// Check if image file is a actual image or fake image
	if(isset($_FILES[$name]) && !empty($_FILES[$name]["tmp_name"])) {
	    $check = getimagesize($_FILES[$name]["tmp_name"]);
	    if($check !== false) {
	        //$errorMessage .= "<br>File is an image - " . $check["mime"] . ".";
	        $uploadOk = 1;
	    } else {
	        $errorMessage .= "<br>File is not an image.";
	        $uploadOk = 0;
	    }
		// Check file size
		if ($_FILES[$name]["size"] > 3000000) {
		    $errorMessage .= "<br>Sorry, your file is too large. The limit is 3MB!";
		    $uploadOk = 0;
		}
		// Allow certain file formats
		if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
		&& $imageFileType != "gif" ) {
		    $errorMessage .= "<br>Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
		    $uploadOk = 0;
		}
		// Check if $uploadOk is set to 0 by an error
		if ($uploadOk == 0) {
		    $errorMessage .= "<br>Sorry, your file was not uploaded.";
		// if everything is ok, try to upload file
		}
	} else{
		$errorMessage.= '<br>No file uploaded!';
	}

	echo $errorMessage.'<br>';

	return uploadOk;
}

function cleanInput($element){
	//clean input for security
	$element = htmlspecialchars($element);
	$element = trim($element);
	$element = stripslashes($element);
	return $element;
}

function checkText($element){
	if ($element != ""){
	  return true;
	} else {
	  return false;
	}
}

function checkFormDate($element){
    if ((bool)strtotime($element)){
      return true;
    } else {
      return false;
    }
}

function checkPhoneNumber($element){
    $phoneRegex = '/\+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42\d|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|4[987654310]|3[9643210]|2[70]|7|1)\W*\d\W*\d\W*\d\W*\d\W*\d\W*\d\W*\d\W*\d\W*(\d{1,2})$/';
    if (preg_match($phoneRegex, $element)){
      return true;
    } else {
      return false;
    }
}

function checkEmail($element){
    $emailRegex = '/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/';
    if (preg_match($emailRegex, $element)){
      return true;
    } else {
      return false;
    }
}