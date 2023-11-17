
<?php
include 'config.php';


$i = 3;
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.tailwindcss.com"></script>

    <title>World Cup 2030</title>
</head>
<body>
        <section>
            <form action="" method='post'>
                <label for="">selectioner un groupe</label>
                <select name="gr" id="">
                    <option value="0">ALL</option>
                    <option value="1">A</option>
                    <option value="2">B</option>
                    <option value="3">C</option>
                    <option value="4">D</option>
                    <option value="5">E</option>
                    <option value="6">F</option>
                    <option value="7">G</option>
                    <option value="8">H</option>
                </select>
                <input type="submit" name='go' value="filter">
            </form>

<div class="relative overflow-x-auto">
    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
                <th scope="col" class="px-6 py-3">
                    Equipe
                </th>
                <th scope="col" class="px-6 py-3">
                    point
                </th>
                <th scope="col" class="px-6 py-3">
                    Consulter
                </th>
                
            </tr>
        </thead>
        <tbody>

        <?php
            if(@$_POST['go']){
                $a = $_POST['gr'];
                
                if($a == 0){
                    $sql = "select * from equipe";
                    $req = mysqli_query($conn,$sql);
                }else{
                    $sql = "select * from equipe where idgroupe = $a";
                    $req = mysqli_query($conn,$sql);
                }
                while($row=mysqli_fetch_row($req)){



        ?>

        <?php
                        $i++;
                        if($i == 4){
                            $i = 0;
                            
                            $x = $row['6'] ;
                            $sql1 = "select * from groupe where id = $x ";
                            $req1 = mysqli_query($conn,$sql1);
                            $r=mysqli_fetch_row($req1);
                            
                    ?>

        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                        <th scope="row" class="flex px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        Groupe : <?php echo $r['1'] ?>

                        </th>
                        <td class="px-6 py-4">
        ------------------------------------------------------------
                        </td>
                        <td class="px-6 py-4">
        ------------------------------------------------------------
                        </td>
                    
                    
                    </tr>

                        <?php } ?>

<tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="flex px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                <img src="<?php echo $row['10'] ?>" alt="" class="w-5">
                <?php echo $row['1'] ?>

                </th>
                <td class="px-6 py-4">
                <?php echo $row['7'] ?>
                </td>
                <td class="px-6 py-4">
                <a href="a.php?id=<?php echo $row['0'] ?>">Info</a>
                </td>
              
            </tr>
            

        <?php
            

                }
                
            }

        ?>








            












            
        </tbody>
    </table>
</div>

        </section>
</body>
</html>