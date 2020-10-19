Date: 28/9/2004
Name: Liu Qi 
Version 1 
Subject: Consumers Choice Cell-DEVS Model Simulation

This model is constructed according to model introduced in The Application of 
Cellular Automata to the Consumer's Theory: Simulating a Duopolistic Market, 
Sobei H. Oda, Kouhei Iyori, Miura Ken, and Kanji Ueda, pp. 454-461, 
Springer-Verlag Berlin Heidelberg 1999.

In this Cell-DEVS model, the market is represented as a 50*50 cell space. Each 
cell represents a potential consumer of two operating systems. We suppose that 
each consumer will periodically sign, renew, or abandon a contract with one of 
the two OS providers. 

Each cell has three possible states, i.e. 0, 1, and 2. Cells of state 0 (white 
color)represent non-users, cells of state 1 (blue color) represent users of OS1,
and cells of state 2 (red color) represent users of OS2.

At the beginning of each time step, each cell will determine its next state value
using the local transition rules. 

Note: 
1. White cells represent non-users, blue cells represent users of OS1, and red 
   cells represent users of OS2. The PAL file used in this simulation is 
   Consumerschoice.pal.
2. The name of the script to run simulation is of format MarketType_PriceCondition.bat,
   while the name of the script to drawlog the model is of format MarketType_PriceCondition_DRWLOG.bat.
3. The initial values of the cell space for the mature market is provided by 
   matureMarket.VAL, while the initial values of the cell space for the new market
   is provided by newMarket.VAL.

Case 1: Mature market with identical prices
Simulation settings:
  Umin = 0.4, Umax = 0.8, ¦Ë = ¦È = 0.5, POS1 = POS2 = 0.25
Simulation scripts and related files:
  Mature_SamePrices.bat, Mature_SamePrices_DRWLOG.bat, 
  Mature_SamePrices.ma, Mature_SamePrices.log, Mature_SamePrices.drw,  
  matureMarket.VAL, Consumerschoice.pal
  
Case 2: Mature market with different prices
Simulation settings:
  Umin = 0.4, Umax = 0.8, ¦Ë = ¦È = 0.5, POS1 = 0.25, POS2 = 0.3
Simulation scripts and related files:
  Mature_DiffPrices.bat, Mature_DiffPrices_DRWLOG.bat, 
  Mature_DiffPrices.ma, Mature_DiffPrices.log, Mature_DiffPrices.drw,   
  matureMarket.VAL, Consumerschoice.pal
 
Case 3: Mature market with fluctuant prices
In this case, the global prices for both systems remain constant, yet the local 
price for each consumer fluctuates according to the consumer¡¯s local market 
environments (market within the cell¡¯s neighborhood). Both providers will raise 
their prices for a consumer if they have a larger market share within the 
consumer¡¯s local market. Otherwise, they will lower their prices for a consumer 
if their market share lags behind their competitors. We suppose that the global 
prices and local price bounds are the same for both providers. However, provider2 
allows the local price of its product more volatile (¦Ì2 = 1) than procider1 (¦Ì1 = 0.2).
Simulation settings:
  Umin = 0.4, Umax = 0.8, ¦Ë = ¦È = 0.5, Q1 = Q2 = 0.1, R1max = R2max =0.15, R1min = R2min =0.05, ¦Ì1 = 0.2, ¦Ì2 = 1
Simulation scripts and related files:
  Mature_FlucPrices.bat, Mature_FlucPrices_DRWLOG.bat, 
  Mature_FlucPrices.ma, Mature_FlucPrices.log, Mature_FlucPrices.drw,   
  matureMarket.VAL, Consumerschoice.pal
  
Case 4: New market with identical prices
In this case, the same settings and rules as in case 1 (Mature market with identical 
prices) are applied to a cell space representing a new market in order to show the 
differences between dynamics of a mature market and a new market. The new market 
is represented as a cell space with a small number of scattered users.
Simulation scripts and related files:
  New_SamePrices.bat, New_SamePrices_DRWLOG.bat, 
  New_SamePrices.ma, New_SamePrices.log, New_SamePrices.drw, 
  newMarket.VAL, Consumerschoice.pal
  
Case 5: New market with different prices
In this case, the same settings and rules as in case 2 (Mature market with different
prices) are applied to a cell space representing a new market.
Simulation scripts and related files:
  New_DiffPrices.bat, New_DiffPrices_DRWLOG.bat, 
  New_DiffPrices.ma, New_DiffPrices.log, New_DiffPrices.drw,   
  newMarket.VAL, Consumerschoice.pal
  
Case 6: New market with fluctuant prices
To focus our study on what impact will be exerted on the new market by price 
fluctuation, we eliminate the global price factor in this case. At the same time, 
the difference between the minimum and maximum local prices is enlarged to give 
more flexibility in exploiting the new market. Again, we suppose that the global 
prices and local price bounds are the same for both providers, while provider2 
allows the local price of its product more volatile (¦Ì2 = 1) than procider1 (¦Ì1 = 0.2).
Simulation settings:
  Umin = 0.4, Umax = 0.8, ¦Ë = ¦È = 0.5, 
  Q1 = Q2 = 0, R1max = R2max =0.3, R1min = R2min =0, ¦Ì1 = 0.2, ¦Ì2 = 1
Simulation scripts and related files:
  New_FlucPrices.bat, New_FlucPrices_DRWLOG.bat, 
  New_FlucPrices.ma, New_FlucPrices.log, New_FlucPrices.drw,   
  newMarket.VAL, Consumerschoice.pal

A Java utility program (RandomInitValues) is used to create VAL files for 
simulating mature markets, the source code for this program can be found 
in the Appendix of the final report. 



