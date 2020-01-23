using Documenter, GPUArrays

makedocs(
    modules = [GPUArrays],
    format = Documenter.HTML(
        # Use clean URLs on CI
        prettyurls = get(ENV, "CI", nothing) == "true",
        assets = ["assets/favicon.ico"],
        analytics = "UA-154489943-6",
    ),
    sitename = "GPUArrays.jl",
    pages = [
        "Home"          => "index.md",
        "Interface"     => "interface.md",
        "Functionality" => [
            "functionality/host.md",
            "functionality/device.md",
        ],
        "Test suite"    => "testsuite.md",
    ],
    doctest = true,
)

deploydocs(
    repo = "github.com/JuliaGPU/GPUArrays.jl.git"
)
