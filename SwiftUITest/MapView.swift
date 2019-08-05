//
//  MapView.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 31/07/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : View {
    
    var latitude: Double
    var longitude: Double
    
    var body: some View {
        MapItemView(latitude: latitude, longitude: longitude)
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(latitude: 0.0, longitude: 0.0).edgesIgnoringSafeArea(.top)
    }
}
#endif

struct MapItemView : UIViewRepresentable {
    
    var latitude: Double
    var longitude: Double
    
    func makeUIView(context: UIViewRepresentableContext<MapItemView>) -> MapItemView.UIViewType {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        view.setRegion(region, animated: true)
    }
}
