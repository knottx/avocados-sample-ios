//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Visarut Tippun on 14/4/22.
//

import SwiftUI

struct RipeningStagesView: View {
    
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                } //: HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            } //: VStack
        } //: ScrollView
        .edgesIgnoringSafeArea(.top)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
