# Assignment 3 Visualization using Python

## Data & Link
Dinesafe
Data is about Dinesafe, a Toronto Public Health's food safety program. Each record represents a inspection result regarding safety of all establishement serving and preparing food.
https://open.toronto.ca/dataset/dinesafe/

## Software used
This visualization was created using **Python** with the **matplotlib** libraries.

## Intended audience
Public health officials, city policymakers, food establishment owners, and Toronto residents concerned about food safety trends.

## Messages to be delivered
This plot shows the **proportion of food safety inspection outcomes (severity levels) over time** in Toronto. Each line represents a different severity level (“No Infractions”, “Minor”, “Significant”, “Crucial”) and shows how the relative share of inspections falling into each category has changed annually.
The plot reveals that the **proportion of No Infractions has decreased over time**, while there is an **increasing likelihood of Significant infractions**. **Minor infractions have generally increased** as well, whereas **Crucial infractions have remained relatively stable** across years. This indicates that over the years, food safety issues have become more severe, highlighting the need for stronger policy-level interventions and regulatory efforts.

## Design considerations
In order to accurately reflect the time trend of inspection proportion changes by severity level, I selected a line plot to represent severity outcomes by year. Using a common scale, the vertical position of each marker indicates the proportion scale, while the horizontal position represents different years. Different color hues and marker shapes were used to distinguish levels of infraction severity. For each line, the position of the markers illustrates the changes in a specific severity level over time.
I also reordered the severity levels for better perceptual clarity. The font sizes of the titles and labels were increased and the title was bolded to improve readability. Additionally, I moved the legend outside the plotting area to avoid overlapping with the lines and to enhance the overall visual presentation.

## Reproducibility.
Open-source data was used for this analysis. All data cleaning and plotting were conducted within a single Python script, with no manual steps applied to the figure. The dataset and code are housed together to ensure others can rerun the process and produce the same result. Comments were also added to improve the reproducibility.

## Accessibility
To enhance accessibility, the viridis palette was used to accommodate viewers with color vision deficiencies. Distinct marker shapes were assigned to each line to reduce reliance on color alone. Arial typeface and increased font sizes were applied for easier reading, including for individuals with dyslexia or low vision. The legend was positioned outside the plot for clarity, and description text was added for better clarity.

## Potential impact
This visualization may help Toronto Public Health and food safety inspectors monitor and **understand inspection severity trends across the city**. The plot shows a decreasing trend in no infractions, alongside an increasing trend in significant and minor infractions, while crucial infractions have remained relatively stable. This indicates a potential worsening in overall food safety compliance over time. Public health officials can use this information to **prioritize inspections, develop targeted interventions, and allocate resources more effectively**. For example, inspectors might focus increased attention on food establishments in sectors where significant violations have risen, such as high-turnover restaurants or small independent food vendors.

## Data inclusion & exclusion
For this visualization, I focused only on the year of inspection and the severity of inspection outcomes to reduce clutter and ensure interpretability. Other variables, such as establishment type or location, were excluded to improve clarity and avoid overwhelming the audience with excessive information. All four levels of severity were included: “No Infractions”, “Minor”, “Significant”, “Crucial”. Records with missing severity were excluded. Proportions were chosen over raw counts to account for varying inspection volumes across years, allowing for meaningful year-to-year comparisons.

## Underwater labor
This visualization is built upon the essential yet often unseen efforts of many individuals and teams. **Public health inspectors** conduct on-site inspections and record their findings. **Data entry staff and administrators** digitize and verify the records. The City of Toronto’s **IT department** manages and publishes the Dinesafe dataset through the open data portal. **Open data engineers and public policy teams** work to promote data transparency and ensure public access. Together, their collective contributions make it possible for researchers and the public to analyze and draw insights from this information.
