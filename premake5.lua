project "Glad"
	language "C"
	kind "StaticLib"
	systemversion "latest"
	location "./"

	targetdir("%{wks.location}/bin/"..outdir)
	objdir("%{wks.location}/bin-int/"..outdir)

	includedirs {
		"./include/"	
	}
	files {
		"./src/glad.c"
	}

	filter "configurations:Debug*"
		symbols "On"
		optimize "Off"

	filter "configurations:Release*"
		symbols "On"
		optimize "Debug"

	filter "configurations:Dist*"
		symbols "Off"
		optimize "Speed"
