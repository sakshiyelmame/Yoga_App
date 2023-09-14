//
//  ContentView.swift
//  Yoga_App
//
//  Created by Sakshi Yelmame on 14/09/23.
//

import SwiftUI

struct ContentView: View {
    let yogaPoses: [YogaPose] = [
        YogaPose(name: "Downward Dog", description: "A classic yoga pose that stretches the entire body.", imageName: "downward_dog"),
        YogaPose(name: "Tree Pose", description: "A balance pose that strengthens the legs and improves focus.", imageName: "tree_pose"),
        YogaPose(name: "Child's Pose", description: "A resting pose that provides relaxation and stretches the back.", imageName: "childs_pose"),
        YogaPose(name: "Downward Dog", description: "A classic yoga pose that stretches the entire body.", imageName: "downward_dog"),
        YogaPose(name: "Tree Pose", description: "A balance pose that strengthens the legs and improves focus.", imageName: "tree_pose"),
        YogaPose(name: "Child's Pose", description: "A resting pose that provides relaxation and stretches the back.", imageName: "childs_pose"),
        YogaPose(name: "Downward Dog", description: "A classic yoga pose that stretches the entire body.", imageName: "downward_dog"),
        YogaPose(name: "Tree Pose", description: "A balance pose that strengthens the legs and improves focus.", imageName: "tree_pose"),
        YogaPose(name: "Child's Pose", description: "A resting pose that provides relaxation and stretches the back.", imageName: "childs_pose"),
        // Add more yoga poses as needed
    ]
    var body: some View {
        NavigationView {
            List(yogaPoses) { pose in
                NavigationLink(destination: DetailView(yogaPose: pose)) {
                    Image(pose.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 150)
                        .cornerRadius(10)
                    Text(pose.name)
                    
                }
            }
            .navigationTitle("Yoga Poses")
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
