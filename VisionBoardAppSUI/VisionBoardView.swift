import SwiftUI

struct VisionBoardView: View {
    let items: [VisionItem] = VisionItem.items
    var body: some View {
        ScrollView {
            HStack(alignment: .top, spacing: 12) {
                
                LazyVStack(spacing: 12) {
                    ForEach(leftColumnItems) { item in
                        VisionCardView(item: item)
                    }
                }
                
                LazyVStack(spacing: 12) {
                    ForEach(rightColumnItems) { item in
                        VisionCardView(item: item)
                    }
                }
            }
            .padding()
        }
    }

    var leftColumnItems: [VisionItem] {
        stride(from: 0, to: items.count, by: 2).map { items[$0] }
    }
    
    var rightColumnItems: [VisionItem] {
        stride(from: 1, to: items.count, by: 2).map { items[$0] }
    }
}
