//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Ezequias Santos on 12/07/23.
//

import Foundation

extension String {
    func captalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
