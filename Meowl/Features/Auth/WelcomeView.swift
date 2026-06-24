//
//  WelcomeView.swift
//  Meowl
//
//  Created by Harshika Sharma on 24/06/26.
//


import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 24) {
            // Header
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("Skip")
                        .meowlLabelMd()
                        .foregroundColor(Color.meowlOnSurfaceVariant)
                }
            }
            .padding(.horizontal, 24)
            .padding(.top, 16)
            
            // Premium Illustration Card
            ZStack(alignment: .topTrailing) {
                ZStack(alignment: .bottomLeading) {
                    // Pet photo (hotlinked Unsplash/Google image as replacement)
                    AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1517849845537-4d257902454a?auto=format&fit=crop&q=80&w=800")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        Rectangle()
                            .fill(Color.meowlSurfaceMedium)
                            .overlay(ProgressView())
                    }
                    .frame(height: 380)
                    .cornerRadius(32)
                    .clipped()
                    
                    // Bottom-left loved badge
                    HStack(spacing: 6) {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 14))
                        Text("Loved")
                            .meowlLabelMd()
                    }
                    .foregroundColor(.white)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(Color.meowlSecondaryContainer)
                    .cornerRadius(100)
                    .offset(x: 16, y: -16)
                }
                
                // Top-right playful badge
                HStack(spacing: 6) {
                    Image(systemName: "pawprint.fill")
                        .font(.system(size: 14))
                    Text("Playful")
                        .meowlLabelMd()
                }
                .foregroundColor(.white)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .background(Color.meowlTertiaryContainer)
                .cornerRadius(100)
                .offset(x: -16, y: 16)
            }
            .padding(.horizontal, 24)
            
            // Brand Accent
            HStack(spacing: 8) {
                Image(systemName: "pawprint.fill")
                    .foregroundColor(.meowlPrimary)
                    .font(.title3)
                Text("Meowl")
                    .font(.custom("PlusJakartaSans-Bold", size: 24))
                    .foregroundColor(.meowlPrimary)
            }
            
            // Copywriting Section
            VStack(spacing: 12) {
                Text("Welcome to Meowl")
                    .meowlHeadlineLg()
                    .foregroundColor(.meowlOnSurface)
                    .multilineTextAlignment(.center)
                
                Text("The wholesome community for pet lovers.")
                    .meowlBodyLg()
                    .foregroundColor(.meowlOnSurfaceVariant)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
            }
            
            Spacer()
            
            // Navigation indicators & CTA Button
            VStack(spacing: 16) {
                // Swipe Indicator (Pink Progress line)
                HStack(spacing: 4) {
                    RoundedRectangle(cornerRadius: 3)
                        .fill(Color.meowlPrimary)
                        .frame(width: 32, height: 6)
                    Circle()
                        .fill(Color.meowlOutlineVariant)
                        .frame(width: 6, height: 6)
                    Circle()
                        .fill(Color.meowlOutlineVariant)
                        .frame(width: 6, height: 6)
                }
                
                // Join the pack (Navigate to Step 1 or Sign in)
//                NavigationLink(destination: Step1PetTypeView()) {
//                    HStack {
//                        Text("Let's Get Started")
//                            .meowlLabelMd()
//                            .fontWeight(.bold)
//                        Image(systemName: "arrow.right")
//                    }
//                    .frame(maxWidth: .infinity)
//                    .frame(height: 56)
//                    .background(Color.meowlPrimary)
//                    .foregroundColor(.white)
//                    .cornerRadius(24)
//                    .padding(.horizontal, 24)
//                    .shadow(color: Color.meowlPrimary.opacity(0.15), radius: 10, x: 0, y: 5)
//                }
                
                // Log in link
                NavigationLink(destination: LoginView()) {
                    HStack {
                        Text("Already have an account?")
                            .foregroundColor(.meowlOnSurfaceVariant)
                        Text("Log In")
                            .foregroundColor(.meowlPrimary)
                            .fontWeight(.bold)
                    }
                    .meowlBodyMd()
                }
            }
            .padding(.bottom, 24)
        }
        .background(Color.meowlBackground.ignoresSafeArea())
        .navigationBarHidden(true)
    }
}
