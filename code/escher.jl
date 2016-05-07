using Compose

function main(window)
    # Load HTML dependencies related to the slider
    push!(window.assets, "widgets")

     # create a Signal which holds the number of iterations to show
     # the starting value is 5
    iterations = Signal(5)

     # link a widget to the iterations Signal to create a connected_slider
    connected_slider = subscribe(iterations, slider(0:7, value=5))

    # create a Signal of UI as a return UI_expression
    map(iterations) do n
        vbox(
            connected_slider,
            sierpinski(n)
        )
    end
end
