function main(window)

    push!(window.assets, "widgets")

    vbox(
         link("test.jl", title(2, "test")),
         vskip(1em),
         link("test2.jl", title(2, "test2"))
         )
end
