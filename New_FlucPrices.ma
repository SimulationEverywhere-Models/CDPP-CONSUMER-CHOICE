[top]
components : consumerschoice

[consumerschoice]
type : cell
dim : (50, 50)
delay : transport
defaultDelayTime : 100
border : wrapped 
neighbors : consumerschoice(-1,-1)  consumerschoice(-1,0) consumerschoice(-1,1) 
neighbors : consumerschoice(0,-1)  consumerschoice(0,0)  consumerschoice(0,1)
neighbors : consumerschoice(1,-1)  consumerschoice(1,0)  consumerschoice(1,1)
initialvalue : 0
initialcellsvalue : newMarket.VAL
localtransition : choose_rule

[choose_rule]
rule : {if( ((stateCount(1)>(((-0.4286)*stateCount(2))+(-25.71)) ) and (stateCount(2)>stateCount(1)) ), 1 , if( ( (stateCount(1)>(((0.3333)*stateCount(2))+(-12))) and (stateCount(1)>stateCount(2)) ), 2 , 0))} 100 {(0,0)=0}
rule : {if( ((stateCount(1)<(((-0.4286)*stateCount(2))+(-32.14)) ) and (stateCount(1)<(((0.3333)*stateCount(2))+(-12))) ), 0 , if( ((stateCount(1)>(stateCount(2)+(5.625))) and (stateCount(1)>(((0.3333)*stateCount(2))+(-12))) ), 2 , 1))} 100 {(0,0)=1}
rule : {if( ((stateCount(1)<(((-0.4286)*stateCount(2))+(-25.71)) ) and (stateCount(1)<(((0.3333)*stateCount(2))+(-15))) ), 0 , if( ((stateCount(1)>(((-0.4286)*stateCount(2))+(-25.71))) and  (stateCount(2)>(stateCount(1)+(5.625))) ), 1 , 2))} 100 {(0,0)=2}
