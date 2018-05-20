/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author haya
 */
public class User {
      
    private String firstname;
    private String password;

    public User(String firstname, String password) {
        this.firstname = firstname;
        this.password = password;
    }
    public User(){
        
    }
    public String getfirstName() {
        return firstname;
    }

    public void setfirstName(String firstname) {
        this.firstname = firstname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}

