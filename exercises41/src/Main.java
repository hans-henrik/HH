public class Main {



        public static void main(String[] args) {
            Driver driver = new Driver("Ermin", 55);
            Car superCar = new Car("Honda", "Civic", 1997, "hatchBag");
            Car crapCar = new Car("BMW", "M1", 2017, "RaaaaaaacerCar");
            superCar.setDriver(driver);
            crapCar.setDriver(driver);
            System.out.println(crapCar.toString() + " " + driver.toString());
            System.out.println(superCar.toString() + " " + driver.toString());
        }
    }

