/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Aver
 */
public class ShipDao extends DBContext {

    public int addInfo(int uid, int oid, String fullname, String phone, String address, float price) {
        try {
            String sql = "INSERT INTO [dbo].[Ship] VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,1)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, uid);
            stm.setInt(2, oid);
            stm.setString(3, phone);
            stm.setString(4, address);
            stm.setString(5, fullname);
            stm.setFloat(6, price);
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
        return 1;
    }

//    public static void main(String args[]) {
//        ShipDao s = new ShipDao();
//        s.addInfo(5, 9, "fullname", "phone", "address", 12);
//        s.addInfo(id, oid, name, phone, address, tp);
}
