//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Visarut Tippun on 15/4/22.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...recipe.rating, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            } //: ForEach
        } //: HStack
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipeData.first!)
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
