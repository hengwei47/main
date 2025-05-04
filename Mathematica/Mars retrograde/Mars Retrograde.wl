(* ::Package:: *)

(* ::Input:: *)
(*e=Entity["Planet","Earth"]["Mass"]//UnitConvert//QuantityMagnitude;*)
(*s=Entity["Star","Sun"]["Mass"]//UnitConvert//QuantityMagnitude;*)
(*m=Entity["Planet","Mars"]["Mass"]//UnitConvert//QuantityMagnitude;*)
(*lse=PlanetData[Entity["Planet","Earth"],"AverageOrbitDistance"]//UnitConvert//QuantityMagnitude;*)
(*lsm=PlanetData[Entity["Planet","Mars"],"AverageOrbitDistance"]//UnitConvert//QuantityMagnitude;*)
(*G=Quantity[6.67430*10^-11,("Meters")^3/("Kilograms"*("Seconds")^2)]//UnitConvert//QuantityMagnitude;*)
(*ve=PlanetData[Entity["Planet","Earth"],"AverageOrbitVelocity"]//UnitConvert//QuantityMagnitude;*)
(*vm=PlanetData[Entity["Planet","Mars"],"AverageOrbitVelocity"]//UnitConvert//QuantityMagnitude;*)
(*Te=(2\[Pi] lse)/ve//QuantityMagnitude;*)
(*Tm=(2 \[Pi] lsm)/vm//QuantityMagnitude;*)
(*resol=NDSolve[-((G e s re[t])/Norm[re[t]]^3)==e re''[t]&&re[0]=={lse,0}&&re'[0]=={0,ve},re,{t,0,Te}];*)
(*rmsol=NDSolve[-((G m s rm[t])/Norm[rm[t]]^3)==m rm''[t]&&rm[0]=={lsm,0}&&rm'[0]=={0,vm},rm,{t,0,Tm}];*)


(* ::Input:: *)
(*ListAnimate[Table[Show[ParametricPlot[re[t]/.resol,{t,0,Te},PlotLabels->Placed[{"Earth"},Above]],ParametricPlot[rm[t]/.rmsol,{t,0,Tm},PlotLabels->Placed[{"Mars"},Above]],ListPlot[{re[Mod[t,Floor[Te]]]/.resol,rm[Mod[t,Floor[Tm]]]/.rmsol,{0,0}},PlotLabels->Placed[{"Earth","Mars","Sun"},Above],PlotStyle->Red],PlotRange->{{-3*10^11,3*10^11},{-3*10^11,3*10^11}},PlotLabel->"Heliocentric Theory (Moving Orbit, 2 years)"],{t,0,2Tm,86400*5}]]*)


(* ::Input:: *)
(*rm[Mod[t,Floor[Tm]]]/. rmsol[[1]]*)


(* ::Input:: *)
(*re[Mod[t,Floor[Te]]]/. resol[[1]]*)


(* ::Input:: *)
(*rme=%%-%*)
(*rse=-%%*)


(* ::Input:: *)
(*ListAnimate[Table[Show[ParametricPlot[rme,{t,0,2Tm},PlotLabels->"Mars Orbit"],ListPlot[{0,0},PlotLabels->Placed[{"Earth"},Above],PlotStyle->Red],ListPlot[{rme},PlotStyle->Red],PlotRange->{{-4*10^11,4*10^11},{-4*10^11,4*10^11}},PlotLabel->"Mars Retrograde(Moving Orbit, 2 years of Mars)"],{t,0,2Tm,86400*5}]]*)
