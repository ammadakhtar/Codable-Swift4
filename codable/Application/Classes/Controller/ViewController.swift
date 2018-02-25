//
//  ViewController.swift
//  codable
//
//  Created by Ammad on 24/02/2018.
//  Copyright © 2018 Ammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - UIViewController Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    // MARK: - Private Methods

    func loadData() {
        guard let url = URL(string: baseUrl) else

        {
            return
        }

        URLSession.shared.dataTask(with: url) {(data, response, error) in

            if error != nil {
                print("There was some error")

            } else {

                guard let data = data else {
                    return
                }

                do {
                    let rootData = try JSONDecoder().decode(RootData.self, from: data)
                    print(rootData)

                } catch let error {
                    print("JSON Error", error)
                }
            }
        }.resume()
    }
}
