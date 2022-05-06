import Calculadora;
public class App{
    public static void main(String[] args) {
        System.out.println("Olá Mundo!");
        System.out.println("Somar!");
        Calculadora calc = new Calculadora();
        double soma = calc.somar(10, 20);
        System.out.println("A Soma de 10 + 20 = " + soma);
    }
}