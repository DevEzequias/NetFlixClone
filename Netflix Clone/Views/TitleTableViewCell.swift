//
//  TitleTableViewCell.swift
//  Netflix Clone
//
//  Created by Ezequias Santos on 13/07/23.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    static let identifier = "TitleTableViewCell"
    
    private let playTitleButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "play.circle", withConfiguration: UIImage.SymbolConfiguration(pointSize: 30))
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        return button
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    private let titlesPosterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlesPosterImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(playTitleButton)
        
        applyContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Helpers
    
    private func applyContraints() {
        let titlesPosterImageViewConstraints = [
            titlesPosterImageView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor
            ),
            titlesPosterImageView.topAnchor.constraint(
                equalTo: contentView.topAnchor, constant: 10
            ),
            titlesPosterImageView.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor, constant: -10
            ),
            titlesPosterImageView.widthAnchor.constraint(equalToConstant: 90)
        ]
        
        let titleLabelConstraints = [
                titleLabel.leadingAnchor.constraint(
                    equalTo: titlesPosterImageView.trailingAnchor, constant: 20
                ),
                titleLabel.trailingAnchor.constraint(
                    equalTo: playTitleButton.leadingAnchor, constant: -20
                ),
                titleLabel.centerYAnchor.constraint(
                    equalTo: contentView.centerYAnchor
                )
            ]
        
        let playTitleButtonConstraints = [
            playTitleButton.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor, constant: -20
            ),
            playTitleButton.centerYAnchor.constraint(
                equalTo: contentView.centerYAnchor
            ),
            playTitleButton.widthAnchor.constraint(equalToConstant: 40)
        ]
        
        NSLayoutConstraint.activate(titlesPosterImageViewConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(playTitleButtonConstraints)
        
        titleLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        playTitleButton.setContentHuggingPriority(.defaultLow, for: .horizontal)
    }
    
    public func configure(with model: TitleViewModel) {
        guard let url = URL(string: "\(Constants.baseURL_IMAGE)\(model.posterURL)") else {
            return
        }
        titlesPosterImageView.sd_setImage(with: url)
        titleLabel.text = model.titleName
    }
}
