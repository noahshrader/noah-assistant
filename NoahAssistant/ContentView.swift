import SwiftUI

struct ContentView: View {
    @State private var subtitle = "Modern Glass UI"

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.thinMaterial)
                .ignoresSafeArea()

            VStack(spacing: 14) {
                Text("Meridyan Desktop")
                    .font(.system(size: 36, weight: .semibold, design: .rounded))
                    .tracking(0.2)

                Text(subtitle)
                    .font(.title3)
                    .foregroundStyle(.secondary)

                Button("Run Action") {
                    subtitle = "Action Complete"
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
            .padding(36)
            .frame(maxWidth: 560)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .strokeBorder(.white.opacity(0.22), lineWidth: 1)
            )
            .shadow(color: .black.opacity(0.16), radius: 20, y: 12)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding(28)
    }
}

#Preview {
    ContentView()
}
