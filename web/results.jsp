<%-- 
    Document   : results
    Created on : Oct 6, 2016, 5:05:49 PM
    Author     : Jake Langreck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
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
        
        <table id = "output">
            <tbody>
                <tr>
                    <td class="desc"> Total Hours Worked: </td>   
                    <td class="out">$<%= HoursWorked %>  </td>
                </tr>
                <tr>
                    <td class="desc"> Hourly Rate: </td>   
                    <td class="out"> $<%= hrlywage %>  </td>
                </tr>
                <tr>
                    <td class="desc"> # Hours Overtime:  </td>   
                    <td class="out"> <%= overtime %> </td>
                </tr>
                <tr>
                    <td class="desc"> Overtime Pay: </td>   
                    <td class="out"> $<%= otpay %>  </td>
                </tr>
                <tr>
                    <td class="desc"> Gross Pay: </td>   
                    <td class="out"> $<%= grosspay %> </td>
                </tr>
                <tr>
                    <td class="desc"> Pre-tax Deductions: </td>   
                    <td class="out"> $<%= prtax %> </td>
                </tr>
                <tr>
                    <td class="desc"> Pre-tax Pay: </td>   
                    <td class="out"> $<%= taxablePay %> </td>
                </tr>
                <tr>
                    <td class="desc"> Tax Amount: </td>   
                    <td class="out"> $<%= taxamnt %> </td>
                </tr>
                <tr>
                    <td class="desc"> Post-tax Pay: </td>   
                    <td class="out"> $<%= postpay %> </td>
                </tr>
                <tr>
                    <td class="desc"> Post-tax Deductions: </td>   
                    <td class="out"> $<%= potax %>  </td>
                </tr>
                <tr>
                    <td class="desc"> Net Pay: </td>   
                    <td class="out"> $<%= netpay %> </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
