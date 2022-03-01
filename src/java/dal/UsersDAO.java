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
                String username  = rs.getNString(1);
                String password  = rs.getNString(2);
                String email     = rs.getNString(3);
                String phone     = rs.getNString(4);
                int role         = rs.getInt(5);
                list.add(new User(username, password, email, phone, role));
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }
    
    
    public List<User> getUsersByKey(String key){
        List<User> list = new ArrayList<>();
        String SQLCommand = "SELECT * FROM Users WHERE Username like ? OR Password Like ? OR Phone like ?";
        try {
            PreparedStatement st = connection.prepareStatement(SQLCommand);
            st.setString(1, '%' + key + '%');
            st.setString(2, '%' + key + '%');
            st.setString(3, '%' + key + '%');
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                String username  = rs.getNString(1);
                String password  = rs.getNString(2);
                String email     = rs.getNString(3);
                String phone     = rs.getNString(4);
                int role         = rs.getInt(5);
                list.add(new User(username, password, email, phone, role));
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
//        List<User> list = pd.getUsersByKey("a");
        List<User> list = pd.getUsersByKey("a");
        System.out.println(list.get(0).getUsername());
    }
}
