import SwiftUI

struct ContentView: View {
    @State var tasks: [Task] = [Task(nameOfTask:"Mow the Lawn"), Task(nameOfTask:"Feed the Pets"), Task(nameOfTask:"Do the Dishes")]
    var body: some View {
        HeaderView(tasks: $tasks)
        Text("List Keeper")
            .font(.largeTitle)
            .foregroundStyle(.blue)
            .shadow(radius: 10)
        List(tasks, id: \.self) { task in
            Text(task.nameOfTask)
        }
        .padding()
        .foregroundStyle(.red)
        .font(.custom("Chalkduster", size: 30))
        .shadow(radius: 10)
        Button("Clear All Tasks") {
            tasks.removeAll()
        }
    }
}

#Preview {
    ContentView()
}
