//
//  OnboardingItem.swift
//  Exercise4
//
//  Created by Agung Dwi Saputra on 28/01/24.
//

import Foundation


struct OnboardingItem: Identifiable {
    let id: UUID = UUID()
    let image: String
    let title: String
    let caption: String
    let tag: Int
}


extension OnboardingItem {
    
    static let data: [OnboardingItem] = [
        OnboardingItem(
            image: "clear1",
            title: "Your Life in Lists",
            caption: "Clear is a colorful canvas for your thoughts, plans and goal. Here's what makes it uniquely fun and effective",
            tag: 0
        ),
        OnboardingItem(
            image: "clear2",
            title: "Radically Simple",
            caption: "Clear is a pristine to think,\ntotally free or distractions or\nfeature clutter",
            tag: 1
        ),
        OnboardingItem(
            image: "clear3",
            title: "Your Life in Lists",
            caption: "Clear's gesture shortcuts are\nintuitive and efficient.Try\npinching to insert or take a\nscreenshot to share a list.",
            tag: 2
        ),
        OnboardingItem(
            image: "clear4",
            title: "Stangely Addictive",
            caption: "Clear harnesses your dopamine\nwith satisfying sounds, haptics,\nand collectibles that unlock as you get things done.",
            tag: 3
        ),
        OnboardingItem(
            image: "clear5",
            title: "Insanely\nPersonalizable",
            caption: "Mix and match hundreds of\ncollectibles, totally transforming\nClear to suit your style and\nwhims.",
            tag: 4
        ),
        OnboardingItem(
            image: "clear6",
            title: "Treat Yourself",
            caption: "Because it's productive to after a\njob well done. Clear is 100% free\nto use and also a treat to shop in.\nHappy listing!",
            tag: 5
        )
    ]
    
    
}
