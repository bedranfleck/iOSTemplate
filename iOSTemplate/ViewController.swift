//
//  ViewController.swift
//  iOSTemplate
//
//  Created by André Felipe Fleck Bedran on 14/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        // Do any additional setup after loading the view.
    }

    @IBAction func newButton(_ sender: Any) {
        //ao clicar no button em tela exibe no console o Hello World
        print("Hello World")
    }

    
}

