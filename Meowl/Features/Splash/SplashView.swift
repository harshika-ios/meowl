//
//  SplashView.swift
//  Meowl
//
//  Created by Harshika Sharma on 24/06/26.
//

import SwiftUI
//
//struct SplashView: View {
//    @State private var animateDots = false
//    @State private var bouncePaw = false
//    @State private var logoOpacity = 0.0
//    
//    var body: some View {
//        ZStack {
//            // Background gradient
//            LinearGradient(
//                gradient: Gradient(colors: [
//                    Color(hex: "ff7b9a"), // Bright Coral tint
//                    Color(hex: "b890fe"), // Purple-blue tint
//                    Color(hex: "956cff")  // Vibrant lavender
//                ]),
//                startPoint: .topLeading,
//                endPoint: .bottomTrailing
//            )
//            .ignoresSafeArea()
//            
//            // Decorative background elements (floating pet cards)
//            VStack {
//                HStack {
//                    Image(systemName: "cat.fill")
//                        .font(.system(size: 50))
//                        .foregroundColor(.white.opacity(0.12))
//                        .rotationEffect(.degrees(-15))
//                        .offset(x: 20, y: 40)
//                    Spacer()
//                }
//                Spacer()
//                HStack {
//                    Spacer()
//                    Image(systemName: "dog.fill")
//                        .font(.system(size: 80))
//                        .foregroundColor(.white.opacity(0.12))
//                        .rotationEffect(.degrees(20))
//                        .offset(x: -20, y: -40)
//                }
//            }
//            
//            // Center Logo Card
//            VStack(spacing: 24) {
//                Spacer()
//                
//                // Icon Card
//                VStack {
//                    Image(systemName: "pawprint.fill")
//                        .font(.system(size: 60))
//                        .foregroundColor(Color.meowlPrimary)
//                        .scaleEffect(bouncePaw ? 1.05 : 0.95)
//                        .onAppear {
//                            withAnimation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true)) {
//                                bouncePaw = true
//                            }
//                        }
//                }
//                .frame(width: 140, height: 140)
//                .background(Color.white)
//                .cornerRadius(40)
//                .shadow(color: Color.black.opacity(0.12), radius: 30, x: 0, y: 15)
//                
//                // Brand Text
//                Text("Meowl")
//                    .font(.custom("PlusJakartaSans-ExtraBold", size: 36))
//                    .foregroundColor(.white)
//                    .fontWeight(.black)
//                    .opacity(logoOpacity)
//                    .onAppear {
//                        withAnimation(.easeIn(duration: 1.0)) {
//                            logoOpacity = 1.0
//                        }
//                    }
//                
//                // Carousel Dots
//                HStack(spacing: 8) {
//                    Circle()
//                        .fill(Color.white)
//                        .frame(width: 8, height: 8)
//                    Circle()
//                        .fill(Color.white.opacity(animateDots ? 1.0 : 0.4))
//                        .frame(width: 8, height: 8)
//                    Circle()
//                        .fill(Color.white.opacity(animateDots ? 0.4 : 1.0))
//                        .frame(width: 8, height: 8)
//                }
//                .onAppear {
//                    withAnimation(.easeInOut(duration: 1.2).repeatForever()) {
//                        animateDots.toggle()
//                    }
//                }
//                
//                Spacer()
//                
//                // Bottom Button
//                NavigationLink(destination: WelcomeView()) {
//                    Text("FOR EVERY PET, EVERY STORY")
//                        .font(.custom("BeVietnamPro-Bold", size: 13))
//                        .foregroundColor(.white)
//                        .padding(.vertical, 16)
//                        .padding(.horizontal, 32)
//                        .background(Color.white.opacity(0.2))
//                        .cornerRadius(28)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 28)
//                                .stroke(Color.white.opacity(0.4), lineWidth: 1.5)
//                        )
//                }
//                .padding(.bottom, 24)
//            }
//        }
//    }
//}
//
//#Preview {
//    NavigationView {
//        SplashView()
//    }
//}



struct SplashView: View {

    @State private var animateDots = false
    @State private var bounceLogo = false
    @State private var floatCards = false
    @State private var logoOpacity = 0
    
