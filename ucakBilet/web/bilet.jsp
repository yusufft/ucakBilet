<%-- 
    Document   : bilet
    Created on : 20.Oca.2022, 05:10:57
    Author     : yusuf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.dataBase" %>
<!DOCTYPE html>
<%
      dataBase db = new dataBase();
      
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="Styles/bilet.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    
    <div class ="baslik"></div>

        <div class="a_baslik">
            <p  class="slogan">Yeni ihtimallere bir uçak bileti mesafe...</p>
        </div>
        
    <form action="index.jsp">
        <button id="logout" type="submit">ÇIKIŞ</button>
    </form>
        
       <img class="logo" src="logo.png" alt="logo" width="15%" height="10%">
      
    
        <img class="resim" src="ucak.jpg" alt="ortaimg" width="100%" height="70%"/>
            
    

        <div class="bilet">
    
   <%        
            
             
        HttpSession oturum = request.getSession();
         HttpSession bilgi = request.getSession();
        String fiyat =oturum.getAttribute("fiyat").toString();
        String durum = oturum.getAttribute("durum").toString();
        String saat1="";
        String saat2="";
        String rota="";
        String tarih= bilgi.getAttribute("tarih").toString();
        String yolcu =bilgi.getAttribute("yolcu").toString();
        if(durum.equals("1")){
            saat1= "09.00";
            saat2 = "10.20";
            rota="İSTANBUL----------->SİVAS";
        }else if(durum.equals("2")){
            saat1= "21.30";
            saat2 = "22.50";
            rota="İSTANBUL----------->SİVAS";
        }else if(durum.equals("3")){
            saat1= "10.00";
            saat2 = "11.20";
            rota="SİVAS----------->İSTANBUL";
        }else if(durum.equals("4")){
            saat1= "16.30";
            saat2 = "17.50";
            rota="SİVAS----------->İSTANBUL";
        }
        
        out.print("<p class='saat1'>" +saat1+ "</p>");
        out.print("<p class='saat2'>" +saat2+ "</p>");
        out.print("<p class='rota'>" +rota+ "</p>");
        out.print("<p class='fiyat'>" +fiyat+ "</p>");
        out.print("<p class='tarih'>" +tarih+ "</p>");
        out.print("<p class='yolcu'>" +yolcu+ "</p>");
   %> 
   <form action="">
       <input class="onay" type="submit" value="ONAYLA" name="onay" />

   </form> 
   
   <form action="kullanici.jsp">
       <input class="geri" type="submit" value="GERİ"  />

   </form> 
   
   <%
       String onay = request.getParameter("onay");
       if(onay !=null){
          response.sendRedirect("onay.jsp");
           
       }
       %>
   </div>
    <div class="cizgi"></div>

      <div class="alt">
        <h1>Yepyeni bir hikâye için şimdi bir uçak bileti alın</h1>
      </div>    
    
    
</body>
</html>
