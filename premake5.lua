project "ReactPhysics3D"
    kind "SharedLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "include/**.h",
        "src/**.cpp",
    }
    includedirs
	{
        "%{prj.name}/include",
    }

	defines
	{
		
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
