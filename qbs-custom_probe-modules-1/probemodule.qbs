import qbs.Probes
import "./qbs/imports/probes/SomeRandomProbe.qbs" as SomeRandomProbe

Product {
    condition: {
        print("some_great_lib.present == ", some_great_lib.present)

        //print("ololo1 using same Probe, but directly: ", ololo1.found)
        return some_great_lib.present
    }
	
    qbsSearchPaths: "./qbs/"

    Depends {
        name: {
            print("We are inside Product's Depends block, name section")
            return "some_great_lib"
        }
        required: false
	}

    /*SomeRandomProbe {
        id: ololo1
        probeName: "ololo1"
    }*/
}
