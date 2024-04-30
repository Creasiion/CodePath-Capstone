//
//  PlantInfo.swift
//  Plant-Sitter
//
//  Created by Imani Cage on 4/29/24.
//

import Foundation

// Struct for plant response, containing an array of PlantEncyclopediaData
struct PlantResponse: Decodable {
    let data: [PlantEncyclopediaData]  // Correct syntax for initializing array
}

// Struct for plant encyclopedia data
struct PlantEncyclopediaData: Decodable {
    let id: Int  // ID should be Int as indicated in the sample data
    let common_name: String  // Common name is a string
    let scientific_name: [String]  // Array of scientific names
    let other_name: [String]?  // Array of other names, optional
    let cycle: String?  // Plant cycle, could be nil if not provided
    let watering: String  // Watering requirement
    let sunlight: [String]  // Array of sunlight requirements
    let default_image: PlantImage?  // Struct for the image data, optional
}

// Struct for plant image information
struct PlantImage: Decodable {
    let license: Int
    let license_name: String  // Name of the license
    let license_url: String  // URL for the license
    let original_url: String
    let regular_url: String
    let medium_url: String
    let small_url: String
    let thumbnail: String
}

// Struct for detailed plant information
struct PlantDetail: Decodable {
    let id: Int
    let common_name: String
    let scientific_name: [String]
    let other_name: [String]?
    let family: String?
    let origin: [String]?
    let cycle: String?
    let watering: String
    let sunlight: [String]
    let dimension: String?
    let dimensions: Dimensions?  // Nested struct for dimension details
    let propagation: [String]?
    let hardiness: Hardiness?  // Nested struct for hardiness info
    let default_image: PlantImage?
    let description: String?

    // Additional attributes from the API
    let type: String?
    let growth_rate: String?
    let drought_tolerant: Bool?
    let leaf_color: [String]?
    // Add other attributes as needed from the JSON response
}

// Nested struct for dimensions
struct Dimensions: Decodable {
    let type: String?
    let min_value: Int?
    let max_value: Int?
    let unit: String?
}

// Nested struct for hardiness
struct Hardiness: Decodable {
    let min: String?
    let max: String?
}
