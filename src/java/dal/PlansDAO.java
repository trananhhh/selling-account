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
import model.Plan;

/**
 *
 * @author _trananhhh
 */
public class PlansDAO extends DBContext{
    public List<Plan> getAllPlans(){
        List<Plan> list = new ArrayList<>();
        String SQLCommand = "SELECT * FROM Plans";
        try {
            PreparedStatement st = connection.prepareStatement(SQLCommand);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                int id              = rs.getInt(1);
                String name         = rs.getNString(2);
                String description  = rs.getNString(3);
                int price           = rs.getInt(4);
                String url          = rs.getNString(5);
                int capacity        = rs.getInt(6);
                res = new Plan(id, name, description, price, url, capacity);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }
    public Plan getPlanById(int xId){
        Plan res = new Plan();
        String SQLCommand = "SELECT * FROM Plans where id = " + xId;
        try {
            PreparedStatement st = connection.prepareStatement(SQLCommand);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                int id              = rs.getInt(1);
                String name         = rs.getNString(2);
                String description  = rs.getNString(3);
                int price           = rs.getInt(4);
                String url          = rs.getNString(5);
                int capacity        = rs.getInt(6);
                res = new Plan(id, name, description, price, url, capacity);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return res;
    }
    public static void main(String[] args) {
        PlansDAO pd = new PlansDAO();
        List<Plan> list = pd.getAllPlans();
        System.out.println(list.get(1).getUrl());
    }
}
