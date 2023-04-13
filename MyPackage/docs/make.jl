using Documenter, MyPackage

const liveserver = "liveserver" in ARGS

if liveserver
    using Revise
    Revise.revise()
end

makedocs(
    sitename = "MyPackage",
    pages = Any[
        "Home" => "index.md",
    ]
)
