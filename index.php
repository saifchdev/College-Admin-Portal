




    <main>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
   
        <div class="row">
                <div class="col-12">
                <article class="login">
                
            <div class="card ">
            <?php
            

            if (isset($_SESSION["user"])) {
               

   ?>
             <h1>LOGGED IN! </h1>
            <h2> <a href="bookticket.php"> Click here to go to daashboard</a></h2>

                    
      <?php
            }
            else{
                ?>
            
<div class="box ">    <div class="logo_space">

               <img src="img/logo.png" alt="" class="logo-img" > <br> <br>College Admin Student Portal

            
            </div>
              
                <div class="form_space">
                <form  action="login.php" method="POST">
                    Roll No: 
                    <input type="text" name="rollno" id="rollno" placeholder="Enter your Roll No" required /><br><br>
                    Password:
                    <input type="password" name="password" id="password" placeholder="Enter your password" required /><br><br>
                    <input type="submit" name="submit" id="submit" value="login" >
                   <a href="registration.php"> <button type="button" name="Register" id="Register" value="Register" onclick="register()" >Register</button><br>
                  
            </form></div> </div>
            <?php
            }
               
        ?>
            
            </div>
         </main>
            </article>

  </div>
 
                    

                    
                
              
     





            </div>

           
        
    </div>
    


   

        </main>
</body>

</html>


