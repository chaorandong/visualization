# Assignment 3 Visualization using R

## Data & Link
Dinesafe
Data is about Dinesafe, a Toronto Public Health's food safety program. Each record represents a inspection result regarding safety of all establishement serving and preparing food.
https://open.toronto.ca/dataset/dinesafe/

## Software used
This visualization was created using **R** with the `ggplot2` package.

## Intended audience
Public health officials, city policymakers, and residents of Toronto concerned about food safety.

## Message to be delivered
This plot shows the **distribution of food safety inspection outcomes (infraction severity)** across different types of food establishments in Toronto. It reveals that **convenience stores** have the highest proportion of inspections with no infractions. Meanwhile, **restaurants and supermarkets** have the largest proportion of infraction, including both crucial and significant violations.

## Design considerations
The first thing I considered when designing the visualization was which type of plot would most clearly and accurately convey the message—comparing different levels of infraction severity across types of food establishments. I chose a stacked bar chart to encode categorical comparisons. The horizontal spatial position represents categorical attributes for establishment types, while the vertical spatial position reflects the proportion of each severity level. The height of each bar segment encodes the relative scale of that proportion. Additionally, a color channel using distinct hues was applied to represent different severity levels. Together, these visual channels allow the audience to easily assess how the distribution of severity varies by establishment type.
To further enhance perceptual clarity and improve the visual appeal of the plot, I limited the number of categories to the five most common establishment types and renamed severity levels to improve readability. I also reordered the severity levels so that “No Infractions” appears at the bottom of each bar, enabling clearer interpretation of increasing severity. Finally, I rotated the x-axis labels to reduce visual clutter and enhance legibility.

## Reproducibility
The visualization is based on the Dinesafe dataset, which is an open-source dataset housed at Toronto Open Data Portal. All data cleaning and plotting were performed using R scripts. The link to dataset, full code and markdown are included in this repo to ensure full reproducibility.

## Accessibility
A few strategies were applied to enhance the accessibility of the visualization. First, I used the viridis palette to make the plot easier to interpret for individuals with color vision deficiencies. I also applied different patterns to each severity level to further improve readability for people with visual impairments. The Helvetica typeface was used for all text elements to support easier reading, including for individuals with dyslexia. Clear axis labels and a descriptive legend were provided. Lastly, I included a description of the visualization to facilitate understanding.

## Potential impact
This visualization may inform **Toronto Public Health and food safety inspectors** about which establishment types may require more targeted oversight or support. For example, convenience stores appear to have a higher proportion of inspections with no infractions, suggesting strong compliance. In constrast, restaurants and supermarkets show relatively higher proportions of significant and crucial violations, indicating a potential need for more frequent inspections, enhanced training for food handlers, or tailored public health interventions.
**Consumers** may also benefit from this visualization regarding where they eat or purchase food. For example, food courts and take-out places tend to show lower proportions of significant and crucial infractions compared to restaurants. This offers them to consider food safety pattern alongside price and flavor when choosing between these establishment options.


## Data inclusion & exclusion
For this visualization, I focused on two key features of the dataset: **establishment type** and **severity of inspection outcome**. I chose to include only the **five most common establishment types** to reduce visual clutter and cognitive load, making the comparison easier to interpret. All other types were excluded as they were less frequent and would have made the plot overly complex. I also included **all four levels of severity** (“No Infractions”, “Minor”, “Significant”, “Crucial”) to maintain a comprehensive view of the inspection outcomes. Records with **missing severity values were excluded**, as they lacked meaningful information for assessing inspection outcomes. I chose to display **proportions instead of absolute counts** to account for the fact that different establishment types had varying numbers of inspections. Using proportions allows for a fairer comparison of the relative distribution of severity levels across establishment types. Other variables in the dataset, such as inspection date, infraction details, or address, were excluded because they were not directly relevant to the objective of comparing severity distributions across establishment types.

## Underwater labour
This visualization rests on the invisible efforts of many individuals and groups throughout the data pipeline. At the foundation are **public health inspectors** who conduct on-site food safety inspections and record violation details. Their fieldwork, often under time pressure and varying conditions, is a key source of this dataset. 
Additionally, **data entry personnel and administrative staff** invest their time in digitizing, validating, and organizing the inspection records in a standardized format. **IT team** within the City of Toronto support the maintenance and updating of the DineSafe database, ensuring its accessibility through the open data portal. **Open data engineers** build the infrastructure that allows datasets like this to be freely available to researchers and the public. **Policy staff** also play a role in advocating for this level of public transparency.
