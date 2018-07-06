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
public class utilisateurInsertion {
    
    connexion db = new connexion();
    String sqlCompte = "";
    String insertComptable = "";
    String insertCompte = "";
    Connection con;
    PreparedStatement pstComptable;
    PreparedStatement pstCompte;
    ResultSet rsCompte;
    
    public utilisateurInsertion() {
        
    }
    
    public int inserer(String droit, String nom, String prenom, String telephone, String email) {
        
        int i = 0;
        
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPwd());
            
            sqlCompte = "SELECT compte.id FROM compte ORDER BY id DESC LIMIT 1";
            pstCompte = con.prepareStatement(sqlCompte);
            rsCompte = pstCompte.executeQuery();
            while (rsCompte.next()) {
                System.out.println("Modification du compte éffectué0");
                i = rsCompte.getInt(1);
                System.out.println("Modification du compte éffectué1");
            }
            i++;
            
            insertComptable = "INSERT INTO compte VALUES("+i+", '"+nom+"', '"+prenom+"', '"+telephone+"', '"+email+"', 'user"+i+"', 'pass"+i+"')";
                    pstComptable = con.prepareStatement(insertComptable);
                    pstComptable.executeUpdate();
                    
            System.out.println("Modification du compte éffectué8");
            System.out.println(nom+" "+prenom+" "+telephone+" "+email+" "+droit);
            switch (droit) {
                case "Administration":
                    System.out.println("Modification du compte éffectué2");
                    insertCompte = "INSERT INTO administration(compte) VALUES("+i+")";
                    pstCompte = con.prepareStatement(insertCompte);
                    pstCompte.executeUpdate();
                    break;
                case "Achat":
                    System.out.println("Modification du compte éffectué3");
                    insertCompte = "INSERT INTO achat(compte) VALUES("+i+")";
                    pstCompte = con.prepareStatement(insertCompte);
                    pstCompte.executeUpdate();
                    break;
                case "Comptabilite":
                    System.out.println("Modification du compte éffectué4");
                    insertCompte = "INSERT INTO comptabilite(compte) VALUES("+i+")";
                    pstCompte = con.prepareStatement(insertCompte);
                    pstCompte.executeUpdate();
                    break;
                case "Magasin":
                    System.out.println("Modification du compte éffectué5");
                    insertCompte = "INSERT INTO magasin(compte) VALUES("+i+")";
                    pstCompte = con.prepareStatement(insertCompte);
                    pstCompte.executeUpdate();
                    System.out.println("Modification du compte éffectué10");
                    break;
                case "Vente":
                    System.out.println("Modification du compte éffectué6");
                    insertCompte = "INSERT INTO vente(compte) VALUES("+i+")";
                    pstCompte = con.prepareStatement(insertCompte);
                    pstCompte.executeUpdate();
                    break;
                default:
                    
                    break;
            }
          
            System.out.println("Enregistrement du compte éffectué");
            
            con.close();
            rsCompte.close();
            return i;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
            return i;
        }
        
    }
    
}
