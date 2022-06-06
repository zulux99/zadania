package klasaEnum;

public class klasaEnum {
        public enum months {
            January, February, March, April, May, June, July, August, September, October, November, December,
        }
        public enum size {
            SMALL, MEDIUM, LARGE
            }
        public class KlasaWewnetrzna {
            public void main() {
                System.out.print("Jest to klasa wewnętrzna");
            }
        }
    public static void main(String[] args) {
        System.out.print(months.valueOf("March").ordinal() + 1);
    }
}