    var body: some View {
        GeometryReader { geo in

            ZStack {

                // Gradient
                LinearGradient(
                    colors: [
                        Color(hex: "#F96C9B"),
                        Color(hex: "#9E72FF")
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                Image("AmbientBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                // MARK: Floating Images

                Image("CatCard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 145)
                    .rotationEffect(.degrees(-12))
                    .opacity(0.22)
                    .position(
                        x: 85,
                        y: floatCards ? 100 : 120
                    )
                    .animation(
                        .easeInOut(duration: 4)
                        .repeatForever(autoreverses: true),
                        value: floatCards
                    )
                
                Image("HamsterCard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90)
                    .rotationEffect(.degrees(10))
                    .opacity(0.18)
                    .position(
                        x: floatCards ? 40 : 28,
                        y: geo.size.height * 0.66
                    )
                    .animation(
                        .easeInOut(duration: 4.5)
                        .repeatForever(autoreverses: true),
                        value: floatCards
                    )
                
                Image("DogCard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170)
                    .opacity(0.35)
                    .position(
                        x: geo.size.width - 85,
                        y: floatCards
                            ? geo.size.height * 0.70
                            : geo.size.height * 0.73
                    )
                    .animation(
                        .easeInOut(duration: 5)
                        .repeatForever(autoreverses: true),
                        value: floatCards
                    )

                // MARK: Center Content

                VStack(spacing: 22) {

                    Spacer()

                    Image("AppIconContainer")
                        .resizable()
                        .frame(width: 128, height: 128)
                        .scaleEffect(bounceLogo ? 1.05 : 0.95)
                        .animation(
                            .easeInOut(duration: 2)
                            .repeatForever(autoreverses: true),
                            value: bounceLogo
                        )

                    Text("Meowl")
                        .font(.plusJakartaBold(size: 24))
                        .foregroundStyle(.white)
                        .opacity(Double(logoOpacity))
                        .animation(.easeIn(duration: 1), value: logoOpacity)

                    //Animating loader
                    HStack(spacing: 8) {

                        MeowlLottieView(animation: .loader)
                            .frame(width: 8, height: 8)
                        
//                        Circle()
//                            .fill(.white.opacity(animateDots ? 1 : 0.4))
//                            .frame(width: 8,height: 8)
//
//                        Circle()
//                            .fill(.white.opacity(animateDots ? 0.4 : 1))
//                            .frame(width: 8,height: 8)
//
//                        Circle()
//                            .fill(.white)
//                            .frame(width: 8,height: 8)

                    }
                    .animation(
                        .easeInOut(duration: 1.2)
                        .repeatForever(),
                        value: animateDots
                    )

                    Spacer()
                }

                VStack {
                    Spacer()

                    Capsule()
                        .fill(.white.opacity(0.18))
                        .overlay(
                            Capsule()
                                .stroke(.white.opacity(0.18), lineWidth: 1)
                        )
                        .frame(width: 260,height: 48)
                        .overlay(
                            Text("FOR EVERY PET, EVERY STORY")
                                .font(.plusJakartaBold(size: 15))
                                .foregroundColor(.white)
                        )

                    Capsule()
                        .fill(.white.opacity(0.25))
                        .frame(width: 140,height: 6)
                        .padding(.top,22)
                        .padding(.bottom,18)
                    
                    NavigationLink(destination: WelcomeView()) {
                        Text("FOR EVERY PET, EVERY STORY")
                            .font(.beVietnamProBold(size: 13))
                                  
                            .foregroundColor(.white)
                            .padding(.vertical, 16)
                            .padding(.horizontal, 32)
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(28)
                            .overlay(
                                RoundedRectangle(cornerRadius: 28)
                                    .stroke(Color.white.opacity(0.4), lineWidth: 1.5)
                            )
                    }
                    .padding(.bottom, 24)
                }
                .onAppear {

                    bounceLogo = true
                    floatCards = true
                    animateDots = true

                    withAnimation(.easeIn(duration: 1)) {
                        logoOpacity = 1
                    }

                }
                
            }
        }
    }
}

#Preview {
    SplashView()
}
