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
In the previous chapter, we saw how to import data into Power BI. We also did some basic pre-processing of data like cleaning the data, changing the type of data, dealing with NaN values. In this section, we are going to work with our already processed data.


## Visualizations Panel

We touched upon the different panels present in the Power BI interface. Now, we will explore the different panels dedicated to creating and formatting charts in detail.
One of the panels is the Visualization panel highlighted in the Red box. It contains various types of charts that you can create to visualize your data. Some of the available chart types are- Stacked bar chart, Line chart, Area chart, Scatter chart, Pie chart, etc. You can also import a custom visual from a file or the market-place if you click on **…** icon. We will explore that in the later section. 


<!--picture--->
<img src="figures/ch04/visualization_panel.png" width="100%" style="display: block; margin: auto;" />


### Scatter chart

Let's create are first chart- Scatter plot. The first step to plot any kind of plot in Power BI is to select the plot template/type from the visualization panel. So, we click on the scatter chart icon in the visualization panel and drag the columns to the respective -Axis field as shown in the below figure.

<!--picture--->
<img src="figures/ch04/scatter_plot_1.png" width="60%" style="display: block; margin: auto;" />

We want the see how life expectancy (life_exp) varies with time (year) in years.
After dragging the columns to their respective fields, we get out first scatter plot.
An overall increasing trend can be seen after year 1900.

<!--picture---> 
<img src="figures/ch04/scatter_plot_2.png" width="80%" style="display: block; margin: auto;" />

The final interface will look like the image below. The plot will be at the left of the visualization panel.

<!--picture--->
<img src="figures/ch04/scatter_plot_3.png" width="100%" style="display: block; margin: auto;" />

Wasn't that quick and easy?!! In general, this will be the procedure to create any type of plot the Power BI i.e., Select the chart type from the visualization section, drag data to the -Axis fields.

The above scatter plot isn't informative. The only information we get is the general trend of life expentancy, which increases after year 1900.
Let's play with our scatter plot to make it more informative:

    x-Axis: year

    y-Axis: life_exp. Right-click on drop-down button and select "**Don’t summarize**" option.

    Legend: By name. Drag name column and place it in legend field.

<img src="figures/ch04/scatter_plot_2_by_country.png" width="80%" style="display: block; margin: auto;" />
Here, we have colored each dot by the country. This plot shows the trend of life expectancy for **each country** with years.
Since there are so many countries in our data, this plot looks messy, unclear and our plot legend "explodes".

Can we do better?

Let's see.

Use following parameters to create your chart:

    x-Axis: year
    y-Axis: life_exp. Right-click on drop-down button and de-select "**Don’t summarize**" option.
    Legend: By region

<img src="figures/ch04/scatter_plot_3_by_region.png" width="80%" style="display: block; margin: auto;" />
Here, we color each data point by the region in which the countries lie. The `summarize` option summarizes the life expectancy (life_exp) for each region.

*PowerBI automatically summarizes the numerical data. Always be careful with that.*

**Activity:** In the same chart, try the following:
Size: By population
Report what follows.


### Challenge 1:{.challenge}
####Scatter plot:
Keep the summarize option ON. Create a chart with the following options: 

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

Let's select a line chart from the visualization panel. Drog and drop following columns:

    Axis: Year
    Values: Life_exp
    Legend: By name

<img src="figures/ch04/linechart_life_exp_vs_year_by_name.png" width="80%" style="display: block; margin: auto;" />
We get differently colored lines for each country. Let's try `by region`. What do we get?

    Axis: Year
    Values: Average of Life_exp. Select "**Average"**
    Legend: By region

<img src="figures/ch04/linechart_avg_life_exp_vs_year_by_region.png" width="80%" style="display: block; margin: auto;" />
Power BI computes average of Life expectancy for countries in each regions and show 4 average lines corresponding to 4 regions.


### Bar Plots

Select the bar chart from the Visualization panel and drag the following columns:

    Axis: Year
    Values: Population 
    Legend: By region


<img src="figures/ch04/bar_chart_pop_vs_year_by_region.png" width="80%" style="display: block; margin: auto;" />
This bar plot shows population variation over time (in years) for all 4 regions.

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

####WordCloud

a) Create a plot that compares GDP per capita for each country

    Category: name
    Values: GDP per capita
    
b) Filter this for the year 2010.

c) Use a slicer with years

<img src="figures/ch04/word_cloud.png" width="100%" style="display: block; margin: auto;" />

### Map chart
We need Latitude (lat) and Longitude (long) values to create a Map chart. For this, we use following parameters:

    Size: Population
    Colour: Income level

<img src="figures/ch04/geo_map.png" width="80%" style="display: block; margin: auto;" />

This plot tells us if a country is one of the four- high income, upper-middle income, lower-middle income or low income country by the color of the bubbles. The color correspondence to these categories can be seen in the legend at the top of the chart. It also indicates the population size of each country by the size of bubble. Bigger the bubble, higher the population of the country.
