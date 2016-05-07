using Markdown

text=md"hello escher"

function main(window)
    ###layout###
    push!(window.assets,"tex")
    push!(window.assets,"codemirror")
    
    box = fillcolor("blue", size(5em, 5em, text))
    
    vbox(
         title(2, "fereastra escher"),

         vskip(1em),

         md"""
         # Heading 1
         Hello, Markdown!
         ## Heading 2
         # *Heading 1 in Italics*
         ## **HEADING 2 in BOLD**
         """,

         vskip(1em),

         codemirror("""
             function foo()
                 1+1
             end
         """),

         vskip(1em),
         
         intersperse(
                     vskip(1em),
                     [title(i, "intersperse(i, 'text') function") for i=1:3]
         )... ,

         vskip(1em),

         vbox(
              hbox(text, hskip(1em), text) |> packitems(center),
              vskip(1em),
              hbox(box, hskip(1em), box) |> packacross(axisend),
              vskip(1em),
              hbox(box, hskip(0em)) |> packitems(center)
              ) |> packacross(axisstart),

         vskip(2em),

         vbox(
              hbox(box, hskip(1em), text),
              vskip(1em),
              hbox(text, hskip(1em), box)
              ) |> packacross(axisend)
         
         ) |> packitems(center)
    ###
    
end
