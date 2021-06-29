/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lab2;

import java.math.BigDecimal;
import java.math.RoundingMode;

/**
 *
 * @author Levik
 */
public class Calculate {

    public static float lab2equation(float x) {

        float _a = 6;
        float _b = - 1;
        float _c = - 7;
        float _d = 5;
        
        float numerator = (float)Math.log(_d * x);
        float denominator = (_a * (float)Math.pow(x, 2) + _b * x + _c);
        if(denominator == 0)
            return Float.MAX_VALUE;
        float result = (float)(numerator/denominator);
        BigDecimal bigDecimal = new BigDecimal(Float.toString(result));
        bigDecimal = bigDecimal.setScale(2, RoundingMode.HALF_UP);
        return bigDecimal.floatValue();
    }

}
