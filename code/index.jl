using Gadfly

function main(window)
    push!(window.assets, "widgets")

    # create the signal to hold the button value
    click = Signal(0)

    # create and connect the button to the signal
    bttn = subscribe(click, button("Click"))

    # create the value list and the iterator
    values = [1:100]
    i = 0
    
    map(click) do _

        # increase iterator
        # since it is called for every click, you should be able to use a function to fetch the values
        i += 1

    vbox(
         # draw the button
         bttn,
         vskip(2em),

         # draw the plot
         plot(x = values[i:10*i], y = 2*values[i:10*i], Geom.line),
         ) |> maxwidth(500px)

    end     
end
