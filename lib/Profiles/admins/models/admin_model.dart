// Define the Admin class to represent an administrator entity
class Admin {
  
  // Define the properties of the Admin class
  int id;  // Unique identifier for the admin
  String? username;  // Username of the admin (nullable)
  String? name;  // First name of the admin (nullable)
  String? surname;  // Surname of the admin (nullable)
  String? email;  // Email address of the admin (nullable)
  int? phone;  // Phone number of the admin (nullable)
  String? state;  // Current state or status of the admin (nullable)
  String? password;  // Password of the admin (nullable)

  // Constructor to initialize an Admin object with required and optional properties
  Admin({
    required this.id,  // Required admin ID
    this.username,  // Optional username
    this.name,  // Optional first name
    this.surname,  // Optional surname
    this.email,  // Optional email
    this.phone,  // Optional phone number
    this.state,  // Optional state
    this.password,  // Optional password
  });

  // Factory method to create an Admin instance from a JSON map
  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
      id: json['id'] ?? 0,  // Set the admin ID, defaulting to 0 if not found
      username: json['username'],  // Set the username from JSON
      name: json['name'],  // Set the first name from JSON
      surname: json['surname'],  // Set the surname from JSON
      email: json['email'],  // Set the email from JSON
      phone: json['phone'] != null ? int.tryParse(json['phone'].toString()) : null,  // Parse phone if present
      state: json['state'],  // Set the state from JSON
      password: json['password'],  // Set the password from JSON
    );
  }

  // Method to convert the Admin object into a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,  // Map the admin ID
      'username': username,  // Map the username
      'name': name,  // Map the first name
      'surname': surname,  // Map the surname
      'email': email,  // Map the email
      'phone': phone,  // Map the phone number
      'state': state,  // Map the state
      'password': password,  // Map the password
    };
  }
}
