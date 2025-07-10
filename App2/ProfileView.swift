import SwiftUI

struct ProfileView: View {
    @State private var isSignedIn = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Main content - centered content
                Spacer()
                
                if isSignedIn {
                    // Signed in state
                    VStack(spacing: 20) {
                        // Profile icon
                        ZStack {
                            Circle()
                                .fill(Color.black)
                                .frame(width: 60, height: 60)
                            
                            Image(systemName: "person.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                        }
                        
                        // User info
                        VStack(spacing: 8) {
                            Text("John Doe")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(.black)
                            
                            Text("john.doe@example.com")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                        }
                        
                        // Profile options
                        VStack(spacing: 12) {
                            ProfileOptionRow(icon: "person", title: "Edit Profile")
                            ProfileOptionRow(icon: "heart", title: "Wishlist")
                            ProfileOptionRow(icon: "bag", title: "Order History")
                            ProfileOptionRow(icon: "gear", title: "Settings")
                        }
                        .padding(.top, 16)
                    }
                } else {
                    // Sign in state
                    VStack(spacing: 16) {
                        // Profile icon
                        ZStack {
                            Circle()
                                .stroke(Color.black, lineWidth: 1.5)
                                .frame(width: 60, height: 60)
                            
                            Image(systemName: "person")
                                .font(.system(size: 24))
                                .foregroundColor(.black)
                        }
                        
                        // Sign in text
                        VStack(spacing: 4) {
                            Text("Sign in to your account")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.black)
                            
                            Text("Access your orders, favorites,")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                            
                            Text("and personalized recommendations.")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                        }
                        .multilineTextAlignment(.center)
                    }
                }
                
                Spacer()
                
                // Sign In/Sign Out button
                Button(action: {
                    isSignedIn.toggle()
                }) {
                    Text(isSignedIn ? "Sign Out" : "Sign In")
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
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ProfileOptionRow: View {
    let icon: String
    let title: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .frame(width: 20)
            
            Text(title)
                .font(.system(size: 14))
                .foregroundColor(.black)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 12))
                .foregroundColor(.gray)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 8)
    }
}

#Preview {
    ProfileView()
}