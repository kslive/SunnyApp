//
//  ViewController+AlertController.swift
//  Sunny App
//
//  Created by Eugene Kiselev on 18.08.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import UIKit

extension ViewController {
    
    func presentSearchAlertController(withTitle title: String?, message: String?, style: UIAlertController.Style) {
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: style)
        
        ac.addTextField { tf in
            
            let cities = ["San Francisco", "Moscow", "New York", "Stambul", "Viena"]
            tf.placeholder = cities.randomElement()
        }
        
        let search = UIAlertAction(title: "Search", style: .default) { action in
            
            let textField = ac.textFields?.first
            guard let cityName = textField?.text else { return }
            
            if cityName != "" {
                print("search info for the \(cityName)")
            }
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        ac.addAction(search)
        ac.addAction(cancel)
        present(ac, animated: true, completion: nil)
    }
}