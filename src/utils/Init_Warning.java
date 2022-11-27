package utils;

public class Init_Warning {
    public Init_Warning(String msg){
        throw new RuntimeException("[Unsuggested Behaviour]:Init {} without paras".formatted(msg));
    }
}
