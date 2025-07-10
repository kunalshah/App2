import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Main content - centered empty state
                Spacer()
                
                VStack(spacing: 16) {
                    // Heart icon
                    ZStack {
                        Circle()
                            .stroke(Color.black, lineWidth: 1.5)
                            .frame(width: 60, height: 60)
                        
                        Image(systemName: "heart")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                    }
                    
                    // Empty favorites text
                    VStack(spacing: 4) {
                        Text("Your Favorites is empty.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.black)
                        
                        Text("When you add products to favorites,")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        
                        Text("they'll appear here.")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                    .multilineTextAlignment(.center)
                }
                
                Spacer()
                
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
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    FavoritesView()
}