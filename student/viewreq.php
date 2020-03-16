

<main class="view">

<div class="req_status_table">
<link rel="stylesheet" href="../css/style.css">
    <?php
    session_start();

    ?>
     <h1>Approval Status</h1>
   
<?php
        
            include("../db_connect.php");

            $curruser=$_SESSION['rollno'];
            $sql = mysqli_query($conn,"select * from request where rollno='$curruser'");
   
            echo "<table >";
            echo "<tr>";

            echo "<th>Acccounts</th>";
            echo "<th>deparment</th>";

            echo "<th>library</th>";
          

            echo "</tr>";
          
            
           
 
while($row = mysqli_fetch_array($sql))
{


echo "<tr>";


if($row['accounts']==0){
?>
<td>
<img src='assets/images/no.png' class="status_icon"/>
</td>
<?php
}
else
{
    ?>

    <td><img src='assets/images/yes.png' class="status_icon" /></td>
    <?php
}

if($row['department']==0){
    ?>
    <td>
    <img src='assets/images/no.png' class="status_icon"/>
    </td>
    <?php
    }
    else
    {
        ?>
    
        <td><img src='assets/images/yes.png' class="status_icon"/></td>
        <?php
    }
    if($row['library']==0){
        ?>
        <td>
        <img src='assets/images/no.png' class="status_icon"/>
        </td>
        <?php
        }
        else
        {
            ?>
        
            <td><img src='assets/images/yes.png' class="status_icon"/></td>
            <?php
        }
            



echo "</tr>";


}
echo "</table>";
    
        ?>
        </div>
        </main>