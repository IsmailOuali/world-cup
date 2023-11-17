<?php


include 'config.php';

$id = $_GET['id'];

$sql = "select * from equipe where id = $id";
$req = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($req);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>info</title>
</head>
<body class="flex justify-center items-center h-screen bg-gray-700 flex-col"> 
    

<div class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 w-4/5">
    <a href="#">
        <img class="" src="<?php echo $row['10'] ?>" alt="" />
    </a>
    <div class="p-5">
        <a href="#" class="flex justify-between">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white"><?php echo $row['1'] ?></h5>
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white"><?php echo $row['7'] ?> PTNS</h5>

        </a>
        <p class="text-white">
        <?php echo $row['1'] ?> 
        <br><?php echo $row['2'] ?>
        <br><?php echo $row['3'] ?>
        <br><?php echo $row['4'] ?>
        <br><?php echo $row['5'] ?>
        </p>
    </div>
</div>
<a href="index.php">fermer</a>


    
</body>
</html>