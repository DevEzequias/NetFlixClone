//
//  AppLoading.swift
//  Netflix Clone
//
//  Created by Ezequias Santos on 19/07/23.
//

import UIKit

public final class AppLoading: NSObject {

    public static let shared = AppLoading()
    private var loadingView = NetflixLoadingView()

    public override init() {
        super.init()

        guard let window = mainWindow() else { return }
        loadingView.frame = window.bounds
        window.addSubview(loadingView)
    }

    public func show() {

        loadingView.loading.play()
        loadingView.isHidden = false
        guard let window = mainWindow() else { return }
        window.bringSubviewToFront(loadingView)

    }

    public func hide() {
        loadingView.isHidden = true
        loadingView.loading.stop()
    }
    
    public func setBackground() {
        loadingView.backgroundColor = UIColor.white.withAlphaComponent(1.0)
    }

    private func mainWindow() -> UIWindow? {
        guard let app = UIApplication.shared.delegate as? AppDelegate else { return nil}
        return app.window
    }
}
