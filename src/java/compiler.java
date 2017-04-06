import java.io.*;

public class compiler {

  public static String printLines(String name, InputStream ins) throws Exception {
    String line = null, output="";
    BufferedReader in = new BufferedReader(
        new InputStreamReader(ins));
    while ((line = in.readLine()) != null) {
        System.out.println(name + " " + line);
        output+=name + " " + line + "\n";
    }
    return output;
  }

  public static String runProcess(String command) throws Exception {
    String output="";
    Process pro = Runtime.getRuntime().exec(command);
    output+=printLines("", pro.getInputStream())+"\n";
    output+=printLines(command + " stderr:", pro.getErrorStream())+"\n";
    pro.waitFor();
    return(output);
    //System.out.println(command + " exitValue() " + pro.exitValue());
  }

  public static void main(String[] args) {
    try {
      //runProcess("javac Simple.java");
      //runProcess("java Simple");
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}