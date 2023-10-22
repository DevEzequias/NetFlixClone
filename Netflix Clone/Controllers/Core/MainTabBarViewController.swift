//
//  MainTabBarViewController.swift
//  Netflix Clone
//
//  Created by Ezequias Santos on 10/07/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        let upcomingViewController = UINavigationController(rootViewController: UpcomingViewController())
        let searchViewController = UINavigationController(rootViewController: SearchViewController())
        let downloadViewController = UINavigationController(rootViewController: DownloadViewController())
        
        
        homeViewController.title = "Home"
        upcomingViewController.title = "Coming Soon"
        searchViewController.title = "Search"
        downloadViewController.title = "Download"
        
        
        homeViewController.tabBarItem.image = UIImage(systemName: "house")
        upcomingViewController.tabBarItem.image = UIImage(systemName: "play.circle")
        searchViewController.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        downloadViewController.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        tabBar.tintColor = .label
        
        
        let viewControllers = [homeViewController, upcomingViewController, searchViewController, downloadViewController]
        
        
        self.setViewControllers(viewControllers, animated: true)
    }


}

