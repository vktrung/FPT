/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class Shipper2 {
    private int account_id;
    private int number1;
    private int number2;

    public Shipper2() {
    }

    public Shipper2(int account_id, int number1, int number2) {
        this.account_id = account_id;
        this.number1 = number1;
        this.number2 = number2;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public int getNumber1() {
        return number1;
    }

    public void setNumber1(int number1) {
        this.number1 = number1;
    }

    public int getNumber2() {
        return number2;
    }

    public void setNumber2(int number2) {
        this.number2 = number2;
    }

    @Override
    public String toString() {
        return "Shipper2{" + "account_id=" + account_id + ", number1=" + number1 + ", number2=" + number2 + '}';
    }
    
    
}