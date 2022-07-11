<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
 
 
<html>
    <head>    
        <title>Faculty Registration Form</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
 
    </head>    
    <%
    String msg = "";
    String color = "";
    Connection conn;  
   if(request.getMethod().compareToIgnoreCase("post")==0)
   {
   try
   {
   String roomno = request.getParameter("roomno");
      String roomtype = request.getParameter("roomtype");
      String bedtype = request.getParameter("bedtype");
      String amount = request.getParameter("amount");
     
      // database name is gchotel and table name is room
      
      Class.forName("com.mysql.jdbc.Driver");
                                conn = DriverManager.getConnection("jdbc:mysql://localhost/gchotel","root","cdac");
     
      String query = "INSERT INTO `room`(`roomno`, `roomtype`, `bedtype`, `amount`) VALUES (?,?,?,?)";
     
      PreparedStatement pst = conn.prepareStatement(query);
      System.out.println(query);
     
      pst.setString(1, roomno);
      pst.setString(2, roomtype);
      pst.setString(3, bedtype);
      pst.setString(4, amount);
     
      pst.executeUpdate();
     
      color = "green";
      msg = "Room Added Succesfully";
     
     
   }catch(Exception ex){
   ex.printStackTrace();
   color = "red";
   msg = "Error Occured";
   }
   }
    %>    
    
    <body>
        <div class="container">
    <div class="form-group col-12 p-0">
         <h4 style="color:<%= color %>"><%= msg %></h4>
</div>
        <form id="form" method="post" action="index.jsp" class="form-horizontal">
            
         <div class="form-group">
          <div  class="col-sm-12">
                   <h2 style="text-align: center; color: blue">Hotel Room Details</h2>
           </div>
            </div>
            
            <hr/>
                    <div class="row">
                      
                        <div class="form-group col-md-6">
                           <label>Room no</label>
       <input type="text" name="roomno" class="form-control" id="roomno" placeholder="roomno">
                        </div>
                        
                        <div class="form-group col-md-6">
                           <label for="address">Room Type</label>
                            <select class="form-control" id="roomtype" name="roomtype"
                              placeholder="Project Status" required>
                             <option value="">Please Select</option>
                             <option>A/C</option>
                              <option>NON A/C</option>
                            </select>
                        </div>
                        
                        <div class="form-group col-md-6">
                           <label for="address">Bed Type</label>
                            <select class="form-control" id="bedtype" name="bedtype"
                              placeholder="Project Status" required>
                             <option value="">Please Select</option>
                             <option>Single</option>
                              <option>Double</option>
                            </select>
                        </div>
                        
                          <div class="form-group col-md-6">
                           <label>Amount</label>
       <input type="text" name="amount" class="form-control" id="amount" placeholder="amount">
                        </div>
                        
                         <div class="form-group col-md-6" align="center">
 
                        <Button class="btn btn-success" style="width: 80px;">Submit</Button>
              
                        </div>
            </div>
            
        </form>
      
    </body>
</html>