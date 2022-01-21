<%-- 
    Document   : kullanici
    Created on : 15.Oca.2022, 00:53:12
    Author     : yusuf
--%>

<%@page import="javax.xml.ws.Response"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BİLET AL!</title>
        <link rel="stylesheet" href="Styles/kullanici.css" type="text/css"/>
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
      

        <div class="main">
    
            <img class="resim" src="ucak.jpg" alt="ortaimg" width="100%" height="100%" />
            
        </form>
        

<form action="">   
        <div class="bilet">

        <div class="nereden">
      <p class="p_nereden">Nereden</p>
      <select name="sehir" id="selector">
        <option selected><--Sehir Seçiniz--></option>
        <option>İstanbul, Türkiye SAW (Sabiha Gökçen Havalimanı)</option>
        <option>Sivas, Türkiye VAS (Nuri Demirağ Havalimanı)</option>
      </select>
    </div>
  
     <div class="nereye">
      <p class="p_nereye">Nereye</p>
      <select name="sehir1" id="selector">
        <option selected><--Sehir Seçiniz--></option>
        <option>İstanbul, Türkiye SAW (Sabiha Gökçen Havalimanı)</option>
        <option>Sivas, Türkiye VAS (Nuri Demirağ Havalimanı)</option>
      </select>
    </div>
            
    <div class="tarih"> 
           <p class="p_tarih">Tarih</p>
           <input type="date" id="date" name="tarih">
    </div>
           
    <div class="yolcu">
        <p class="p_yolcu">Yolcu</p>
        <select name="yolcu" id="selector">
          <option selected><--Yolcu Seçiniz--></option>
          <option>Öğrenci</option>
          <option>Yetişkin</option>
        </select>
      </div>
        </div>
        
        
        <input class="ara" name="bul" type="submit" value="UÇAK BİLETİ BUL" >
    </form>
        
        <div class="cizgi"></div>
       
       
        <%
             HttpSession bilgi = request.getSession(true);
              String bul = request.getParameter("bul");
              
              String sehir;
              String sehir1;
              String tarih;
              String yolcu;
              if(bul !=null){
                  
                 tarih = request.getParameter("tarih");
                 System.out.println("tar : "+tarih);
                 yolcu = request.getParameter("yolcu");
                 System.out.println("yolcu :"+yolcu);
                  bilgi.setAttribute("tarih", tarih);
                  bilgi.setAttribute("yolcu", yolcu);
                  sehir = request.getParameter("sehir");
                  sehir1 = request.getParameter("sehir1"); if(sehir.equals(sehir1)){
                      
                      response.sendRedirect("kullanici.jsp");
                      out.print("<p>"+"Şehir seçimleri aynı olamaz!"+"</p>");
                  } 
                  else if(sehir.equals("Sivas, Türkiye VAS (Nuri Demirağ Havalimanı)")&& sehir1.equals("İstanbul, Türkiye SAW (Sabiha Gökçen Havalimanı)") ){
                      response.sendRedirect("sivas.jsp");
                  }else if(sehir.equals("İstanbul, Türkiye SAW (Sabiha Gökçen Havalimanı)")&& sehir1.equals("Sivas, Türkiye VAS (Nuri Demirağ Havalimanı)")  ){
                     response.sendRedirect("istanbul.jsp");
                  }else{
                      response.sendRedirect("kullanici.jsp");
                  }
                  
              }


                %>
        
        
        
      <div class="alt">
        <h1>Yepyeni bir hikâye için şimdi bir uçak bileti alın</h1>
      </div>
</body>
</html>
