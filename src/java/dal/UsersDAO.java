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
import model.User;

/**
 *
 * @author _trananhhh
 */
public class UsersDAO extends DBContext{
    public List<User> getAllUsers(){
        List<User> list = new ArrayList<>();
        String SQLCommand = "SELECT * FROM Users";
        try {
            PreparedStatement st = connection.prepareStatement(SQLCommand);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                int id           = rs.getInt(1);
                String username  = rs.getNString(2);
                String password  = rs.getNString(3);
                String email     = rs.getNString(4);
                String phone     = rs.getNString(5);
                int role         = rs.getInt(6);
                list.add(new User(id, username, password, email, phone, role));
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }
    
    public int checkLogin(String user, String pass){
        List<User> list = getAllUsers();
        for(User u : list){
            if(u.getUsername().equalsIgnoreCase(user)){
                if(u.getPassword().equals(pass))
                    return u.getRole();
                else
                    return -1;
            }
        }
        return -2;
    }
    
    public static void main(String[] args) {
        UsersDAO pd = new UsersDAO();
        List<User> list = pd.getAllUsers();
        System.out.println(list.get(1).getUsername());
        System.out.println(pd.checkLogin("userr", "1234"));
    }
}