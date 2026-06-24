//
//  SplashView.swift
//  Meowl
//
//  Created by Harshika Sharma on 24/06/26.
//


import SwiftUI

struct SplashView: View {
    @State private var animateDots = false
    @State private var bouncePaw = false
    @State private var logoOpacity = 0.0
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(hex: "ff7b9a"), // Bright Coral tint
                    Color(hex: "b890fe"), // Purple-blue tint
                    Color(hex: "956cff")  // Vibrant lavender
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            // Decorative background elements (floating pet cards)
            VStack {
                HStack {
                    Image(systemName: "cat.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.white.opacity(0.12))
                        .rotationEffect(.degrees(-15))
                        .offset(x: 20, y: 40)
                    Spacer()
                }
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "dog.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.white.opacity(0.12))
                        .rotationEffect(.degrees(20))
                        .offset(x: -20, y: -40)
                }
            }
            
            // Center Logo Card
            VStack(spacing: 24) {
                Spacer()
                
                // Icon Card
                VStack {
                    Image(systemName: "pawprint.fill")
                        .font(.system(size: 60))
                        .foregroundColor(Color.meowlPrimary)
                        .scaleEffect(bouncePaw ? 1.05 : 0.95)
                        .onAppear {
                            withAnimation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true)) {
                                bouncePaw = true
                            }
                        }
                }
                .frame(width: 140, height: 140)
                .background(Color.white)
                .cornerRadius(40)
                .shadow(color: Color.black.opacity(0.12), radius: 30, x: 0, y: 15)
                
                // Brand Text
                Text("Meowl")
                    .font(.custom("PlusJakartaSans-ExtraBold", size: 36))
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    .opacity(logoOpacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.0)) {
                            logoOpacity = 1.0
                        }
                    }
                
                // Carousel Dots
                HStack(spacing: 8) {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 8, height: 8)
                    Circle()
                        .fill(Color.white.opacity(animateDots ? 1.0 : 0.4))
                        .frame(width: 8, height: 8)
                    Circle()
                        .fill(Color.white.opacity(animateDots ? 0.4 : 1.0))
                        .frame(width: 8, height: 8)
                }
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.2).repeatForever()) {
                        animateDots.toggle()
                    }
                }
                
                Spacer()
                
                // Bottom Button
                NavigationLink(destination: WelcomeView()) {
                    Text("FOR EVERY PET, EVERY STORY")
                        .font(.custom("BeVietnamPro-Bold", size: 13))
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
        }
    }
}

#Preview {
    NavigationView {
        SplashView()
    }
}
