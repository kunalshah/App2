import SwiftUI

struct CartView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                // Safe area top spacing
                Color.clear
                    .frame(height: 0)
                    .background(Color.white)
                    .ignoresSafeArea(.container, edges: .top)
                
                // Top section with title
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
                
                // Bottom section with button
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
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
        }
    }
}

#Preview {
    CartView()
}