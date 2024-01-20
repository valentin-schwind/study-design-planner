# Study Design Planner

The "Study Design and Statistical Test Planner" is an HTML-based tool designed to assist researchers in planning and evaluating human-computer interaction (HCI) studies. It streamlines the process of selecting independent and dependent variables, estimating differences, and pooled standard deviations. The tool uses statistical power estimates with R and the Superpower package. The tool is primarily for educational and preliminary planning purposes. Users should consult with statistical experts for complex designs and method suitability. 



Users can enter study parameters (e.g., variables, effect sizes) and are guided through designing the study and choosing statistical tests. The output includes instructions and R code for ANOVA, t-tests, and regression analyses.

This github repository contains the source code for the study design planning tool such as useful for students and academic purposes to setup their own study design, conditions, and participants. The code of this repository in the R-directory is directly webhooked and compiled at opencpu to execute that R code online: https://www.opencpu.org/cloud.html Contributions and feedback are welcome. Check out the GitHub repository to contribute or report issues.

The tool uses
- OpenCPU Usage: Incorporates OpenCPU for executing R functions in the background.
- Bootstrap: For responsive design and interactive elements.
- jQuery & jQuery UI: For DOM manipulation and enhanced UI.
- OpenCPU: To integrate R functionality.
- Various JavaScript Libraries: For functionalities like random number generation and statistics.

Click <a href="https://hci-studies.org/study-design-planner/">here</a> to see our running example.

If you want to adequately <a href="https://github.com/valentin-schwind/study-design-planner/blob/master/HCIToolkit.bib"> cite</a> this work, and show us your amazing projects!

```
@inproceedings{schwind2023a,
author = {Schwind, Valentin and Resch, Stefan and Sehrt, Jessica},
title = {The HCI User Studies Toolkit: Supporting Study Designing and Planning for Undergraduates and Novice Researchers in Human-Computer Interaction},
year = {2023},
isbn = {978-1-4503-9422-2/23/04},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/10.1145/3544549.3585890},
doi = {10.1145/3544549.3585890},
booktitle = {Extended Abstracts of the 2020 CHI Conference on Human Factors in Computing Systems},
location = {Hamburg, Germany},
series = {CHI EA '23}
}
```

