package utils;

import ASM.asm_operand.Asm_Operand;

public class Edge<T> {
    public T from;
    public T to;  
    public Edge(T u,T v){
        from=u;
        to=v;
    }  
    @Override
    public boolean equals(Object o){
        return o instanceof Edge<?> e&& e.from==from&&e.to==to;
    }
    @Override
    public int hashCode(){
        return from.hashCode()^to.hashCode();
    }
}
