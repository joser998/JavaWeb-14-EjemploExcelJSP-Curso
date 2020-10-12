<!--Para usar una directiva e importar clases Java-->
<%@page import="utilerias.Conversiones, java.util.Date"%>

<!--Con esto indicamos que vamos a agregar contenido Excel en lugar de HTML-->
<%@page contentType="application/vnd.ms-excel" %>

<!--Abrimos un Scriplet para indicar el nombre del archivo que vamos a generar-->
<%
    String nombreArchivo = "reporte.xls"; 
    
    //mandamos a llamar el metodo setHeader
    //el primer parametro es el nombre del cabecero
    //en el segundo parametro indicamos que se descargara un archivo excel y concatenamos el nombre del archivo
    response.setHeader("Content-Disposition", "attachment;filename=" + nombreArchivo); 
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte de Excel</title>
    </head>
    <body>
        <h1>Reporte de Excel</h1>
        <br>
        <table border="1">
            <tr>
                <!--Estas seran las celdas del cabecero-->
                <th>Curso</th>
                <th>Descripcion</th>
                <th>Fecha</th>
            </tr>
            <tr>
                <td>1.-Fundamentos de Java</td>
                <td>Aprenderemos la Sintaxis Basica de Java</td>
                <td><%=Conversiones.format(new Date()) %> </td>
            </tr>
            <tr>
                <td>2.-Programacion con Java</td>
                <td>Pondremos en practica conceptos de la POO</td>
                <td><%=Conversiones.format(new Date()) %> </td>
            </tr>
        </table>
    </body>
</html>