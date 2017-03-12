
This repo includes files for a topological data analysis of the data from the 2000 Science article "Crossing the Hopf Bifurcation in a Live Predator-Prey System", by Gregor Fussmann et. al.

So far the main contents of interest are:

1. initial exploratory data analysis report
   + ExploratoryDataAnalysis.Rmd
   + viewable at [lukewolcott.github.io/ModulatedPredatorPrey/ExploratoryDataAnalysis.html]

2. Shiny app for exploring the data
   + available at [https://lukewolcott.shinyapps.io/PredPreyCycleByRestrictingDays]

3. PDF of original Science article

## Instructions for Shiny app

The predator and prey populations were collected in 14 different trials, each set at a different dilution rate delta.  The app allows you to look at the predator population versus prey population for different delta values and for different ranges of sampling days.

1. Choose one of the 14 trials to view.  A dictionary between trial names and delta values is displayed in the bottom left.

2. The plot in the lower right shows the sampling days for different trials.  Using the double-sided slider bar in the upper right, choose a range of days to consider.

3. The app will display the predator versus prey populations for that trial and that range of days.  It also displays the number of days and number of points in that range.

4. Check the box if you wish to view population values on a log10 scale.

5. Some nice Shiny functionality: By clicking on the left end, right end, or middle of the slider bar, using the L and R keys allow you to change the day range incrementally (left end, or right end, or entire range).