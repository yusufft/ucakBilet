<%-- 
    Document   : yonetici_uye
    Created on : 17.Oca.2022, 00:13:08
    Author     : yusuf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataBase.dataBase" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>YÖNETİCİ</title>
        <link rel="stylesheet" href="Styles/yonetici_uye.css" type="text/css"/>

</head>
<body>
    
    
    <div class ="baslik"></div>

    <center>
        <div class="a_baslik">
            <p  class="slogan">KULLANICI KONTROL PANELİ</p>
        </div>
    </center>
        
    <form action="index.jsp">
        <button id="logout" type="submit">ÇIKIŞ</button>
    </form>
        
       <img class="logo" src="logo.png" alt="logo" width="15%" height="10%">
       
    
        <img class="resim" src="ucak.jpg" alt="ortaimg" width="100%" height="70%"/>
       
        <div class="bilet">
        
       <table id="personel_tablo">
                  <tr>
                      
                      <th>AD</th>
                      <th>SOYAD</th>
                      <th>TELEFON</th>
                      <th>EMAIL</th>
                      <th>SIFRE</th>
                      <th>DÜZENLE</th>
                  </tr>
              <%
           try{   
               dataBase dbveri = new dataBase();
             ResultSet result = dbveri.kullaniciGetir();
              
                while (result.next()) {
                    
                    
                        out.print("<tr>");
                        out.print("<td>" + result.getString("ad")+"</td>" );
                        out.print("<td>" + result.getString("soyad")+"</td>");
                        out.print("<td>" + result.getString("telefon")+"</td>");
                        out.print("<td>" + result.getString("email")+"</td>");
                        out.print("<td>" + result.getString("sifre1")+"</td>");
                       %>  
                       <td><a href="yonetici_uye.jsp?idd=<%= result.getString("id")%>">Bilgileri Sil</a></td>
                       <%
                        out.print("<tr>");
                        
                    }
                       String sill = request.getParameter("idd");
                       if(sill != null){
                        dbveri.kullanicisil(Integer.valueOf(sill));
                        response.sendRedirect("yonetici_uye.jsp");
                       }
                     
                    }catch(Exception e){

                        System.out.println("HATA : "+ e);

                    }
              
              
              
              %>
              
              
              
              </table>
               
    

        </div>

  
        <div class="cizgi"></div>

        <center>
            <form action="yonetici.jsp">
              <div class="alt"> 
                <button class="alt_btn" type="input">BİLET KONTROL PANELİNE GİT</button>
              </div>
            </form>
        </center>

</body>
</html>
