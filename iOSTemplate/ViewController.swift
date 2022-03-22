//
//  ViewController.swift
//  iOSTemplate
//
//  Created by André Felipe Fleck Bedran on 14/03/22.
//

import UIKit

class ViewController: UITabBarController {

    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        // Do any additional setup after loading the view.
        
        //instanciando as view controllers
        let CameraView = CameraView()
        CameraView.title = "Camera" //nomeia o icone
        
        //atribui a view controller para a tab bar
        self.setViewControllers([CameraView], animated: true)
        CameraView.tabBarItem.image = UIImage(systemName: "camera")
    }

    @IBAction func newButton(_ sender: Any) {
        //ao clicar no button em tela exibe no console o Hello World
        print("Hello World")
    }
}

//classe para a view da camera dentro da tabbar
class CameraView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
    }
}
