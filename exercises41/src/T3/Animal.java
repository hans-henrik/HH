package T3;

public class Animal implements AnimalSounds {
    private int numberOfLegs;

    public Animal(int numberOfLegs) {
        this.numberOfLegs = numberOfLegs;
    }

    public int getNumberOfLegs(){
        return numberOfLegs;


    }

    @Override
    public void makeSounds() {
        System.out.println("undefined animal makes no sound");
    }
}
