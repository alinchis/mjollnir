using Escher, Compose, Gadfly

function sierpinski(n)
    if n == 0
        compose(context(), polygon([(1,1), (0,1), (1/2, 0)]))
    else
        t = sierpinski(n - 1)
        compose(context(),
                (context(1/4,   0, 1/2, 1/2), t),
                (context(  0, 1/2, 1/2, 1/2), t),
                (context(1/2, 1/2, 1/2, 1/2), t))
    end
end


function main(window)
    push!(window.assets, "layout2")
    push!(window.assets, "widgets")
    push!(window.assets, "icons")

    tabbar = tabs([
                   hbox(icon("icons:explore"), hskip(1em), "Tab 1"),
                   hbox(icon("icons:face"), hskip(1em), "Tab 2"),
                   hbox(icon("icons:extension"), hskip(1em), "Tab 3"),
                   ])

    # create the pages
    tabcontent = pages([
                        sierpinski(5),
                        plot([sin, cos], 0, 25),
                        title(3, "web component of all the things")
                        ])

    # connect the tabs to pages
    # returns a pair of "connected" tab set and pages
    t, p = wire(tabbar, tabcontent, :tab_channel, :selected)

    # stack them on top of each other
    
    vbox(vskip(1em),t,vskip(1em),p,vskip(2em),Elem(:h1, "Hello, World!", className="welcome", style=Dict(:color => :white, :backgroundColor => :gray)))
end
