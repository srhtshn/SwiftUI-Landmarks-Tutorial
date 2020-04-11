//
//  UserData.swift
//  Landmarks
//
//  Created by ssahin on 2.02.2020.
//  Copyright © 2020 ssahin. All rights reserved.
//

import Foundation

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
