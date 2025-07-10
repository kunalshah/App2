import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 2 // Start with Bag tab selected (index 2)
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                        .font(.system(size: 20))
                    Text("Home")
                        .font(.system(size: 10))
                }
                .tag(0)
            
            ShopView()
                .tabItem {
                    Image(systemName: selectedTab == 1 ? "magnifyingglass" : "magnifyingglass")
                        .font(.system(size: 20))
                    Text("Shop")
                        .font(.system(size: 10))
                }
                .tag(1)
            
            CartView()
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "bag.fill" : "bag")
                        .font(.system(size: 20))
                    Text("Bag")
                        .font(.system(size: 10))
                }
                .tag(2)
            
            FavoritesView()
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                        .font(.system(size: 20))
                    Text("Favorites")
                        .font(.system(size: 10))
                }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                        .font(.system(size: 20))
                    Text("Profile")
                        .font(.system(size: 10))
                }
                .tag(4)
        }
        .accentColor(.black)
        .onAppear {
            // Customize tab bar appearance
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithOpaqueBackground()
            tabBarAppearance.backgroundColor = UIColor.white
            
            // Customize selected tab item color
            tabBarAppearance.stackedLayoutAppearance.selected.iconColor = UIColor.black
            tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [
                .foregroundColor: UIColor.black,
                .font: UIFont.systemFont(ofSize: 10)
            ]
            
            // Customize unselected tab item color
            tabBarAppearance.stackedLayoutAppearance.normal.iconColor = UIColor.gray
            tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [
                .foregroundColor: UIColor.gray,
                .font: UIFont.systemFont(ofSize: 10)
            ]
            
            UITabBar.appearance().standardAppearance = tabBarAppearance
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
}

#Preview {
    MainTabView()
}