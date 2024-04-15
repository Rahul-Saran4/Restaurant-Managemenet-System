<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <style>
        body {
            background-color: lightgreen; /* Replace with your desired background color */
        }
        
        
        
        
        
        body, h1{
    margin: 0;
    padding: 0;
}
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

h1 {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 20px;
}

table {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
}

table, th, td {
    border: 3px solid #ddd;
}

th, td {
    padding: 25px;
    text-align: left;
}

th {
    background-color: #333;
    color: #fff;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

img {
    max-width: 170px;
    max-height: 170px;
    display: block;
    margin: 0 auto;
}
footer{
       background-color: #333;
    color: #fff;
    text-align: center;
    padding: 20px;
    
}
    </style>
</head>
<body style="font-size:15pt">
    
      
    <h1>Restaurant Menu</h1>
        <form action="index.jsp">
            
        <input type="button" value="Back" style="font-size:15pt">
        </form>
    <table>
        
        <% 
            // Sample menu items (you can retrieve these from a database)
           /* String[][] menuItems = {
                {"item1.jpg", "Item 1", "10.99", "Description for Item 1"},
                {"item2.jpg", "Item 2", "8.99", "Description for Item 2"},
                {"item3.jpg", "Item 3", "12.99", "Description for Item 3"}
            }*/ String[][] menuItems = {
                    {"item1.jpg", "HamBurger", " Rupees.150", "A hamburger is a sandwich consisting of a cooked meat patty on a bun or roll.Our Hamburgers are traditionally made with ground beef and served with onions, tomatoes, lettuce, ketchup, and other garnishes."},
                    {"item2.jpg", "Cheese Burger", " Rupees.200", "You can't go wrong with our cheeseburger, a signature flame-grilled beef patty topped with a simple layer of melted cheese, crinkle cut pickles, yellow mustard, and ketchup on a toasted sesame seed bun"},
                    {"item3.jpg", "DoubleCheese Burger", " Rupees.250", "Double Cheeseburger features two 100% pure all beef patties seasoned with just a pinch of salt and pepper. It's topped with tangy pickles, chopped onions, ketchup, mustard, and two melty cheese slices. "}
               
            };
%>
        
        
        <tr>
        <tr><td><img src="menuimage/hamburgeritem1.jpg" alt="<%= menuItems[0][0] %>"></td>
        <td><img src="menuimage/cheeseburgeritem2.jpg" alt="<%= menuItems[0][0] %>"></td>
        <td><img src="menuimage/doublecheeseburger.jpeg" alt="<%= menuItems[0][0] %>"></td>
        
        </tr>

        
        <tr>
            <td><%= menuItems[0][1] %></td>
            <td><%= menuItems[1][1] %></td>
            <td><%= menuItems[2][1] %></td>
        </tr>
        
        <tr>
            <td><%= menuItems[0][2] %></td>
            <td><%= menuItems[1][2] %></td>
            <td><%= menuItems[2][2] %></td>
        </tr>
        <tr>
            <td><%= menuItems[0][3] %></td>
            <td><%= menuItems[1][3] %></td>
            <td><%= menuItems[2][3] %></td>
        </tr>
          
        
        
   
    </table>
       
</body>
        <footer>
        BurgerVille    
        </footer>
</html>
