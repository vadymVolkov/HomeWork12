//
//  ViewController.swift
//  HomeWork12
//
//  Created by Vadym Volkov on 18.06.2020.
//  Copyright © 2020 Vadym Volkov. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {
    // response data
    let url1 = "https://jsonplaceholder.typicode.com/todos/1"
    //response array of data
    let url2 = "https://jsonplaceholder.typicode.com/todos"
    
    @IBOutlet weak var responseText: UILabel!
    var result: Array<Album> = []
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func buttonPress(_ sender: Any) {
        AF.request(url1).responseObject { (response: DataResponse<Album, AFError>) in
            let value = response.value
            print(value!.id)
        }
    }
}

