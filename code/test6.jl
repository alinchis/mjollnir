
function main(window)
    push!(window.assets,"widgets")
    push!(window.assets,"layout2")
    push!(window.assets,"icons")

    vtabbar = vtabs([icon("icons:explore"),
                     icon("icons:face"),
                     icon("icons:extension")
                     ])

    vtabcontent = pages([link("test.jl", "page 1"),
                         link("test2.jl", "page 2"),
                         link("test4.jl", "page 3")
                         ])

    t, p = wire(vtabbar, vtabcontent, :tab_channel, :selected)

    vbox(t, hskip(1em), p)
end
