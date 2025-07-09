// Define the Hotel class to represent a hotel entity
class Hotel {
  
  // Define the properties of the Hotel class
  final int? id;  // Optional unique identifier for the hotel
  final String? name;  // Optional name of the hotel
  final String? address;  // Optional address of the hotel
  final int? phoneNumber;  // Optional phone number of the hotel
  final String? description;  // Optional description of the hotel
  final String? email;  // Optional email address of the hotel
  final int? ownerId;  // Optional owner ID of the hotel

  // Constructor to initialize the Hotel object with the required fields
  Hotel({
    required this.id,  // Required hotel ID
    required this.name,  // Required name
    required this.address,  // Required address
    required this.phoneNumber,  // Required phone number
    required this.email,  // Required email address
    required this.description,  // Required description
    required this.ownerId  // Required owner ID
  });

  // Factory constructor to create an instance of Hotel from a JSON map
  factory Hotel.fromJson(Map<String, dynamic> json) {
    return Hotel(
      id: json['id'] as int,  // Map hotel ID from JSON
      name: json['name'] as String,  // Map hotel name from JSON
      address: json['address'] as String,  // Map hotel address from JSON
      ownerId: json['ownersId'] as int,  // Map owner ID from JSON
      description: json['description'] as String,  // Map description from JSON
      phoneNumber: json['phone'] as int,  // Map phone number from JSON
      email: json['email'] as String  // Map email from JSON
    );
  }
}
