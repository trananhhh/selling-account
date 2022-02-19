/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author _trananhhh
 */
public class Item {
    private Plan plan;
    private int duration, bonus;

    public Item() {
    }

    public Item(Plan plan, int duration) {
        this.plan = plan;
        this.duration = duration;
        if(duration == 6)   this.bonus = 1;
        if(duration == 12)   this.bonus = 3;
    }

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public int getBonus() {
        return bonus;
    }
}
