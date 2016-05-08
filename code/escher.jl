using Gadfly

function main(window)
    push!(window.assets, "icons")

    # create the tabs
    tabbar = tabs([
        hbox(iconbutton("face"), hskip(1em), "Tab 1"),
        hbox(iconbutton("cloud"), hskip(1em), "Tab 2"),
        hbox(iconbutton("extension"), hskip(1em), "Tab 3"),
    ])

    # create the pages
    tabcontent = pages([
        title(3, "web 2 all the things"),
        plot([sin, cos], 0, 25),
        title(3, "web component all the things"),
    ])

    # connect the tabs to pages
    # returns a pair of "connected" tab set and pages
    t, p = wire(tabbar, tabcontent, :tab_channel, :selected)

    # stack them on top of each other
    vbox(t, p)
end
