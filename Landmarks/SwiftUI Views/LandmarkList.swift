//
//  LandmarkList.swift
//  Landmarks
//
//  Created by ssahin on 26.01.2020.
//  Copyright © 2020 ssahin. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites Only")
            }
            
            ForEach(userData.landmarks) { landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
////        ForEach(["iPhone SE", "iPhone 11", "iPad Pro (11-inch)"], id: \.self) { deviceName in
//            LandmarkList()
//                .environmentObject(UserData())
////                .previewDevice(PreviewDevice(rawValue: deviceName))
////                .previewDisplayName(deviceName)
////        }
        NavigationView {
            LandmarkList()
                .environmentObject(UserData())
        }
    }
}
