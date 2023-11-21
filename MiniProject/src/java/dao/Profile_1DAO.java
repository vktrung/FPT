/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author DanPC
 */
public class Profile_1DAO extends DBContext{
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public void UpdateAccount(int account_id, int role_id){
        String updateAccountSql = "UPDATE Account SET  role_id =?  WHERE account_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(updateAccountSql);
            ps.setInt(1, role_id);
            ps.setInt(2, account_id);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void updateProfile(String full_name, String image, String phone, int gender, String dob, String address, String email, int profile_id) {
        String updateProfileSql = "UPDATE Profile SET full_name = ?, image = ?, phone = ?, gender = ?, dob = ?, address = ?, email = ? WHERE profile_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(updateProfileSql);
            ps.setString(1, full_name);
            ps.setString(2, image);
            ps.setString(3, phone);
            ps.setInt(4, gender);
            ps.setString(5, dob);
            ps.setString(6, address);
            ps.setString(7, email);
            ps.setInt(8, profile_id);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}