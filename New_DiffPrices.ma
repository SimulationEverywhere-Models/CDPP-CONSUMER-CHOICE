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
rule : {if( ((stateCount(1)>(stateCount(2)+(-2.25)) ) and (stateCount(1)>(-6.75) ) ), 1 , if( ((stateCount(2)>(stateCount(1)+(2.25))) and (stateCount(2)>(-4.5)) ), 2 , 0))} 100 {(0,0)=0}
rule : {if( ((stateCount(1)<(-11.25)) and (stateCount(2)<(-4.5)) ), 0 , if( ((stateCount(2)>(-4.5)) and (stateCount(2)>(stateCount(1)+(6.75))) ), 2 , 1))} 100 {(0,0)=1}
rule : {if( ((stateCount(2)<(-9)) and (stateCount(1)<(-6.75)) ), 0 , if( ((stateCount(1)>(stateCount(2)+(2.25))) and (stateCount(1)>(-6.75)) ), 1 , 2))} 100 {(0,0)=2}
