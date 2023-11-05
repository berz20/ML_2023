fun := Sin[Sqrt[x^2 + y^2]]/Sqrt[x^2 + y^2]
plot = Plot3D[fun, {x, -5*Pi, 5*Pi}, {y, -5*Pi, 5*Pi},
  PlotPoints -> 100, BoxRatios -> {1, 1, 0.2}, PlotRange -> All]

Export["plot.png", plot]  (* Export the plot as a PNG image *)

(* Optionally, you can print a message indicating that the export was successful *)
Print["Plot saved as plot.png"]

