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
import java.util.Random;
import model.Account;
import model.Plan;

/**
 *
 * @author _trananhhh
 */
public class AccountsDAO extends DBContext{
    public List<Account> getAllAccounts(){
        List<Account> list = new ArrayList<>();
        String SQLCommand = "SELECT * FROM Accounts";
        try {
            PreparedStatement st = connection.prepareStatement(SQLCommand);
            ResultSet rs = st.executeQuery();
            while(rs.next()){                      
                int id              = rs.getInt(1);
                int planId          = rs.getInt(2);
                String account      = rs.getNString(3);
                String password     = rs.getNString(4);
                String date         = rs.getString(5);
                int status          = rs.getInt(6);
                int currentUsers    = rs.getInt(7);
                int capacity        = rs.getInt(8);
                list.add(new Account(id, planId, account, password, date, status, currentUsers));
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }
    public Account getAccountById(int xId){
        Account res = null;
        String SQLCommand = "SELECT * FROM Accounts where id = " + xId;
        try {
            PreparedStatement st = connection.prepareStatement(SQLCommand);
            ResultSet rs = st.executeQuery();
            while(rs.next()){                   
                int id              = rs.getInt(1);
                int planId          = rs.getInt(2);
                String account      = rs.getNString(3);
                String password     = rs.getNString(4);
                String date         = rs.getString(5);
                int status          = rs.getInt(6);
                int currentUsers    = rs.getInt(7);
                int capacity        = rs.getInt(8);
                res = new Account(id, planId, account, password, date, status, currentUsers);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return res;
    }
    
    public int generateAccount(int planId){
        Random generator = new Random(); 
        String res = "@gmail.com";
        for(int i = 0; i < 10; i++)
            res = ((generator.nextInt() % 10 + 10) % 10) + res;
        return ;
    }
    
    public int getAccountAvailable(int planId){
        Account res = null;
        String SQLCommand = "SELECT id FROM Accounts where Capacity - currentUsers > 0";
        
        try {
            PreparedStatement st = connection.prepareStatement(SQLCommand);
            ResultSet rs = st.executeQuery();
            if(rs.next()){                   
                int id              = rs.getInt(1);
                SQLCommand = "UPDATE Accounts SET currentUsers = currentUsers + 1 WHERE ID = " + id;
                st = connection.prepareStatement(SQLCommand);
                rs = st.executeQuery();
                return id;
            }
            else
                return generateAccount(planId);
        } catch (Exception e) {
            System.err.println(e);
        }
        return -1;
    }
    
    public static void main(String[] args) {
        AccountsDAO ad = new AccountsDAO();
//        List<Account> list = ad.getAllAccounts();
//        System.out.println(list.get(0).getAccount());
        ad.generateAccount();
    }
}
