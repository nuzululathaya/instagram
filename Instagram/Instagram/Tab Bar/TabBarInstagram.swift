//
//  TabBarInstagram.swift
//  Instagram
//
//  Created by Nuzulul Athaya on 08/06/22.
//

import UIKit

class TabBarInstagram: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabbarView()
        setupNavigationVC()
    }
        func setupTabbarView() {
            view.backgroundColor = .systemBackground
            tabBar.barTintColor = .systemBackground
            tabBar.tintColor = .label
        }

            func setupNavigationVC() {
            let homeViewController = HomeViewController()
            homeViewController.tabBarItem = UITabBarItem(
                title: "Home",
                image: UIImage(systemName: "house"),
                selectedImage: UIImage(systemName: "house.fill")
            )
        
            let searchViewController = SearchViewController()
            searchViewController.tabBarItem = UITabBarItem(
                title: "Browse",
                image: UIImage(systemName: "magnifyingglass"),
                selectedImage: UIImage(systemName: "magnifyingglass")
            )
                
            let profileViewController = ProfileViewController()
            profileViewController.tabBarItem = UITabBarItem(
                title: "Profile",
                image: UIImage(systemName: "person"),
                selectedImage: UIImage(systemName: "person.fill")
            )
                
            let _viewControllers: [UINavigationController] = [
                homeViewController,
                searchViewController,
                profileViewController].map {
                    
                let navigationController = UINavigationController(rootViewController: $0)
                navigationController.setNavigationBarHidden(false, animated: false)
                return navigationController
            }
            
                viewControllers = _viewControllers
        }
}
