//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by OLEKSANDR SOKOLOV on 29.10.2020.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return 0 // TODO: bogus!
    }
}
