/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Laba3;

import java.util.Random;

/**
 *
 * @author Levik
 */
public class Calculate {
    int[] array;
    int K = 0;

    public float InitArray(float k) {
        K = (int) k;
        array = new int[K];
        for (int i = 0; i < array.length; i++) {
            array[i] = (int) (Math.random()*200 - 100);
        }
        return k;
    }

    public int FindNegativeLenght() {
        int lenghtneg = 0;
        for (int i = 0; array[i] < 0; i++) {
            lenghtneg++;
        }
        return lenghtneg;

    }
}
