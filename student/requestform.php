<?php
include '../header.php';
?>
<link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="../css/style.css">
<body class="card">

     <h1 style="padding-left:9%;">Enter Details</h1>
        <div class="container reg">
                  
         
           
            <form action="send_req.php" method="POST">
			<div class="row formview">       
			<div class="col-8">
                   
        Email:<br> <input type="email" id="email" name="email" required><br>
		
        Phone:<br> <input type="text" id="contact" name="contact" required><br>
        Department:<br>
        <select name="dep_name" id="department">
	<option data-dep_name="Engineering" value="EN" Selected>Engineering</option>
	<option data-dep_name="Pharmacy" value="PH" Selected>Pharmacy</option>
	<option data-dep_name="Architecture" value="AR" Selected>Architecture</option>

		
		

</select><br><br>
<input type="checkbox">I hereby accept terms & conditions..
<br><br>
<input id="submit-btn" type="submit" value="submit" >
</div>

</div>
<br><br>   


                    </form>
        

     
</body>
</html>