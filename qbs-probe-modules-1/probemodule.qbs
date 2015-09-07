import qbs.Probes

Product {
    condition: {
        print("purple.present == ", purple.present)
        if(project.pkgInPlace)
            print("purple Pkg test == ", test1.found)
        return purple.present
    }
	
    qbsSearchPaths: "./qbs/"

	Depends {
        name: {
            print("We are inside Product's Depends block, name section")
            return "purple"
        }
        required: false
	}

    Probes.PkgConfigProbe {
        id: test1
        name: "purple"
        condition: project.pkgInPlace
    }
}
