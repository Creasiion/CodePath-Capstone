//
//  PlantEncyclopediaViewController.swift
//  Plant-Sitter
//
//  Created by Imani Cage on 4/29/24.
//

import UIKit
import Nuke

class PlantEncyclopediaViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var plants: [PlantEncyclopediaData] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        fetchPlants()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let selectedIndexPath = tableView.indexPathForSelectedRow else { return }
//        let selectedPlant = plants[selectedIndexPath.row]
//        
//        guard let detailViewController = segue.destination as? DetailViewController else { return }
//        detailViewController.plant = selectedPlant
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlantDetail" {
            guard let selectedIndexPath = tableView.indexPathForSelectedRow else { return }
            let selectedPlant = plants[selectedIndexPath.row]
            
            if let detailViewController = segue.destination as? DetailViewController {
                detailViewController.plant = selectedPlant
            }
        }
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plants.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlantCell", for: indexPath) as! PlantCell

        let plant = plants[indexPath.row]

        cell.commonNameLabel.text = plant.common_name
        
        // Set background color and text of the cell
        cell.commonNameLabel.textColor = .white
        cell.backgroundColor = UIColor(red: 28/255, green: 74/255, blue: 155/255, alpha: 1.0)

        if let photo = plant.default_image, let url = URL(string: photo.regular_url) {
            Nuke.loadImage(with: url, into: cell.plantImageView)
        } else {
            print("❌ Invalid URL or missing image data")
        }

        return cell
    }
    
    func fetchPlants() {
        let url = URL(string: "https://perenual.com/api/species-list?key=sk-BuyU6620b1e3018485166")!
        let session = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("❌ Error: \(error.localizedDescription)")
                return
            }

            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, (200...299).contains(statusCode) else {
                print("❌ Response error: \(String(describing: response))")
                return
            }

            guard let data = data else {
                print("❌ Data is NIL")
                return
            }

            do {
                let plantResponse = try JSONDecoder().decode(PlantResponse.self, from: data)

                DispatchQueue.main.async { [weak self] in

                    //let posts = blog.response.posts
                    self?.plants = plantResponse.data
                    self?.tableView.reloadData()

                    print("✅ We got \(plantResponse.data.count) plants!")
                    for plant in plantResponse.data {
                        print("🌱 Plant ID: \(plant.id), Common Name: \(plant.common_name)")
                    }
                }

            } catch {
                print("❌ Error decoding JSON: \(error.localizedDescription)")
            }
        }
        session.resume()
    }
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


