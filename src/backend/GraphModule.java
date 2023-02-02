package backend;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import utils.Edge;
public class GraphModule<T> {
    public LinkedHashSet<Edge<GraphNode<T>>> Edges;
    public LinkedHashSet<GraphNode<T>> Variables;
    public LinkedHashSet<Edge<GraphNode<T>>> Mvs;
    public GraphModule(){
        Edges=new LinkedHashSet<>();
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
        Edges.add(new Edge<GraphNode<T>>(from, to));//will conflict?
        from.Add_Adj(to);
    } 
    public void add_doubleEdge(GraphNode<T> from,GraphNode<T> to){
        Edges.add(new Edge<GraphNode<T>>(from, to));//will conflict?
        Edges.add(new Edge<GraphNode<T>>(to, from));
        from.Add_Adj(to);
        to.Add_Adj(from);
    }
    public void add_mv(GraphNode<T> from,GraphNode<T> to){
        Mvs.add(new Edge<GraphNode<T>>(from, to));
        Mvs.add(new Edge<GraphNode<T>>(to,from));
    }
}
