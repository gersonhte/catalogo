<?php
require_once 'includes/conexion.php';
if(isset($_POST['accion']) && $_POST['accion']=='grabar'){
    $usuario=$_POST['usuario'];
    $clave=$_POST['clave'];
    $sql_login="select * from usuarios where login='".$usuario."' and password='".md5($clave)."'";
    $rs_login=mysql_query($sql_login,$cn);
    if($row_login=mysql_fetch_array($rs_login)){
        session_start();
        $_SESSION['usuario']=$row_login['login'];
        header('Location:principal.php');
    }
    else{
        $txt="<script>alert('Usuario y/o password incorrecto')</script>";
        echo $txt;
    }
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
</head>
<body onload="document.form1.usuario.focus();">
<form id="form1" name="form1" method="post" action="">
  <table width="312" height="120" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height="30" colspan="2"><div align="center"><strong>Acceso al Sistema</strong></div></td>
    </tr>
    <tr>
      <td width="135">Usuario</td>
      <td width="177"><input type="text" name="usuario" id="usuario" /></td>
    </tr>
    <tr>
      <td>Contrasena</td>
      <td><input type="password" name="clave" id="clave" /></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="button" id="button" value="Enviar" />
        <input type="hidden" value="grabar" name="accion" id="accion"/>
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
