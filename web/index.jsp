<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:query var="materias" dataSource="jdbc/tecresource">
    SELECT clavemateria,nombremateria FROM materia
</sql:query>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examen1CarlosVazquez</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Bienvenido al sitio de materias</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>Carlos Antonio Vazquez Ibarra 947260</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Para ver los profesores que imparten cada materia accede a la siguiente lista:</td>
                </tr>
                <tr>
                    <td>
                        <form action="response.jsp">
                            <strong>Selecciona una materia:</strong>
                            <select name="subject_id">
                                <c:forEach var="row" items="${materias.rows}">
                                    <option value="${row.clavemateria}">${row.nombremateria}</option>
       				</c:forEach>
                            </select>
                            <input type="submit" value="Submit" name="Submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
