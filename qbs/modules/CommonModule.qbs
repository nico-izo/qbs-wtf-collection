import qbs.base 1.0
import qbs.Probes

Module {
    property string pkgConfigName

    Depends { name: "cpp" }

    Probes.PkgConfigProbe {
        id: pkgConfigProbe

        condition: {
            print("[CommonModule.pkgConfigProbe.condition] pkgConfigName = ", pkgConfigName)
            return pkgConfigName !== undefined
        }
        name: pkgConfigName
    }
    
    condition: {
        print("[CommonModule.condition] = ", pkgConfigProbe.found)
        return pkgConfigProbe.found
    }

    Properties {
        condition: pkgConfigProbe.found

        //cpp.cflags: pkgConfigProbe.cflags
        // some useful stuff here
    }
}

