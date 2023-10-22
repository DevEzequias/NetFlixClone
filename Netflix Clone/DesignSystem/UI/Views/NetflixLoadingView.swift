//
//  NetflixLoadingView.swift
//  Netflix Clone
//
//  Created by Ezequias Santos on 19/07/23.
//

import UIKit
import Lottie

final class NetflixLoadingView: UIView {
    
    var loading: LottieAnimationView!
    
    init() {
        super.init(frame: .zero)
        backgroundColor  = .black
    }
    
    required init?(coder: NSCoder) { nil }
    
    private func setupLoading() {
        loading = .init(name: "splashMovie")
        loading.contentMode = .scaleAspectFit
        loading.loopMode = .loop
        loading.isHidden = false
        addSubview(loading)
        
        loading.play()
    }
}
