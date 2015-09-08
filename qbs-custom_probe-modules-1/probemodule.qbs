import qbs.Probes

Product {
    condition: {
        print("some_great_lib.present == ", some_great_lib.present)

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
}
