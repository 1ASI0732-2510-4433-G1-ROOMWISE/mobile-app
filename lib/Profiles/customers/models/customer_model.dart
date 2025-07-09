// Define the Customer class to represent a customer entity
class Customer {
  
  // Define the properties of the Customer class
  int id;  // Unique identifier for the customer
  String username;  // Username of the customer
  String name;  // First name of the customer
  String surname;  // Surname of the customer
  String email;  // Email address of the customer
  int phone;  // Phone number of the customer
  String state;  // Current state or status of the customer (e.g., active, inactive)

  // Constructor to initialize a Customer object with required properties
  Customer({
    required this.id,  // Required customer ID
    required this.username,  // Required username
    required this.name,  // Required first name
    required this.surname,  // Required surname
    required this.email,  // Required email address
    required this.phone,  // Required phone number
    required this.state,  // Required state
  });

  // Factory constructor to create an instance of Customer from a JSON map
  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'],  // Map the customer ID from JSON
      username: json['username'],  // Map the username from JSON
      name: json['name'],  // Map the first name from JSON
      surname: json['surname'],  // Map the surname from JSON
      email: json['email'],  // Map the email from JSON
      phone: json['phone'],  // Map the phone number from JSON
      state: json['state'],  // Map the state from JSON
    );
  }

  // Method to convert the Customer instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,  // Convert customer ID to JSON
      'username': username,  // Convert username to JSON
      'name': name,  // Convert first name to JSON
      'surname': surname,  // Convert surname to JSON
      'email': email,  // Convert email to JSON
      'phone': phone,  // Convert phone number to JSON
      'state': state,  // Convert state to JSON
    };
  }
}
