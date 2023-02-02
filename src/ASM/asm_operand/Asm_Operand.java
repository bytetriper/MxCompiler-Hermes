package ASM.asm_operand;

import java.util.ArrayList;

import ASM.asm_inst.Asm_Inst;
import backend.GraphNode;

abstract public class Asm_Operand{
    public int size;
    public ArrayList<GraphNode<Asm_Inst>> UseList=new ArrayList<>();
    public GraphNode<Asm_Operand> Node;
    public Asm_Reg color;
    abstract public String To_String();
}