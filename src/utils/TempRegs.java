package utils;
import ASM.asm_operand.Asm_PhysicalReg;
import java.util.LinkedHashSet;
import backend.GraphNode;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg.RegName;
public class TempRegs {
    public Asm_PhysicalReg zero = new Asm_PhysicalReg(RegName.zero);
    public Asm_PhysicalReg ra = new Asm_PhysicalReg(RegName.ra);
    public Asm_PhysicalReg sp = new Asm_PhysicalReg(RegName.sp);
    public Asm_PhysicalReg gp = new Asm_PhysicalReg(RegName.gp);
    public Asm_PhysicalReg tp = new Asm_PhysicalReg(RegName.tp);
    public Asm_PhysicalReg t0 = new Asm_PhysicalReg(RegName.t0);
    public Asm_PhysicalReg t1 = new Asm_PhysicalReg(RegName.t1);
    public Asm_PhysicalReg t2 = new Asm_PhysicalReg(RegName.t2);
    public Asm_PhysicalReg t3 = new Asm_PhysicalReg(RegName.t3);
    public Asm_PhysicalReg t4 = new Asm_PhysicalReg(RegName.t4);
    public Asm_PhysicalReg t5 = new Asm_PhysicalReg(RegName.t5);
    public Asm_PhysicalReg t6 = new Asm_PhysicalReg(RegName.t6);
    public Asm_PhysicalReg s0 = new Asm_PhysicalReg(RegName.s0);
    public Asm_PhysicalReg s1 = new Asm_PhysicalReg(RegName.s1);
    public Asm_PhysicalReg s2 = new Asm_PhysicalReg(RegName.s2);
    public Asm_PhysicalReg s3 = new Asm_PhysicalReg(RegName.s3);
    public Asm_PhysicalReg s4 = new Asm_PhysicalReg(RegName.s4);
    public Asm_PhysicalReg s5 = new Asm_PhysicalReg(RegName.s5);
    public Asm_PhysicalReg s6 = new Asm_PhysicalReg(RegName.s6);
    public Asm_PhysicalReg s7 = new Asm_PhysicalReg(RegName.s7);
    public Asm_PhysicalReg s8 = new Asm_PhysicalReg(RegName.s8);
    public Asm_PhysicalReg s9 = new Asm_PhysicalReg(RegName.s9);
    public Asm_PhysicalReg s10 = new Asm_PhysicalReg(RegName.s10);
    public Asm_PhysicalReg s11 = new Asm_PhysicalReg(RegName.s11);
    public Asm_PhysicalReg a0 = new Asm_PhysicalReg(RegName.a0);
    public Asm_PhysicalReg a1 = new Asm_PhysicalReg(RegName.a1);
    public Asm_PhysicalReg a2 = new Asm_PhysicalReg(RegName.a2);
    public Asm_PhysicalReg a3 = new Asm_PhysicalReg(RegName.a3);
    public Asm_PhysicalReg a4 = new Asm_PhysicalReg(RegName.a4);
    public Asm_PhysicalReg a5 = new Asm_PhysicalReg(RegName.a5);
    public Asm_PhysicalReg a6 = new Asm_PhysicalReg(RegName.a6);
    public Asm_PhysicalReg a7 = new Asm_PhysicalReg(RegName.a7);
    public LinkedHashSet<GraphNode<Asm_Operand>> CallerSaved = new LinkedHashSet<>() {
        {
            add(ra.Node);
            add(sp.Node);
            add(gp.Node);
            add(tp.Node);
            add(t0.Node);
            add(t1.Node);
            add(t2.Node);
            add(t3.Node);
            add(t4.Node);
            add(t5.Node);
            add(t6.Node);
            add(a0.Node);
            add(a1.Node);
            add(a2.Node);
            add(a3.Node);
            add(a4.Node);
            add(a5.Node);
            add(a6.Node);
            add(a7.Node);
        }
    };
    public LinkedHashSet<GraphNode<Asm_Operand>> CalleeSaved = new LinkedHashSet<>() {
        {
            add(s0.Node);
            add(s1.Node);
            add(s2.Node);
            add(s3.Node);
            add(s4.Node);
            add(s5.Node);
            add(s6.Node);
            add(s7.Node);
            add(s8.Node);
            add(s9.Node);
            add(s10.Node);
            add(s11.Node);
        }
    };
}
