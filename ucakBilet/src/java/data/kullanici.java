package data;

import java.io.Serializable;

    public class kullanici implements Serializable {
        private String firstname;
        private String lastname;
        private String tc;
        private String phone_number;
        private String email;
        private String password1;
        private String password2;
        
        private String fiyat1;
        private String fiyat2; 
        private String fiyat3; 
        private String fiyat4; 
        
        public kullanici(){
            
        }
        
    public kullanici(String firstname, String lastname, String tc, String phone_number, String email, String password1, String password2){
        this.firstname=firstname;
        this.lastname=lastname;
        this.tc=tc;
        this.phone_number=phone_number;
        this.email=email;
        this.password1=password1;
        this.password2=password2;
    }   

    
    public kullanici(String fiyat1, String fiyat2,String fiyat3,String fiyat4 ){
        this.fiyat1= fiyat1;
        this.fiyat2= fiyat2;
        this.fiyat3= fiyat3;
        this.fiyat4= fiyat4;
    }
    
    
    
    
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getTc() {
        return tc;
    }

    public void setTc(String tc) {
        this.tc = tc;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
    }

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public String getFiyat1() {
        return fiyat1;
    }

    public void setFiyat1(String fiyat1) {
        this.fiyat1 = fiyat1;
    }

    public String getFiyat2() {
        return fiyat2;
    }

    public void setFiyat2(String fiyat2) {
        this.fiyat2 = fiyat2;
    }

    public String getFiyat3() {
        return fiyat3;
    }

    public void setFiyat3(String fiyat3) {
        this.fiyat3 = fiyat3;
    }

    public String getFiyat4() {
        return fiyat4;
    }

    public void setFiyat4(String fiyat4) {
        this.fiyat4 = fiyat4;
    }
    
    
    
    
    
    
    
}



