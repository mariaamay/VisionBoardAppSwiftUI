import SwiftUI

struct VisionCardView: View {
    
    let item: VisionItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: CGFloat.random(in: 120...220))
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Text(item.title)
                .font(.headline)
                .lineLimit(2)
                .padding()
        }
    }
}

#Preview {
    VisionCardView(item: VisionItem.items[0])
}
