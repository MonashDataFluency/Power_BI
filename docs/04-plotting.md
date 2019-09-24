# Plotting

<!--
## Import data set
Load the `gap_minder_map.csv` file in PowerBI desktop

Click on "**Get Data**" dropdown icon, and go to Text/CSV option; a dialog box will appear. 

<img src="figures/powerbi.png" width="25%" style="display: block; margin: auto;" />

--picture-- 

--picture--

Locate your file and click "**Open**".

--picture--

Another dialog box will appear where you can see the contents of your file. Click on Load icon to "**Load**" the file in your Power BI Desktop.

--picture--

--picture--

--picture--

--picture--

Once you have loaded the file, you will not see the contents automatically. You need to click on "**Edit Query**" icon under the Home tab in the taskbar to visualize the contents of your file. This will open a new window that looks like an Excel sheet.



--TODO
Replace image with gapminder data.
Numerical data has ∑ symbol.
-->
In the previous chapter, we have seen how to import data into Power BI. We have also done basic pre-processing of data like cleaning the data, changing the type of data, dealing with NaN value. In this section, we are going to work on the same processed data. So we are not going to cover the data loading section again.


## Visualizations Panel

We touched upon the basics of the Visualization panel in Chapter-1; now we will look at this in detail.
Inside the Visualization panel are the various types of plots that you can use to visualize your data. The available options are- Stacked bar chart, Line chart, Area chart, Scatter chart, Pie chart, etc. You can also import a custom visual from a file or the market-place if you click on **…** icon. We will explore that in the later section. 


<!--picture--->
<img src="figures/ch04/visualization_panel.png" width="100%" style="display: block; margin: auto;" />


### Scatter chart

The first plot we are going to plot is a scatter plot. The first step to plot any kind of plot in Power BI is to select the plot template/type from the visualization panel. Click on the scatter chart icon in the visualization panel and drag the axis values to the respective value field as shown in the below figure.

<!--picture--->
<img src="figures/ch04/scatter_plot_1.png" width="60%" style="display: block; margin: auto;" />

After doing the above steps, it will generate a nice scatter plot like this:

<!--picture---> 
<img src="figures/ch04/scatter_plot_2.png" width="80%" style="display: block; margin: auto;" />
The final interface will look like this:
<!--picture--->
<img src="figures/ch04/scatter_plot_3.png" width="100%" style="display: block; margin: auto;" />

Isn’t this simple to plot scatter plot in the Power BI? In general, this will be the procedure to plot any type of plot in the Power BI: Select the type of plot in the visualization section, drag data for the axis values. That’s it.




The above scatter plot doesn't provides much imformations. The only imformation we are getting is the general trend of life expentancy, which increasing with timee. Let's beautify the scatter plot to  get more information.
We are going too add legends to each data point, this will help us to analyize life expectancy with resppect to country-wise. In order to add legend, do the following steps:

x-Axis: year
y-Axis: life_exp. Right-click on drop-down button and tick "**Don’t summarize**" option.
Legend: By name

<img src="figures/ch04/scatter_plot_2_by_country.png" width="80%" style="display: block; margin: auto;" />

'PowerBI automatically summarizes the numerical data. Always be careful with that.'


Let’s try other options.

Drag and drop region in the legend box, we can see region-wise trends of life_exp over time in years. 

x-Axis: year
y-Axis: life_exp. Right-click on drop-down button and tick "**Don’t summarize**" option.
Legend: By region

<img src="figures/ch04/scatter_plot_3_by_region.png" width="80%" style="display: block; margin: auto;" />

**Optional activity:** In the same chart, try the following:
Size: By population


### Challenge 1: Keep the summarize option ON. Create a chart with the following options: {.challenge}

x-Axis: year

y-Axis: life_exp

Legend: By region

Explain the chart.
 
Click on the dropdown menu and select "**Average**" and explain the difference.

**Solution1:**
Computes the sum of life_Exp in all countries in a given region, and plots it.
Computes the average of life_Exp in all countries in a given region, and plots it.


<img src="figures/ch04/challenge01.png" width="100%" style="display: block; margin: auto;" />

### Line Chart

The plotting procedure for line chart is similar to the scatter plot. Again, we just need to do three things: (1) Select the line chart from the visualization panel, (2) drag the data to the respective axis values. Here, we are going to do plot life expectancy on y-axis and year on the x-axis. We also want to have a separate line for each country so we are going to add legend by name (country).

Line chart
Axis: Year
Values: Life_exp
Legend: By name

<img src="figures/ch04/linechart_life_exp_vs_year_by_name.png" width="80%" style="display: block; margin: auto;" />
Axis: Year
Values: Average of Life_exp
Legend: By region

<img src="figures/ch04/linechart_avg_life_exp_vs_year_by_region.png" width="80%" style="display: block; margin: auto;" />



### Bar Plots

Again, the procedure to plot bar plot is similar to the line and/or scatter plot. We will see almost every plot have a similar procedure.
Axis: Year
Values: Population 
Legend: By region


<img src="figures/ch04/bar_chart_pop_vs_year_by_region.png" width="80%" style="display: block; margin: auto;" />

### Trends in scatter plot

<img src="figures/ch04/trend_life_exp_vs_year_by_region.png" width="80%" style="display: block; margin: auto;" />

## Plot modifications

Filter data
Beautify plots:
Font- Segoe(Bold)
Font size: 12
Font color: Black
Slicer:
	By year
	By country (challenge)


For Bangladesh

<img src="figures/ch04/bangladesh.png" width="80%" style="display: block; margin: auto;" />

For Bangladesh and Brazil

<img src="figures/ch04/bangladesh_and_brazil.png" width="80%" style="display: block; margin: auto;" />



### Challenge 3: Scatter Plot {.challenge}
**A:** Create a scatter-plot of this with:
gdp_percap as x.
life_exp as y.
population as the size.
region as the label.

<img src="figures/ch04/challenge3a.png" width="80%" style="display: block; margin: auto;" />


**B:**  Filter the data for year-2010 only.

**C:** Use the slicer to visualize data for different countries
	For all countries

<img src="figures/ch04/challenge3c.png" width="80%" style="display: block; margin: auto;" />





## Explore Marketplace for other plot types

Till now, we have seen several different kinds of plots. Power BI comes with these default plots. There are other different kinds of plots are available in the marketplace. To import new plot template from the marketplace, click on the icon "**(...)**", i.e. three horizontal dots in the visualization panel then click on the import from the marketplace.


<img src="figures/ch04/marketplace.png" width="60%" style="display: block; margin: auto;" />


Once you click on Import from marketplace, It will pop a new window, where you can search for various types of templates. For example, we are looking for the Word Cloud template. Type Word Cloud in the search box, once you find the template click on the "**Add icon**" then it will added to the visualization panel. 


<img src="figures/ch04/wordcloud.png" width="100%" style="display: block; margin: auto;" />


### Challenge 4: Create a WordCloud for countries by GDP per capita {.challenge}

WordCloud
Category: name
Values: GDP per capita
Filter: 2010 year
OR
Use a slicer with years

<img src="figures/ch04/word_cloud.png" width="100%" style="display: block; margin: auto;" />

### Map chart- Lat and Long values

Size: Population
Colour: Income level

<img src="figures/ch04/geo_map.png" width="80%" style="display: block; margin: auto;" />
