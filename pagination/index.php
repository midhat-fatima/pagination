<?php include "autoload/index.php" ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
    
        table,tr,th,td{
            border: 1px solid grey;
            }
        li {
            display: inline-block;
            }
        li {
            color: grey;
            float: left;
            padding: 5px 10px;
            text-decoration: none;
            }
    </style>
</head>
<body>

<?php

if(isset($_GET['page_no']) && $_GET['page_no'] != "") {
    $page_no = $_GET['page_no'];
} 
else {
    $page_no = 1;
}

$total_records_per_page = 5;    
$offset = ($page_no-1) * $total_records_per_page;
$previous_page = $page_no - 1;
$next_page = $page_no + 1;

$result_count = mysqli_query($obj->con, "SELECT COUNT(*) As total_records FROM `pagination`");
$total_records = mysqli_fetch_array($result_count);
$total_records = $total_records['total_records'];
$total_no_of_pages = ceil($total_records / $total_records_per_page);
$second_last = $total_no_of_pages - 1;  ?>

<table>
    <thead>
        <tr>
            <th style='width:20px;'> ID </th>
            <th style='width:150px;'> Name </th>
            <th style='width:50px;'> Age </th>
            <th style='width:150px;'> Country </th>
        </tr>
    </thead>
    <tbody> <?php

$result = mysqli_query($obj->con, "SELECT * FROM `pagination` LIMIT $offset, $total_records_per_page");

while($row = mysqli_fetch_array($result)) { ?>
    <tr>
        <td><?php echo $row['ID']; ?></td>
        <td><?php echo $row['username']; ?></td>
        <td><?php echo $row['age']; ?></td>
        <td><?php echo $row['country']; ?></td>
    </tr>   <?php } ?>
    </tbody>
</table>

<ul>
    <li>
        <a <?php if($page_no > 1){echo "href='?page_no=$previous_page'";} ?>>Previous</a>
    </li>   <?php

    if($total_no_of_pages <= 10){   
        for($counter = 1; $counter <= $total_no_of_pages; $counter++){
            if($counter == $page_no) {
                echo "<li><a>$counter</a></li>"; 
            }
            else {
                echo "<li><a href='?page_no=$counter'>$counter</a></li>";
            }
        }
    } ?>  

    <li>
        <a <?php if($page_no < $total_no_of_pages) { echo "href='?page_no=$next_page'"; } ?>>Next</a>
    </li>

</ul>   <?php

mysqli_close($obj->con);    ?>

</body>
</html>