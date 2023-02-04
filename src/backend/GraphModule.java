package backend;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import utils.Edge;
public class GraphModule<T> {
    public LinkedHashSet<GraphNode<T>> Variables;
    public LinkedHashSet<Edge<GraphNode<T>>> Mvs;
    public GraphModule(){
        Variables=new LinkedHashSet<>();
        Mvs=new LinkedHashSet<>();
    }
    public void Add_Reg(GraphNode<T> reg){
        Variables.add(reg);
    }
    public void Add_Regs(LinkedHashSet<GraphNode<T>> regs){
        Variables.addAll(regs);
    }
    public void add_edge(GraphNode<T> from,GraphNode<T> to){
        if(from==to)return;//does not allow self-cycle to exist
        from.Add_Adj(to);
    } 
    public void add_doubleEdge(GraphNode<T> from,GraphNode<T> to){
        if(from==to)return;
        from.Add_Adj(to);
        to.Add_Adj(from);
    }
    public void add_mv(GraphNode<T> from,GraphNode<T> to){
        if(from==to)return;
        Mvs.add(new Edge<GraphNode<T>>(from, to));
        Mvs.add(new Edge<GraphNode<T>>(to,from));
    }
}
