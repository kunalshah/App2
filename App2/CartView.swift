import SwiftUI

struct CartView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                // Top section with title
                VStack {
                    HStack {
                        Text("Bag")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 16)
                    .padding(.bottom, 8)
                }
                
                // Middle section - flexible space with centered content
                Spacer()
                
                VStack(spacing: 16) {
                    // Shopping bag icon
                    ZStack {
                        Circle()
                            .stroke(Color.black, lineWidth: 1.5)
                            .frame(width: 60, height: 60)
                        
                        Image(systemName: "bag")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                    }
                    
                    // Empty bag text
                    VStack(spacing: 4) {
                        Text("Your Bag is empty.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.black)
                        
                        Text("When you add products, they'll")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        
                        Text("appear here.")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                    .multilineTextAlignment(.center)
                }
                
                Spacer()
                
                // Bottom section with button and tab bar
                VStack(spacing: 0) {
                    // Shop Now button
                    Button(action: {
                        // Button action
                    }) {
                        Text("Shop Now")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.black)
                            .cornerRadius(25)
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 24)
                    
                    // Tab bar
                    HStack {
                        // Home tab
                        VStack(spacing: 4) {
                            Image(systemName: "house")
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                            Text("Home")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        
                        // Shop tab
                        VStack(spacing: 4) {
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                            Text("Shop")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        
                        // Favorites tab
                        VStack(spacing: 4) {
                            Image(systemName: "heart")
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                            Text("Favorites")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        
                        // Bag tab (selected)
                        VStack(spacing: 4) {
                            Image(systemName: "bag.fill")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                            Text("Bag")
                                .font(.system(size: 10))
                                .foregroundColor(.black)
                        }
                        .frame(maxWidth: .infinity)
                        
                        // Profile tab
                        VStack(spacing: 4) {
                            Image(systemName: "person")
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                            Text("Profile")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 12)
                    .background(Color.white)
                    
                    // Home indicator
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 134, height: 5)
                        .cornerRadius(2.5)
                        .padding(.bottom, 8)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    CartView()
}