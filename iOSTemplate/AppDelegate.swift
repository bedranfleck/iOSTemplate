//
//  AppDelegate.swift
//  iOSTemplate
//
//  Created by André Felipe Fleck Bedran on 14/03/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewController = ViewController()
        let navigationController = UINavigationController(rootViewController: viewController)

        window = UIWindow()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        //adicionando o tab bar / icones e nome do icone
//        navigationController.tabBarItem.title  = "Camera"
//        navigationController.tabBarItem.image = UIImage(systemName: "camera")
//
//        //troca para a tela dessa tab
//        let tabBar = UITabBarController()
//        tabBar.viewControllers = [navigationController] //aqui eu preciso colocar todas as janelas que vao aparecer
//        window?.rootViewController = tabBar //chama a tabbar pra a tela
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
