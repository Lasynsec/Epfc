/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Labo08;

import seqint.SeqInt;
import seqint.SeqIntIterator;

/**
 *
 * @author herve
 */
public class Exercice13 {
     public static int nbrApparitionMaxValue(SeqInt s){
       SeqIntIterator it = s.iterator();
       
       int currentValue;
       int nbrApparition = 0;
     
       int theMax = it.next();
       while(it.hasNext()){
           currentValue = it.next();           
           if(currentValue >= theMax){
               theMax = currentValue;
               ++nbrApparition;
           }
       }
       return nbrApparition;
    }
    public static void main(String[] args) {
        SeqInt s = new SeqInt(1,12,3,6,9,12,12);
        
        System.out.println(nbrApparitionMaxValue(s));
    }
}
