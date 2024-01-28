//
//  ContentView.swift
//  Exercise4
//
//  Created by Agung Dwi Saputra on 28/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selected: Int = 0
    
    private var onboardingData = OnboardingItem.data
    
    var body: some View {
        VStack {
            TabView(selection: $selected,
                    content:  {
                ForEach(onboardingData) { data in
                    Group {
                        OnboardingCard(
                            title: data.title,
                            caption: data.caption,
                            image: data.image
                        )
                    }.tag(data.tag)
                }
            })
            .onAppear(perform: {
                UIScrollView.appearance().bounces = false
            })
            .tabViewStyle(.page(indexDisplayMode: .always))
        }
        .ignoresSafeArea()

    }
}


struct OnboardingCard: View {
    var title = "Hello World"
    var caption = "Clear is a colorful canvas for your thoughts, plans and goal. Here's what makes it uniquely fun and effective"
    var image = "clear1"
   
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .ignoresSafeArea()
            VStack(alignment:.leading, spacing: 10) {
                Spacer()
                Text(title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(caption)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .medium))

            }
            .padding(.horizontal, 30)
            .padding(.bottom, 80)
        }
    }
}

#Preview {
    ContentView()
}
