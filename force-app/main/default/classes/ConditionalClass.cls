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

    public static void displayPlayer1(String game) {
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
    
    public static String displayPlayer(String game) {
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
        return player;
    }

    public static List<String> displayThreePlayers(String game) {
        String player;
        List<String> players = new List<String>();
        if (game == 'Cricket') {
            players.add('Sachin Tendulkar');
            players.add('Babar Azam');
            players.add('Trent Boult');
        } else if (game == 'Football') {
            players.add('Cristiano Ronaldo');
            players.add('Lionel Messi');
            players.add('Erling Haaland');
        } else if (game == 'Basketball') {
            players.add('LeBron James');
            players.add('Michael Jordan');
            players.add('Magic Johnson');
        } else {
            players.add('Game not in the list');
        }
        return players;
    }

    public static List<String> displayCities(String country) {
        String capital;
        List<String> cities = new List<String>();
        if (country == 'New Zealand') {
            cities.add('Wellington');
            cities.add('Auckland');
        } 
        else if (country == 'India') {            
            cities.add('Delhi');
            cities.add('Mumbai');
        }
        else if (country == 'Australia') {    
            cities.add('Sydney');
            cities.add('Canberra');
        }
        else {
            cities.add('Not in the list');          
        }

        return(cities);
    }

    public static String displayGamePlayer(String game) {
        Map<String, String> player = new Map<String, String>();
        if (game == 'Cricket') {
            player.put('Cricket','Sachin Tendulkar');
        } else if (game == 'Football') {
            player.put('Football','Cristiano Ronaldo');
        } else if (game == 'Basketball') {
            player.put('Basketball','LeBron James');
        } else {
            player.put('Error','Game not in the list');
        }
        return player.get(game);
    }

}