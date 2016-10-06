<%-- 
    Document   : results
    Created on : Oct 6, 2016, 5:05:49 PM
    Author     : Jake Langreck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SalaryResults</title>
    </head>
    
    <%
        int HoursWorked = Integer.parseInt(request.getParameter("hours"));
        int hrlywage = Integer.parseInt(request.getParameter("wages"));
        int prtax = Integer.parseInt(request.getParameter("pretax"));
        int potax = Integer.parseInt(request.getParameter("posttax"));
        %>
    
    <body>
        <h1>Salary info</h1>
        
        <table>
            <tbody>
                <tr>
                    <td> Total Hours Worked: </td>   
                    <td><%= HoursWorked %>  </td>
                </tr>
                <tr>
                    <td> Hourly Rate: </td>   
                    <td> <%= hrlywage %>  </td>
                </tr>
                <tr>
                    <td> # Hours Overtime:  </td>   
                    <td> <%= prtax %>  </td>
                </tr>
                <tr>
                    <td> Overtime Hourly Rate: </td>   
                    <td> <%= potax %>  </td>
                </tr>
                <tr>
                    <td> Gross Pay: </td>   
                    <td> </td>
                </tr>
                <tr>
                    <td> Pre-tax Deductions: </td>   
                    <td> </td>
                </tr>
                <tr>
                    <td> Pre-tax Pay: </td>   
                    <td> </td>
                </tr>
                <tr>
                    <td> Tax Amount: </td>   
                    <td> </td>
                </tr>
                <tr>
                    <td> Post-tax Pay: </td>   
                    <td> </td>
                </tr>
                <tr>
                    <td> Post-tax Deductions: </td>   
                    <td> </td>
                </tr>
                <tr>
                    <td> Net Pay: </td>   
                    <td> </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
