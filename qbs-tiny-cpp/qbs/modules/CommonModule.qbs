import qbs.base 1.0
import "../imports/probes/SomeRandomProbe.qbs" as SomeRandomProbe

Module {
    property string moduleName

    Depends { name: "cpp" }

    SomeRandomProbe {
        id: probe

        condition: true
        probeName: moduleName
    }
    
    condition: probe.found

    Properties {
        condition: probe.found
        cpp.defines: probe.cppDefines
    }
}

