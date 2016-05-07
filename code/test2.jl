using Gadfly

function handleToggleButton(b::Bool)
    if b
        return "activat"
    else
        return "dezactivat"
    end
end

function main(window)
    push!(window.assets,"widgets")

    semnal = Signal(0)
    semnal2 = Signal(false)
    clicks = Signal{Any}(leftbutton)
    
    vbox(
         ### exemplu de plot cu Gadfly ###
         vbox(
              subscribe(semnal, slider(0:360)), ### subscribe(::Signal, ::Tile)
              map(x -> plot(y -> sin(x * y), 0, 100), semnal), ### x <- semnal
              title(2, semnal), ### text-titlu cu valoarea semnalului
              map(x -> size(x*1.5*Escher.px, 2em, empty) |> fillcolor("red"), semnal)
              ),

         vskip(1em),

         ### exemplu utilizare togglebutton
         vbox(
              subscribe(semnal2, togglebutton()),
              plaintext(typeof(semnal2)),
              map(x -> title(2, handleToggleButton(x)), semnal2)
              ),

         vskip(1em),

         vbox(
              clickable([leftbutton, rightbutton, scrollbutton], title(2, "clickable text")) >>> clicks,
              map(x -> title(1,x), clicks)
             )
         
         ) |> pad(4em)

    
end
