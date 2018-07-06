/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package informations;

import connexion.connexion;
import java.sql.*;

/**
 *
 * @author germinator
 */
public class produit {
    
    connexion db = new connexion();
    String sql = "";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public produit() {
        
    }
    
    public int inserer(String categorie, String nom, String caracteristiques, String quantite, String prix) {
        
        int i = 0;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            
            sql = "SELECT * FROM categorie WHERE categorie.nom='"+categorie+"'";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                i = rs.getInt(1);
            }
            
            sql = "INSERT INTO produit(nom, caracteristiques, prix, quantite, categorie) VALUES(nom='"+nom+"', caracteristiques='"+caracteristiques+"', prix='"+prix+"', quantite='"+quantite+"', categorie='"+i+"')";
            
            pst = con.prepareStatement(sql);
            System.out.println(nom+" "+caracteristiques+" "+prix+" "+quantite+" "+categorie+" "+i);
            pst.executeUpdate();
            
            System.out.println("Enregistrement du produit éffectué");
            
            con.close();
            return 1;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return 0;
        }
        
    }
    
}
