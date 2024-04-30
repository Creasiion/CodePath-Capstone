//
//  DetailViewController.swift
//  Plant-Sitter
//
//  Created by Imani Cage on 4/29/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    var plant: PlantEncyclopediaData?  // Marked as optional to handle potential nil cases
    
    // Outlets for image and text views
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var navBarView: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Safety check to ensure plant data is not nil before accessing it
        if let plant = plant {
            loadPlantDetails(plant: plant)  // Fetch additional details for the plant
        } else {
            print("❌ Error: plant is nil")
        }
        
        // Styling and colors for the text view and background
        textView.textColor = .white
        textView.backgroundColor = UIColor(red: 28/255, green: 74/255, blue: 155/255, alpha: 1.0)
        view.backgroundColor = UIColor(red: 28/255, green: 74/255, blue: 155/255, alpha: 1.0)
        
        if let defaultImage = plant?.default_image, let imageURL = URL(string: defaultImage.regular_url) {
                    Nuke.loadImage(with: imageURL, into: imageView)  // Load the plant image into UIImageView
                } else {
                    print("❌ No image URL or default image found")
                }
    }
    
    func loadPlantDetails(plant: PlantEncyclopediaData) {
        let id = plant.id
        let urlString = "https://perenual.com/api/species/details/\(id)?key=sk-BuyU6620b1e3018485166"
        
        guard let url = URL(string: urlString) else {
            print("❌ Invalid URL")
            return
        }
        
        let session = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("❌ Error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                print("❌ No data received")
                return
            }
            
            do {
                let plantDetail = try JSONDecoder().decode(PlantDetail.self, from: data)  // Use PlantDetail
                
                DispatchQueue.main.async {
                    self.textView.text = self.formatPlantDetails(detail: plantDetail)  // Update text view
                }
                
            } catch {
                print("❌ Error decoding JSON: \(error.localizedDescription)")
            }
        }
        
        session.resume()  // Start the network request
    }
    
    func formatPlantDetails(detail: PlantDetail) -> String {
        var detailsText = ""
        
        detailsText += "Common Name: \(detail.common_name)\n"
        detailsText += "Scientific Name: \(detail.scientific_name.joined(separator: ", "))\n"
        detailsText += "Cycle: \(detail.cycle ?? "N/A")\n"
        detailsText += "Watering: \(detail.watering)\n"
        detailsText += "Sunlight: \(detail.sunlight.joined(separator: ", "))\n"
        
        if let description = detail.description {
            detailsText += "Description: \(description)\n"
        }
        
        return detailsText
    }
}
