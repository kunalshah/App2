import SwiftUI

struct ShopView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Search bar section
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                        
                        TextField("Search products...", text: $searchText)
                            .font(.system(size: 16))
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 24)
                
                // Main content - categories and suggestions
                ScrollView {
                    VStack(spacing: 20) {
                        // Popular Categories
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Text("Popular Categories")
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(.black)
                                Spacer()
                            }
                            .padding(.horizontal, 24)
                            
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 12), count: 2), spacing: 12) {
                                CategoryCard(title: "Electronics", icon: "laptop", color: Color.blue.opacity(0.1))
                                CategoryCard(title: "Fashion", icon: "tshirt", color: Color.pink.opacity(0.1))
                                CategoryCard(title: "Home & Garden", icon: "house", color: Color.green.opacity(0.1))
                                CategoryCard(title: "Sports", icon: "figure.run", color: Color.orange.opacity(0.1))
                            }
                            .padding(.horizontal, 24)
                        }
                        
                        // Trending Searches
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Text("Trending Searches")
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(.black)
                                Spacer()
                            }
                            .padding(.horizontal, 24)
                            
                            VStack(spacing: 8) {
                                ForEach(trendingSearches, id: \.self) { search in
                                    Button(action: {
                                        searchText = search
                                    }) {
                                        HStack {
                                            Image(systemName: "magnifyingglass")
                                                .font(.system(size: 14))
                                                .foregroundColor(.gray)
                                            
                                            Text(search)
                                                .font(.system(size: 16))
                                                .foregroundColor(.black)
                                            
                                            Spacer()
                                            
                                            Image(systemName: "arrow.up.left")
                                                .font(.system(size: 12))
                                                .foregroundColor(.gray)
                                        }
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 12)
                                        .background(Color.gray.opacity(0.05))
                                        .cornerRadius(8)
                                    }
                                }
                            }
                            .padding(.horizontal, 24)
                        }
                    }
                }
            }
            .navigationTitle("Shop")
            .navigationBarTitleDisplayMode(.large)
        }
    }
    
    // Sample trending searches
    private let trendingSearches = [
        "iPhone 15 Pro",
        "Nike Air Max",
        "MacBook Pro",
        "Samsung TV",
        "Wireless Headphones"
    ]
}

struct CategoryCard: View {
    let title: String
    let icon: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 12) {
            ZStack {
                Circle()
                    .fill(color)
                    .frame(width: 50, height: 50)
                
                Image(systemName: icon)
                    .font(.system(size: 24))
                    .foregroundColor(.black)
            }
            
            Text(title)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 2)
    }
}

#Preview {
    ShopView()
}