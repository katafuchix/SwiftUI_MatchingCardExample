//
//  ProfileData.swift
//  MatchingCardExample
//
//  Created by cano on 2023/01/09.
//

import Foundation

struct ProfileData : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var age : String
    var offset : CGFloat
}
