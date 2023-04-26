import java.util.Scanner ;

public class Bitwiseopreator

{
public static void main(String args[])
{
int a,b;
try (Scanner sc = new Scanner (System.in)) {
    System.out.println("Enter the first value");
    a= sc.nextInt(); 
    System.out.println("Enter the second value");
    b= sc.nextInt();
}
int c=0;

c=a&b;
System.out.println("Value for AND opreator" +c);

c=a|b;
System.out.println("Value for OR opreator =" +c);

c=a^b;
System.out.println("Value for XOR opreator =" +c);

c=~b;
System.out.println("Value for NOR opreator =" +c);

c=a<<2;
System.out.println("Value for LEFT SHIFT opreator =" +c);

c=b>>2;
System.out.println("Value for RIGHT SHFT opreator =" +c);

c=b>>>3;
System.out.println("Value for CIRCULAR SHIFT opreator =" +c);
}
}