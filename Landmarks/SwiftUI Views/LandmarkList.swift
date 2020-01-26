//
//  LandmarkList.swift
//  Landmarks
//
//  Created by ssahin on 26.01.2020.
//  Copyright © 2020 ssahin. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE", "iPhone 11", "iPad Pro (11-inch)"], id: \.self) { deviceName in
            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
//        }
    }
}
