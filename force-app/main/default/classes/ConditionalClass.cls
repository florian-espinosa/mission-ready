public class ConditionalClass {
    
    // Display capital of countries based on following logic
    // New Zealand -> Wellington
    // India -> Delhi
    // Australia -> Canberra
    public static void displayCapital() {
        String country = 'New Zealand';
        String capital;
        if (country == 'New Zealand') {
            capital = 'Wellington';
        } 
        else if (country == 'India') {
            capital = 'Delhi';
        }
        else {
            capital = 'Canberra';
        }
        System.debug(capital);
    }
    
    // Display Legends from Sports based on games
    // Cricket -> Sachin Tendulkar
    // Boxing -> Mohammad Ali
    // Football -> Ronaldo
    
    public static void displayPlayer() {
        String game = 'Cricket';
        String player;
        if (game == 'Cricket') {
            player = 'Sachin Tendulkar';
        } else if (game == 'Boxing') {
            player = 'Mohammad Ali';
        } else if (game == 'Football') {
            player = 'Ronaldo';
        } else {
            player = 'Not in the list.';
        }
        System.debug(player);
    }

    public static void displayPlayer(String game) {
        String player;
        if (game == 'Cricket') {
            player = 'Sachin Tendulkar';
        } else if (game == 'Boxing') {
            player = 'Mohammad Ali';
        } else if (game == 'Football') {
            player = 'Ronaldo';
        } else {
            player = 'Not in the list.';
        }
        System.debug(player);
    }
    

}