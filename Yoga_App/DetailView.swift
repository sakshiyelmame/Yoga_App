//
//  DetailView.swift
//  Yoga_App
//
//  Created by Sakshi Yelmame on 14/09/23.
//

import SwiftUI

struct DetailView: View {
    let yogaPose: YogaPose
    
    var body: some View {
        VStack {
            Image(yogaPose.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 150)
                .cornerRadius(10)
            Text(yogaPose.name)
                .font(.title)
            Text(yogaPose.description)
                .padding()
            
        }
        .navigationTitle("Pose Details")
    }
}

