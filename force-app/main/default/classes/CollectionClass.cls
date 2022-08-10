public class CollectionClass {
    public static void friendsList() {
        List<String> friends = new List<String>();
        friends.add('Ada');
        friends.add('Bill');
        friends.add('Cam');
        friends.add('Doug');
        System.debug(friends[2]);

        friends.remove(2);
        System.debug(friends[2]);

        friends.set(2, 'Clive');
        System.debug(friends.get(2));
        friends.clear();
        System.debug(friends.size());

    }

    public static void friendsSet() {
        Set<String> friends = new Set<String>();
        friends.add('Ada');
        friends.add('Bill');
        friends.add('Cam');
        friends.add('Doug');
        System.debug(friends);

    }

    public static void mapSample() {
        Map<String, String> myFlavours = new Map<String, String>();
        myFlavours.put('Honey','Sweet');
        myFlavours.put('Anchovies','Salty');
        myFlavours.put('Vinegar','Tart');
        myFlavours.put('Sugar','Sweet');
        System.debug(myFlavours);

        myFlavours.remove('Honey');
        System.debug(myFlavours);
        System.debug(myFlavours.size());

        System.debug(myFlavours.get('Anchovies'));
    }

    public static void carsList() {
        List<String> cars = new List<String>();
        cars.add('BMW');
        cars.add('Audi');
        cars.add('Porsche');
        cars.add('Ferrari');
        cars.add('Mercedes Bens');

        for (String car : cars) {
            System.debug(car);
        }

    }

}
