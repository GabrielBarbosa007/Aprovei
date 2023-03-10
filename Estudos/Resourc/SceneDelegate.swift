//
//  SceneDelegate.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 29/12/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let winScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: winScene)
        
        let navigationController = UINavigationController()
        navigationController.navigationBar.prefersLargeTitles = false
        navigationController.navigationBar.backgroundColor = .clear
        navigationController.navigationBar.tintColor = UIColor(red: 234/255, green: 49/255, blue: 111/255, alpha: 1)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        let coordinator = IntroductionCoordinator(navigationController: navigationController)
        coordinator.start()
        
            }
            func sceneDidDisconnect(_ scene: UIScene) {
            }
            func sceneDidBecomeActive(_ scene: UIScene) {
            }
            func sceneWillResignActive(_ scene: UIScene) {
            }
            func sceneWillEnterForeground(_ scene: UIScene) {
            }
            func sceneDidEnterBackground(_ scene: UIScene) {
            }
    }

