import java.util.*;

class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int k = sc.nextInt();
        int j = sc.nextInt();
        int m = sc.nextInt();
        int p = sc.nextInt();

        
        if (j <= 0 || k <= 0 || m < 0 || p < 0) {
            System.out.println("INVALID");
            return;
        }

        int a1 = m / k;
        int a2 = p / j;

        int a = a1 + a2;

        if (a < n) {
            n = n - a;
        } else {
            n = 0;
        }

        if (m % k != 0) {
            n = n - 1;
        }

        if (p % j != 0) {
            n = n - 1;
        }

        
        if (n < 0) {
            n = 0;
        }

        System.out.println("Number of monkeys: " + n);
    }
}
