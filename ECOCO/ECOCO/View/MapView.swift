//
//  MapView.swift
//  ECOCO
//
//  Created by 김하은 on 2022/06/29.
//

import SwiftUI
import MapKit

// swiftUI mapkit 하는 방법 배워서 넣기

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.5666791, longitude: 126.9782914), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    @State var searchText: String = ""
    
    var body: some View {
        VStack{
            Text("MapView")
//            Text("검색")
//                .frame(width: 350, height: 40)
//                .background(Color.gray)
            TextField("검색", text: $searchText)
                .frame(width: 350, height: 40)
                .background(Color.gray)
            VStack{
//                Rectangle()
//                    .fill(Color.gray)
//                    .frame(width: 350, height: 600)
                Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
            }
            
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
