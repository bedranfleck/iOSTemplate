//
//  SceneDelegate.swift
//  iOSTemplate
//
//  Created by André Felipe Fleck Bedran on 14/03/22.
//

import UIKit
import AVFoundation

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var tabBarController: UITabBarController?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .notDetermined, .authorized:
            AVCaptureDevice.requestAccess(for: .video) { granted in
                if granted {
                    DispatchQueue.main.async {
                        let qrReaderController = QRReaderViewController()
                        
                        guard UIImagePickerController.isSourceTypeAvailable(.camera),
                        let availableMediaTypes = UIImagePickerController.availableMediaTypes(for: .camera) else {
                            return
                        }
                        
                        qrReaderController.sourceType = .camera
                        qrReaderController.mediaTypes = availableMediaTypes
                        qrReaderController.allowsEditing = true
                        
                        let navigationController = UINavigationController(rootViewController: qrReaderController)
                        
                        self.tabBarController = UITabBarController()
                        self.tabBarController?.tabBar.backgroundColor = UIColor(named: "pelps")
                        self.tabBarController?.tabBar.tintColor = .black
                        self.tabBarController?.setViewControllers([navigationController], animated: false)
                        
                        self.window?.rootViewController = self.tabBarController
                    }
                }
            }
            
        case .restricted, .denied:
            break
        }
        
        window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

