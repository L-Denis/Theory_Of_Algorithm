/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Laba5;

import java.util.Comparator;

/**
 *
 * @author Levik
 */
public class ByIntComparer implements Comparator<Model> {
    @Override
    public int compare(Model a, Model b){
      return a.getIntField().compareTo(b.getIntField());
    }
}
