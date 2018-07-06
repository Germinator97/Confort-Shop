/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package informations;

import connexion.connexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Asus R511L
 */
public class entreprise {
    
    connexion db = new connexion();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    
    public entreprise() {
        
    }
    
    public int informations(String pays, String ville, String nom, String postal, String adresse, String site, String telephone, String email) {
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            
            sql = "UPDATE entreprise SET nom='"+nom+"', pays='"+pays+"', ville='"+ville+"', adresse='"+adresse+"', postal='"+postal+"', telephone='"+telephone+"', email='"+email+"', site='"+site+"' WHERE entreprise.id=1";
            pst = con.prepareStatement(sql);
            pst.executeUpdate();
            
            System.out.println("Modification des informations éffectué");
            con.close();
            return 1;
        }
        
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return 0;
        }
}
}