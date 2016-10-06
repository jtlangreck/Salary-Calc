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
        int hrlywage =  Integer.parseInt(request.getParameter("wages"));
        double prtax =  Integer.parseInt(request.getParameter("pretax"));
        int potax =  Integer.parseInt(request.getParameter("posttax"));
        int overtime = 0;
        double grosspay =0;
        int taxablepay = 0;
        double otrate = 1.5*hrlywage;
        double otpay = 0;
        double taxablePay = 0;
        double taxamnt = 0; 
        
        if(HoursWorked > 40)
        {
            int reg = 40;
            overtime = HoursWorked-40;
            otpay = overtime*otrate;
            double regularPay = reg*hrlywage;
            grosspay = regularPay+otpay;
        }
        else
        {
            grosspay = HoursWorked*hrlywage;
        }
        taxablePay = grosspay-prtax;
        
        if (grosspay<500)
        {
            taxamnt = (taxablePay * .18);
        }
        else
        {
            taxamnt = (taxablePay *.22);
        }
        
        double postpay = taxablePay-taxamnt;
        double netpay =postpay-potax;
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
                    <td> $<%= overtime %> </td>
                </tr>
                <tr>
                    <td> Overtime Pay: </td>   
                    <td> $<%= otpay %>  </td>
                </tr>
                <tr>
                    <td> Gross Pay: </td>   
                    <td> $<%= grosspay %> </td>
                </tr>
                <tr>
                    <td> Pre-tax Deductions: </td>   
                    <td> $<%= prtax %> </td>
                </tr>
                <tr>
                    <td> Pre-tax Pay: </td>   
                    <td> $<%= taxablePay %> </td>
                </tr>
                <tr>
                    <td> Tax Amount: </td>   
                    <td> $<%= taxamnt %> </td>
                </tr>
                <tr>
                    <td> Post-tax Pay: </td>   
                    <td> $<%= postpay %> </td>
                </tr>
                <tr>
                    <td> Post-tax Deductions: </td>   
                    <td> $<%= potax %>  </td>
                </tr>
                <tr>
                    <td> Net Pay: </td>   
                    <td> $<%= netpay %> </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
