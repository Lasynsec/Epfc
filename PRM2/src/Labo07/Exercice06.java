/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Labo07;

import java.util.Scanner;
/**
 *
 * @author herve
 */
public class Exercice06 {
    
    public static int multiplication(int nbrOne, int nbrTwo){
        int result = 0;
        boolean resultIsnegative = false;
        int minus;
        
        if(nbrOne < 0 && nbrTwo >= 0){
            nbrOne = -nbrOne;
            resultIsnegative = true;
        }else if(nbrTwo < 0 && nbrOne >= 0){
            nbrTwo = -nbrTwo;
            resultIsnegative = true;
        }else if(nbrTwo < 0 && nbrOne < 0){
            nbrTwo = -nbrTwo;
            nbrOne = -nbrOne;
        }
        
        for(int count = 0; count < nbrOne; ++count){
            result += nbrTwo;
        }
        
        if(resultIsnegative){
            minus = -1;
        }else {
            minus = 1;
        }
        return minus * result;
    }
    
    public static int power(int coef, int exponent){
        int result = 1;
        int square;
         for(int count = 1; count < exponent; ++count){
            square = multiplication(coef, coef);
            result +=
        }
    }
    
    public static void main(String[] args) {
        
    }
    
}
