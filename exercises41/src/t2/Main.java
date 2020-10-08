package t2;

import java.util.ArrayList;

public class Main {
    public static void main(String args[]){
Room room1 = new Room(4,1,3,0);
Room room2 = new Room(4,5,10,7);
Room room3 = new Room(8,3,4,3);




ArrayList<Room> allRooms = new ArrayList<>();

        Building building = new Building(allRooms,4,2,true);
allRooms.add(room1);
allRooms.add(room2);
allRooms.add(room3);

        System.out.println(room1.getNumberOfLamps());
        System.out.println(allRooms.add(room1));
        if (building.getNumberOfFloors() < building.getNumberOfBathrooms()){
            System.out.println("this is an ood building");
        }
    }


}
