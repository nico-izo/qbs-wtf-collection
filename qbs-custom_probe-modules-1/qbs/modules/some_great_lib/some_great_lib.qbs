import qbs.base 1.0
import "../CommonModule.qbs" as CommonModule

CommonModule {
    probeName: {
        print("CommonModule some_great_lib")
        return "some_great_lib"
    }
}
