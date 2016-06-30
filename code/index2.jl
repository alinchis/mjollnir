#using Gadfly

function main(window)
    push!(window.assets, "datepicker")
    push!(window.assets, "widgets")

    Elem("paper-date-picker", id="picker", forceNarrow="true")

#    textin = Signal("Placeholder text")
#    textwidget = Elem("paper-input", placeholder="Type here")
#    textwidget = textinput(label="Type here", charcounter=true) >>> textin
    
#    map(textin) do val
#        vbox(textwidget, val)
#    end
    
end
