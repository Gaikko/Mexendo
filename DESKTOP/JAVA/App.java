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
        double sub = calc.subtrair(n1, n2);
        System.out.println("A Subtração de " + n1 +" - "+ n2 +" = " + sub);
        double divi = calc.dividir(n1, n2);
        System.out.println("A Divisão de " + n1 +" / "+ n2 +" = " + divi);
        double multi = calc.multiplicar(n1, n2);
        System.out.println("A Multiplicação de " + n1 +" * "+ n2 +" = " + multi);
        double expo = calc.exponenciar(n1, n2);
        System.out.println("A Base de " + n1 +" elevado a Exponêcia de "+ n2 +" = " + expo);
        scn.close();
    }
}