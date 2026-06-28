//
//  WelcomeView.swift
//  Meowl
//
//  Created by Harshika Sharma on 28/06/26.
//

import SwiftUI


struct WelcomeView: View {

    @StateObject private var vm = WelcomeViewModel()

    var body: some View {

        ZStack {

            Color.white
                .ignoresSafeArea()

            VStack(spacing: 0) {

                Spacer(minLength: 20)

                WelcomeHeroView(viewModel: vm)

                WelcomeContentView(viewModel: vm)

                
                Spacer()

                WelcomeBottomView()
            }
        }
        .onAppear {
            vm.startAnimations()
            
        }
    }
}

#Preview {
    WelcomeView()
}
