/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package knu.fit.ist.TA_1;

/**
 *
 * @author Levik
 */
public class Lab1 {

    private int _score;

    public Lab1() {
        _score = 100;
    }

    public Lab1(int score) {
        _score = score;
    }

    public int getScore() {
        return _score;
    }

    public void setScore(int score) {
        _score = score;
    }

    @Override
    public String toString() {
        return "Lab1{" + "_score=" + _score + '}';
    }

    public void IncreaseScore(int value) {
        _score += value;
    }

    public void DecreaseScore(int value) {
        _score -= value;
    }
}
