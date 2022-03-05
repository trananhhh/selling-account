/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Billing;
import model.User;

/**
 *
 * @author _trananhhh
 */
public class BillingsDAO extends DBContext{
    public List<Billing> getAllBillings(){
        List<Billing> list = new ArrayList<>();
        String SQLCommand = "SELECT * FROM Billings";
        try {
            PreparedStatement st = connection.prepareStatement(SQLCommand);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                int id = rs.getInt(1);
                String username = rs.getNString(2);
                int planId = rs.getInt(3);
                int accountId = rs.getInt(4);
                String date = rs.getString(5);
                int duration = rs.getInt(6);
                int price = rs.getInt(7);
                list.add(new Billing(id, username, planId, accountId, date, duration, price));
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }
    
    public List<Billing> getListByPage(List<Billing> list,int start,int end){
        List<Billing> arr = new ArrayList<>();
        for(int i = start; i < end; i++){
            arr.add(list.get(i));
        }
        return arr;
    }

    
    public Billing getBillingsByID(String xCode) {
        String xSql = "select * from Billings where username = " + xCode;
        Billing res = null;
        
        try {
         PreparedStatement ps = connection.prepareStatement(xSql);
         ResultSet rs = ps.executeQuery();
         
         if(rs.next()) {
            int id = rs.getInt(1);
            String username = rs.getNString(2);
            int planId = rs.getInt(3);
            int accountId = rs.getInt(4);
            String date = rs.getString(5);
            int duration = rs.getInt(6);
            int price = rs.getInt(7);
            res = new Billing(id, username, planId, accountId, date, duration, price);
            }
          rs.close();        
          ps.close();
         }
         catch(Exception e) {
           e.printStackTrace();
         }       
        return res;
    }
    
    public List<Billing> getBillingsByKey(String key){
        List<Billing> list = new ArrayList<>();
        String SQLCommand = "SELECT * FROM Billings WHERE id = ? "
                + "OR username like '%" + key + "%' "
                + "OR planId = "   + key
                + "OR accountId = "   + key
                + "OR date like '%"     + key + "%' "
                + "OR duration = "   + key
                + "OR price = "   + key;
        try {
            PreparedStatement st = connection.prepareStatement(SQLCommand);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                int id = rs.getInt(1);
                String username = rs.getNString(2);
                int planId = rs.getInt(3);
                int accountId = rs.getInt(4);
                String date = rs.getString(5);
                int duration = rs.getInt(6);
                int price = rs.getInt(7);
                list.add(new Billing(id, username, planId, accountId, date, duration, price));
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }
    
    public static void main(String[] args) {
        BillingsDAO bd = new BillingsDAO();
        List<Billing> list = bd.getAllBillings();
        System.out.println(list.get(0).getUsername());
    }
}
