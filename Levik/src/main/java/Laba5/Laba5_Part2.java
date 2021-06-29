/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Laba5;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 *
 * @author Levik
 */
public class Laba5_Part2 {
    private int modelsNumber;
    private LinkedList<Model> list;
    
    public Laba5_Part2(int modelsNumber)
    {
        this.modelsNumber = modelsNumber;
        list = new LinkedList<Model>();
    }
    
    public void InitList()
    {
        Random rd = new Random();
        list.clear();
        for (int i = 0; i < modelsNumber; i++)
            list.add(new Model("model #" + i, (Integer)rd.nextInt(12876)));
    }
    
    public String DisplayList()
    {
        String s = "";
        Iterator<Model> itr = list.iterator();
        for (int i = 0; itr.hasNext(); i++) {
            s += i + ". " + itr.next() + "<br/>";
        }
        return s;
    }
    
    public int IndexOf(Model find)
    {
        int result = -1;
        for (int i = 0; i < modelsNumber; i++)
            if (list.get(i).equals(find))
                return i;
        return result;
    }
    
    public int IndexOf(String find)
    {
        int result = -1;
        for (int i = 0; i < modelsNumber; i++)
            if (list.get(i).getStringField().equals(find))
                return i;
        return result;
    }
    
    public int IndexOf(int find)
    {
        int result = -1;
        for (int i = 0; i < modelsNumber; i++)
            if (list.get(i).getIntField().equals(find))
                return i;
        return result;
    }
    
    public void SortByStringField()
    {
        ByStringComparer comparator = new ByStringComparer();
        int listLength = list.size();
        sort(list, 0, listLength - 1, (Comparator<Model>) comparator);
    }
    
    public void SortByShortField()
    {
        ByIntComparer comparator = new ByIntComparer();
        int listLength = list.size();
        sort(list, 0, listLength - 1, (Comparator<Model>) comparator);
    }
    
    void merge(List<Model> list, int l, int m, int r, Comparator<Model> comparator)
    {
        int n1 = m - l + 1;
        int n2 = r - m;
 

        List<Model> L = new ArrayList<>();
        List<Model> R = new ArrayList<>();

        for (int i = 0; i < n1; ++i)
           L.add( list.get(l + i));
        for (int j = 0; j < n2; ++j)
             R.add( list.get(m + 1 + j));
 
        int i = 0, j = 0;
 
        int k = l;
        while (i < n1 && j < n2) {
            if(comparator.compare(L.get(i), R.get(j)) <= 0){
                list.set(k, L.get(i));
                i++;
            }
            else {
                list.set(k, R.get(j));
                j++;
            }
            k++;
        }
 
        while (i < n1) {
            list.set(k, L.get(i));
            i++;
            k++;
        }
 
        while (j < n2) {
            list.set(k, R.get(j));
            j++;
            k++;
        }
    }
    
    void sort(List<Model> list, int l, int r, Comparator<Model> comparator)
    {
        if (l < r) {
            int m =l+ (r-l)/2;
 
            sort(list, l, m, comparator);
            sort(list, m + 1, r, comparator);
 
            merge(list, l, m, r, comparator);
        }
    }
}
