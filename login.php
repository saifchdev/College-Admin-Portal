     <?php
            include("db_connect.php");
                if($_POST)
                {
                    $rollno=$_POST['rollno'];
                    $password=md5($_POST['password']);
                   
                    $sql="select * from users where rollno='$rollno' and password='$password'";
                    $result=$conn->query($sql);
                    if($result->num_rows == 1)
                    {
                    session_start();
                    $_SESSION["rollno"]=$rollno;
                    $sql1 = mysqli_query($conn,"select * from users where rollno='$rollno'");
                    $row=mysqli_fetch_array($sql1);
                    
                                    if($row['gcode']==1)
                                    {
                                        header("location:admin");
                                      

                                    }
                                    else if($row['gcode']==2)
                                    {
                                        header("location:accounts");
                                    }
                                    else
                                    {
                                        header("location:student");

                                    }
                        
             }
                else
                {   
                    echo("login failed!!");
                    
                }
                }
   ?>