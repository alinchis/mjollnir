##
# This example just renders the most resent user event type as
# a string. It demonstrates the round trip latency of the system
#
@require "github.com/jkroso/Cursor.jl" Cursor need
@require "github.com/jkroso/DOM.jl" Container exports...
@require "." App Window

Base.convert(::Type{Container{:html}}, c::Cursor) = begin
  change(e) = put!(c, e)
  @dom [:html
    css"""
    height: 100%
    width:100%
    margin: 0px
    overflow: hidden
    background-image: linear-gradient(to bottom, #58c 0%, #3162a3 100%)
    """

    [:head stylesheets...]
    [:body css"""
           display: flex
           justify-content: space-around
           align-items: center
           background-image: linear-gradient(0deg, transparent 0%, transparent 9px, rgba(255, 255, 255, 0.2) 9px, rgba(255, 255, 255, 0.2) 10px, transparent 10px, transparent 19px, rgba(255, 255, 255, 0.1) 19px, rgba(255, 255, 255, 0.1) 20px, transparent 20px, transparent 29px, rgba(255, 255, 255, 0.1) 29px, rgba(255, 255, 255, 0.1) 30px, transparent 30px, transparent 39px, rgba(255, 255, 255, 0.1) 39px, rgba(255, 255, 255, 0.1) 40px, transparent 40px, transparent 49px, rgba(255, 255, 255, 0.1) 49px, rgba(255, 255, 255, 0.1) 50px), linear-gradient(-90deg, transparent 0%, transparent 9px, rgba(255, 255, 255, 0.2) 9px, rgba(255, 255, 255, 0.2) 10px, transparent 10px, transparent 19px, rgba(255, 255, 255, 0.1) 19px, rgba(255, 255, 255, 0.1) 20px, transparent 20px, transparent 29px, rgba(255, 255, 255, 0.1) 29px, rgba(255, 255, 255, 0.1) 30px, transparent 30px, transparent 39px, rgba(255, 255, 255, 0.1) 39px, rgba(255, 255, 255, 0.1) 40px, transparent 40px, transparent 49px, rgba(255, 255, 255, 0.1) 49px, rgba(255, 255, 255, 0.1) 50px)
           background-size: 50px 50px
           """
           onclick=change
           onmousemove=change
           onkeydown=change
      [:pre repr(need(c))]]]
end

const app = App("Mjollnir")

const window = Window(app, Text("Loading"), width=1200,
                                            height=700,
                                            titleBarStyle=:hidden)

wait(app) # keeps the process open
