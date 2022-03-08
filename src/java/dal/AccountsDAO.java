/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
                res = new Account(id, planId, account, password, date, status, currentUsers);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return res;
    }
    
    public int addAccount(int planId, String account, String password){
        /*
            PlanID INT NOT NULL,
            account nvarchar(500),
            password nvarchar(500),
            date DATE,
            Status int,
            currentUsers INT,
        */
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, +30);
        Date date = cal.getTime();
        String SQLCommand = "INSERT INTO Accounts VALUES (" + planId + ", '" + account + "', '" + password + "', '" + formatter.format(date).toString() + "'," + 1 + "," + 0 + ")";
        try {
            PreparedStatement st = connection.prepareStatement(SQLCommand);
            st.executeUpdate();
            SQLCommand = "SELECT ID FROM Accounts WHERE account = '" + account + "'";
            
            st = connection.prepareStatement(SQLCommand);
            
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return -1;
    }
    
    public int generateAccount(int planId){
        Random generator = new Random(); 
        String account = "@gmail.com";
        String pass = "";
        for(int i = 0; i < 10; i++)
            account = ((generator.nextInt() % 10 + 10) % 10) + account;
        for(int i = 0; i < 6; i++)
            pass = pass + ((generator.nextInt() % 10 + 10) % 10);
        System.out.println(account);
        System.out.println(pass);
        return addAccount(planId, account, pass);
    }
    
    public int getAccountAvailable(int planId){
        Account res = null;
        PlansDAO pd = new PlansDAO();
        String SQLCommand = "SELECT id FROM Accounts where Capacity - " + pd.getCapacity(planId) + " > 0";
        
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
        System.out.println(ad.generateAccount(1));
    }
}
