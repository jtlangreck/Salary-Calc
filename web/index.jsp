<%-- 
    Document   : index
    Created on : Oct 6, 2016, 2:17:21 PM
    Author     : Jake Langreck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <form name = "salaryinput" action = "results.jsp" method = "post">
            <table>
                <tbody>
                <tr>
                    <td> Hours Worked: </td>
                    <td> <input type ="text" name="hours" value="" size ="50" required> </td>
                </tr>
                <tr>
                    <td> Hourly Pay: </td>
                    <td> <input type ="text" name="wages" value="" size ="50" required> </td>
                </tr>
                <tr>
                    <td> Pre-Tax Deduct: </td>
                    <td> <input type ="text" name="pretax" value="" size ="50" required> </td>
               </tr>  
               <tr>
                    <td> Post-Tax Deduct: </td>
                    <td> <input type ="text" name="posttax" value="" size ="50" required> </td>
                </tr>
                </tbody>
            </table>  
            <br>
            <input class= "submis" type="reset" value ="Clear" id="clear">
            <input class= "submis" type="submit" value ="Submit" id ="submit">
        </form>
    </body>
</html>
