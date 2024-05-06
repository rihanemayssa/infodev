#import "Class.typ": *


#show: ieee.with(
  title: [#text(smallcaps("Lab #3: Web Application with Genie"))],
  
 
  
  authors:
  (
    (
      name: "Abdelbacet Mhamdi",
      department: [Senior-lecturer, Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "a-mhamdi",
    ),

    
    (
      name: "Mayssa rihane ",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "rihanemayssa",
    ),
   
  

  )
  // index-terms: (""),
  // bibliography-file: "Biblio.bib",
)

= objectif
In this lab, we will create a basic web application using *Genie* framework in Julia. The application will allow us to control the behaviour of a sine wave, given some adjustble parameters. You are required to carry out this lab using the REPL as in @fig:repl.

#figure(
	image("Images/REPL.png", width: 100%, fit: "contain"),
	caption: "Julia REPL"
	) <fig:repl>

#exo[Sine Wave Control][We provide the Julia and HTML codes to build and run a web app that allows us to control the amplitude and frequency of a sine wave. *Plotly* is used to plot the corresponding graph.
this dashboard allows you to manipulate various parameters of a sine wave and visualize the results. we add some parameters like:
PHASE:This slider adjusts the phase of the sine wave. The range is from -0.5 to 1, with steps of 0.1.
OFFSET:This slider adjusts the offset of the sine wave. The range is from -3.141 to 3.141, with steps of 1.]

#let code=read("../Codes/web-app/app.jl")
#raw(code, lang: "julia")


#let code=read("../Codes/web-app/app.jl.html")
#raw(code, lang: "html")

```zsh
julia --project
```

```julia
julia> using GenieFramework
julia> Genie.loadapp() # Load app
julia> up() # Start server
```

We can now open the browser and navigate to the link #highlight[#link("localhost:8000")[localhost:8000]]. We will get the graphical interface as in @fig:genie-webapp.

#figure(
	image("Images/mayssa.png", width: 100%),
	caption: "Genie -> Sine Wave",
) <fig:genie-webapp>

#test[You are asked to add two extra sliders that modify the behaviour of the sine wave graph:
	+ _Phase_ ranging between $-pi$ and $pi$, changes by a step of $pi/100$
	+ _Offset_ varies from $-0.5$ to $1$, by a step of $0.1$.]

