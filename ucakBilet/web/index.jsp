<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bilet Al!</title>
        <link rel="stylesheet" href="Styles/index.css" type="text/css" /> 
</head>
<body>
    <div class ="baslik"></div>

        <div class="a_baslik">
            <p  class="slogan">Yeni ihtimallere bir uçak bileti mesafe...</p>
        </div>
        
        
       <img class="logo" src="logo.png" alt="logo" width="15%" height="10%">

       <img class="logo1" src="logo.png" alt="logo1" width="15%" height="10%">
              

        <div class="main">
    
            <img class="resim" src="ucak.jpg" alt="ortaimg" width="100%" height="100%" />
            
        </div>
        
        <div class="oturum">
            <div class="d-iç">
        
                <form action="yonetici_gir.jsp" method="get">
                    <input id="admin_btn" type="submit" value="YÖNETİCİ GİRİŞİ" />
                </form>

                <form action="oturum_ac.jsp" method="get">
                    <input  id="user_btn" type="submit" value="OTURUM AÇ" />
                </form>

                <form action="kaydol.jsp" method="get">
                    <input  id="kayit_btn" type="submit" value="KAYDOL" />
                </form>
    
            </div>
        </div>

        <div class="cizgi"></div>

      <div class="alt">
        <h1>Yepyeni bir hikâye için şimdi bir uçak bileti alın</h1>
      </div>
</body>
</html>