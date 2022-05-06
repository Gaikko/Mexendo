import java.util.Scanner;
public class App{
    public static void main(String[] args) {
        System.out.println("Olá Mundo!");
        System.out.println("Somar!");
        Calculadora calc = new Calculadora();
        Scanner scn = new Scanner(System.in);
        System.out.println("Digite o Primeiro Número: ");
        double n1 = scn.nextDouble();
        System.out.println("Digite o Segundo Número: ");
        double n2 = scn.nextDouble();
        double soma = calc.somar(n1, n2);
        System.out.println("A Soma de " + n1 +" + "+ n2 +" = " + soma);
        scn.close();
    }
}