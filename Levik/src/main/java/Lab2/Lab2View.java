/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lab2;

import java.text.DecimalFormat;
import org.springframework.stereotype.Service;

/**
 *
 * @author Levik
 */
@Service
public class Lab2View {

    private Calculate calculate;

    public Lab2View() {
        calculate = new Calculate();
    }

    public String ValidateAndCalculate(String arg) {
        try {
            float x = Float.parseFloat(arg);
            if (x < 0) {
                return "Argumnet not in the domain of expression";
            }
            Float result = calculate.lab2equation(x);
            return result == Float.MAX_VALUE ? "Division by 0" : result.toString();
        } catch (Exception e) {
            return "Argumant is not a number";
        }
    }
}
