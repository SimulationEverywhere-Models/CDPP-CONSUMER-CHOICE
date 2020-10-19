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
initialcellsvalue : matureMarket.VAL
localtransition : choose_rule

[choose_rule]
rule : {if( ((stateCount(1)>(((-0.1111)*stateCount(2))+(-12.5)) ) and (stateCount(1)>stateCount(2)) ), 1 , if( ( (stateCount(2)>(((-1)*stateCount(1))+(-22.5))) and (stateCount(2)>stateCount(1)) ), 2 , 0))} 100 {(0,0)=0}
rule : {if( ((stateCount(1)<(((-0.1111)*stateCount(2))+(-17.5)) ) and (stateCount(1)<(((-1)*stateCount(2))+(-22.5))) ), 0 , if( ((stateCount(1)>(((-1)*stateCount(2))+(-22.5))) and (stateCount(2)>(stateCount(1)+(1.125))) ), 2 , 1))} 100 {(0,0)=1}
rule : {if( ((stateCount(1)<(((-0.1111)*stateCount(2))+(-12.5)) ) and (stateCount(1)<(((-1)*stateCount(2))+(-31.5))) ), 0 , if( ((stateCount(1)>(((-0.1111)*stateCount(2))+(-12.5))) and  (stateCount(1)>(stateCount(2)+(11.25))) ), 1 , 2))} 100 {(0,0)=2}
