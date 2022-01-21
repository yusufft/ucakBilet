<%-- 
    Document   : Yonetici
    Created on : 15.Oca.2022, 01:05:02
    Author     : yusuf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="data.kullanici" %>
<%@page import="DataBase.dataBase" %>
<!DOCTYPE html>
<%
      dataBase db = new dataBase();
      
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>YÖNETİCİ</title>
        <link rel="stylesheet" href="Styles/yonetici.css" type="text/css"/>
</head>
<body>
       <%
        
        Cookie [] cookies = request.getCookies();
   
        HttpSession oturum = request.getSession();
               String epostaa = "";
               boolean d = oturum.getAttribute("Ymail") != null;
               if(d){
                   epostaa =oturum.getAttribute("Ymail").toString();
               }
if(cookies != null){
    for(int i = 0; i < cookies.length; i++){
        if(cookies[i].getName().equals("mail")){
            epostaa = cookies[i].getValue();
            break;
        }
    }
}
    %>
    <div class ="baslik"></div>
        <center>
        <div class="a_baslik">
            <p  class="slogan">BİLET KONTROL PANELİ</p>
        </div>
        </center>
       <img class="logo" src="logo.png" alt="logo" width="15%" height="10%">
              
        <div class="d-iç">
        
            <form action="index.jsp">
                <button id="logout" type="submit">ÇIKIŞ</button>
            </form>
    
        </div>

        <div class="main">
    
            <img class="resim" src="ucak.jpg" alt="ortaimg" width="100%" height="100%" />
            
             <%!
             String fiyat1;
             String fiyat2;
             String fiyat3;
             String fiyat4;
             %>
             <%
              ResultSet result = db.fiyatlistesi();
              
                while (result.next()) {
                  fiyat1=  result.getString("fiyat1");
                  fiyat2=  result.getString("fiyat2");
                  fiyat3=  result.getString("fiyat3");
                  fiyat4=  result.getString("fiyat4");
                }
             %>
            
            
            
            
             
           
            
             <section id = "tablo">    
            
            <div class="bilet">
             <form>
                 <center>
                <table>
                    <tr>
                      <th>NEREDEN</th>
                      <th>NEREYE</th>
                      <th>SAAT</th>
                      <th>FİYAT</th>
                      <th>YENİ FİYAT</th>
                      <th>KAYDET</th>
                    </tr>
                    <tr>
                      <td>İSTANBUL</td>
                      <td>SİVAS</td>
                      <td>09:00 --> 10:20</td>
                   
                      <td><%out.print(fiyat1); %></td>
                      <td><input class="inp" name="fyt1"  type="text"></td>
                      <td><input class="btn" name="btn1" type="submit" value="KAYDET"></td>  
                        
                   

                      
                   
                    </tr>
                    <tr>
                        <td>İSTANBUL</td>
                        <td>SİVAS</td>
                        <td>21:30 --> 22:50</td>
                        <td><%out.print(fiyat2); %></td>
                  
                      <td><input class="inp" name="fyt2" type="text"></td>

                       
    </tr>
                    <tr>
                        <td>SİVAS</td>
                        <td>İSTANBUL</td>
                        <td>10:00 --> 11:20</td>
                        <td><%out.print(fiyat3); %></td>
                      

                        <td><input class="inp" name="fyt3" type="text"></td>
                     
                            
                    </tr>
                    <tr>
                        <td>SİVAS</td>
                        <td>İSTANBUL</td>
                        <td>16:30 --> 17:50</td>
                        
                        <td><%out.print(fiyat4); %></td>
                       
                        <td><input class="inp" name="fyt4" type="text"></td>
                         
                            
                       
                    </tr>
                </table>
                </center> 
             </form>
            </div>
        </section>  
            
            
            <div class="cizgi"></div>
            
            
            
    <center>
        
      <div class="alt">
         
          <p  class="a">Tekrardan Hoşgeldin : <% out.print(epostaa);  %></p> 
        
          <form action="yonetici_uye.jsp#tablo">
        <button class="alt_btn" type="submit">KULLANICI KONTROL PANELİNE GİT</button>
      
        </form> 
      </div>
  
    </center>
            
            <%
                
                
               String btn1 = request.getParameter("btn1");
              
               if(btn1 !=null){
                String fyt1 = request.getParameter("fyt1");
                String fyt2 = request.getParameter("fyt2");
                String fyt3 = request.getParameter("fyt3");
                String fyt4 = request.getParameter("fyt4");
                System.out.println(" degerler : "+ fyt1+ fyt2+fyt3+fyt4);
                kullanici kl =new  kullanici(fyt1, fyt2,fyt3, fyt4);
                db.fiyat_guncelle(kl);
                response.sendRedirect("yonetici.jsp");
               }
              

                

                %>
            
            
            
            
</body>
</html>
