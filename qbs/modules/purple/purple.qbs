import qbs.base 1.0
import "../CommonModule.qbs" as CommonModule

CommonModule {
    pkgConfigName: {
        print("CommonModule purple.qbs")
        return "purple"
    }
}
