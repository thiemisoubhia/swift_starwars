//
//  ViewController.swift
//  ExercicioTableJson
//
//  Created by Usuário Convidado on 30/09/24.
//


import UIKit
var star:StarWars! = nil

class ViewController: UIViewController {

    var session: URLSession?
    
    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblPeso: UILabel!
    @IBOutlet weak var lblAltura: UILabel!
    
    @IBOutlet weak var txtNum: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    @IBAction func click(_ sender: Any) {
        let config = URLSessionConfiguration.default
        session = URLSession(configuration: config)
        load()
    }
    
    
    func load() {
        guard let txtNumText = txtNum.text, !txtNumText.isEmpty else {
            print("Text field vazio")
            return
        }

        let jsonUrlString = "https://swapi.dev/api/people/\(txtNumText)"
        guard let url = URL(string: jsonUrlString) else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            // Check for errors
            if let error = error {
                print("Error fetching data: \(error)")
                return
            }
            
            guard let data = data else {
                print("No data returned")
                return
            }
            
            do {
                star = try JSONDecoder().decode(StarWars.self, from: data)
                DispatchQueue.main.async {
                    self.lblNome.text = star.name
                    self.lblAltura.text = star.height
                    self.lblPeso.text = star.mass
                }
            } catch let jsonError {
                print("Error serializing JSON: \(jsonError)")
            }
        }.resume()
    }



}

