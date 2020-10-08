public class Driver {
    private String name;

    @Override
    public String toString() {
        return "Driver{" +
                "Is driven by='"+ name + '\''+
                '}';
    }

    private int age;

    public Driver(String name, int age) {
        this.name = name;
        this.age = age;
    }
}
