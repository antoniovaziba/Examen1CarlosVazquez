<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%-- 
    Document   : response
    Created on : Jan 14, 2016, 10:53:36 AM
    Author     : CarlosAntonio
--%>


<sql:query var="profesores" dataSource="jdbc/tecresource">
    SELECT nombreprofesor,nombremateria FROM profesor, materia
    WHERE profesor.numnomina = materia.numnomina_idfk
</sql:query>

<c:set var="profesorDatos" value="${profesores.rows[0]}"/>
    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ${profesorDatos.nombremateria}</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <table border="0">
    <thead>
        <tr>
            <th colspan="2">Profesor que imparte la materia</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><strong>Nombre del profesor: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">${profesorDatos.nombreprofesor}</span></td>
        </tr>
    </tbody>
</table>
    </body>
</html>
