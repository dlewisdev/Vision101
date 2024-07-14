//
//  Course.swift
//  Vision101
//
//  Created by Danielle Lewis on 6/30/24.
//

import Foundation

struct Course: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let content: String
}
