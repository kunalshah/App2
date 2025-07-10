import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    // Welcome section
                    VStack(spacing: 12) {
                        Text("Welcome back!")
                            .font(.system(size: 24, weight: .medium))
                            .foregroundColor(.black)
                        
                        Text("Discover our latest collection")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 32)
                    
                    // Featured content cards
                    VStack(spacing: 16) {
                        Text("Featured Items")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        // Sample content cards
                        VStack(spacing: 12) {
                            FeatureCard(
                                icon: "star.fill",
                                title: "New Arrivals",
                                description: "Check out our latest products"
                            )
                            
                            FeatureCard(
                                icon: "percent",
                                title: "Special Offers",
                                description: "Don't miss our limited-time deals"
                            )
                            
                            FeatureCard(
                                icon: "heart.fill",
                                title: "Customer Favorites",
                                description: "Most loved items by our customers"
                            )
                        }
                    }
                }
                .padding(.horizontal, 24)
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

// Feature card component for consistent design
struct FeatureCard: View {
    let icon: String
    let title: String
    let description: String
    
    var body: some View {
        HStack(spacing: 16) {
            // Icon circle
            ZStack {
                Circle()
                    .stroke(Color.black, lineWidth: 1.5)
                    .frame(width: 40, height: 40)
                
                Image(systemName: icon)
                    .font(.system(size: 16))
                    .foregroundColor(.black)
            }
            
            // Text content
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.black)
                
                Text(description)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            // Arrow indicator
            Image(systemName: "chevron.right")
                .font(.system(size: 12))
                .foregroundColor(.gray)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 16)
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .cornerRadius(12)
    }
}

#Preview {
    HomeView()
}