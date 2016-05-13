

function main(window)
    push!(window.assets, "test")

    vbox(
         slider(1:10),
         plaintext("testing")
         )
end
