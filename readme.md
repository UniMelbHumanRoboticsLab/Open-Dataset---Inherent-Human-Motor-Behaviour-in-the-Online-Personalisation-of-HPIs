# Inherent Human Motor Behaviour based Online Personalisation of Human-Prosthetic Interfaces Experiment Data
Experiments performed in 2019-2020

# Directory
## Dataset: 
in .csv form, organized by different experiment modelities.
 - "Ablebody.csv": Able-body reaching experiment, 3 subjects, 30 iterations for each.
 - "ParameterSweep.csv": Synergy parameter sweep experiment, 3 subjects, 200 iterations for each. The first iteration of each parameter is excluded (so 164 iterations).
 - "PersonalisationImplementation.csv": Personalisation implementation experiment, 9 subjects, 80 iterations for each.
 - "PersonalisationImplementation_First_Last.csv": Firt and last dither period (8 iterations) of the personalisation implementation experiment for 9 subjects.
 - "PersonalisationImplementation_Last.csv": Lase dither period (8 iterations) of the personalisation implementation experiment for 9 subjects.

## Scripts: 
.m Matlab and .ipynb Jupyter Notebook scripts are used to plot the figures in paper.
 - Matlab
  - "PlotSweepResults.m", script plots the synergy-compensation synergy-perfomance relationship use datafrom "Ablebody.csv" and "ParameterSweep.csv".
  - "PlotImplementationResults.m", script plots the personalisation results use data from "PersonalisationImplementation.csv".
  - "taskplot.m", matlab function plot the scatter plots called by "PlotSweepResults.m" and "PlotImplementationResults.m"
  - "getcost.m", matlab function calculates the cost based on compensation called by "PlotSweepResults.m".

 - Python (Jupyter Notebook)
  - "Statistic-Analysis-Plot.ipynb", do statistical analysis boxplots for implementation results. Use data from "PersonalisationImplementation.csv", "PersonalisationImplementation_First_Last.csv" and "PersonalisationImplementation_Last.csv".

# Requirements: 
- Video: Latest Windows, MAC, or Linux OS and MP4 player
- Scripts:
 - Matlab: created in Matlab R2020a
 - Python: created in Jupyter Notebook (Python 3.8.3)

# License
Human Robotics Laboratory - The University of Melbourne

# Contact 
Ricardo Garcia-Rosas garcia.r@unimelb.edu.au


