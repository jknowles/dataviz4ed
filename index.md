---
title       : Data Visualization for Education
subtitle    : SDP Fellow Workshop January 2013
author      : Jared Knowles
job         : Policy Research Advisor, Wisconsin DPI
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : prettify  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : standalone # {standalone, draft}
---

## Objectives

1. Review data visualization principles
2. Look at applications in education data
3. Challenges in an LEA/SEA
4. Best practices and advice
5. What tools to use




--- plot

## Example


```r
qplot(hp, mpg, data = mtcars) + theme_dpi()
```

<img src="figure/plot.svg" title="plot of chunk plot" alt="plot of chunk plot" width="700px" height="500px" />



--- &twocol w1:20% w2:80%

## Principles

*** left
- Elements of a chart
- Chart Types and Data Types
- Dimensionality
- Scale
- Complexity
- Technical details
- Beyond charts

*** right

<img src="figure/plot1.svg" title="plot of chunk plot1" alt="plot of chunk plot1" width="450px" height="300px" />





---

## Chart Elements

There are a few things that all charts need. There are sometimes strong cases to deviate from these, but they are good rules of thumb. 

- Axis labels and a chart title
  * These make the chart self-explanatory
- A legend
  * What is the unit in the graphic?
- A scale
  * How are units mapped to the visual space
- Annotations
  * Author and data source (depending on distribution)

---

## Data Types


### Statistics we can use

Level of Meas.  |  Stats
--------------- |  -----------------------------------------------
Nominal         |  mode, Chi-squared
Ordinal         |    median, percentile
Interval        |    mean, std. deviation, correlation, ANOVA
Continuous      |    geometric mean, harmonic mean, logarithms

### Aesthetics for Mapping

Aesthetic |      Discrete              |  Continuous
----------|  ------------------------- | -------------------------------
Color     |  Disparate colors          |  Sequential or divergent colors
Size      |  Unique size for each value|   mapping to radius of value
Shape     |  A shape for each value    |   **does not make sense**

---

## Ordered vs. Unordered

### Mapping Possibilities

Aesthetic  |    Ordered                         |  Unordered
---------- |  --------------------------------  |   -------------------------
Color      |  Sequential or divergent colors  |    Rainbow
Size       |  Increasing or decreasing radius |    **does not make sense**
Shape      |  **does not make sense**         |    A shape for each value


--- plot

## Example

<img src="figure/plot1.11.svg" title="plot of chunk plot1.1" alt="plot of chunk plot1.1" width="300px" height="200px" /><img src="figure/plot1.12.svg" title="plot of chunk plot1.1" alt="plot of chunk plot1.1" width="300px" height="200px" /><img src="figure/plot1.13.svg" title="plot of chunk plot1.1" alt="plot of chunk plot1.1" width="300px" height="200px" /><img src="figure/plot1.14.svg" title="plot of chunk plot1.1" alt="plot of chunk plot1.1" width="300px" height="200px" /><img src="figure/plot1.15.svg" title="plot of chunk plot1.1" alt="plot of chunk plot1.1" width="300px" height="200px" /><img src="figure/plot1.16.svg" title="plot of chunk plot1.1" alt="plot of chunk plot1.1" width="300px" height="200px" />



--- bg:url(img/badinfographic.png) bg-repeat: no-repeat

## Arbitrary image

--- quote

<p><q> Think like a <span class = 'red'>map</span>. Data density and easy interpretability.</q></p>

---

## Some tips

>- Focus on the content
>- Use best practices
>- Understand the limitations
>- Experiment and iterate!

---

## Charting Data

>- The type of data we look at determines the way it should be presented
>- It always starts with the data
>- Let's review the data types
>- Categorical
>- Ordinal
>- Interval
>- Continuous

--- plot

## Charting Categorical Data

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.svg) 


--- plot

## Conditional 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.svg) 


---

## Complexity

How do we display a ton of data--tens or hundreds of thousands of observations?

1. Summarize the data
  * Display summary statistics visually depicting the central tendency and spread of data
2. Plot the raw data
  * Annotate wisely to display the main message
3. Model the data
  * Use a statistical model to summarize features of the data

Let's look at some examples of this. 

--- 

## Summarizing Data

- The most simple summaries are measures of central tendency, most easily understood
- It is important to look at the spread of data too though
- If time is of interest, we are interested in trends

---

## Plotting Means

![plot of chunk plotmeans](figure/plotmeans.svg) 


But, what's wrong with this plot?

--- &twocol w1:20% w2:80%

## Mistakes

*** left

>- No sense of scale
>- Means can be skewed
>- Simple means are not meaningful
>- With assessment scores we need to know grade distribution
>- Let's try to improve this

*** right

<img src="figure/plotmeanssmall.svg" title="plot of chunk plotmeanssmall" alt="plot of chunk plotmeanssmall" width="300px" height="250px" />


---

## Try 2

![plot of chunk meanplot2](figure/meanplot2.svg) 


--- 

## Another Example

With the same space, what additional information are we providing?

![plot of chunk meanplot3](figure/meanplot3.svg) 


How can we do even better?

---

## Annotation

We still aren't sure what the mean scale score means. Let's see a couple more additions that can realy make this useful. 

![plot of chunk meanplot4](figure/meanplot4.svg) 


---

## Raw Data

Sometimes, we can get away with showing the raw data, that is, all data points. We may want to do this for a few reasons:

- the "wow" effect, 
- because it is easier, 
- or because it looks better aesthetically. 

How could it be done?

---

## 600,000 Observations Too Many

![plot of chunk rawdata1](figure/rawdata1.png) 


---

## Spread the Data Out

- Without reducing the data points we need to do three things to be successful

1. Spread the data out
  * These points overlap each other and make a mess
2. Reduce the ink
  * Each point has too much "weight"
3. Add Reference Points
  * 600,000 observations in one panel is not meaningful
  
---
## What About This

![plot of chunk rawdata2](figure/rawdata2.png) 


---

## Even Smaller Multiples

![plot of chunk rawdata3](figure/rawdata3.png) 


--- quote

## Modeling the Data

<p><q> All models are <span class = 'red'>wrong</span>. Some models are useful.</q></p>

---

## Regression Trees

Trees are ways to divide up the variation in a dataset and rank the explanatory values. 




---

## Smoothers 

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.svg) 


---

## Model Results

<p align="center"><img src="img/machinelearning.svg" height="490" width="700"></p>


--- 

## Model Results II

<p align="center"><img src="img/parttree.svg" height="490" width="700"></p>

---

## Combining Features

We can combine these features. 

>- Facets with smoother lines for references
>- Summary plots with raw data in the background
>- Reference lines and group comparisons

---
## Student Growth

<p align="center"><img src="img/stuplot25.png" height="490" width="700"></p>

---

## Why does this work?

>- Annotation
>- Labeling
>- Lots of data-ink

---
## Some tips

>- Have a properly chosen format and design 
>- Use words, numbers and drawing together
>- Reflect a balance, a proportion, relevant scale
>- Display an accessible complexity of details
>- Have a narrative quality, tell a story
>- Avoid content-free decoration (Tufte's proverbial chartjunk)
>- Draw in a professional manner with an eye on the technical details
>- Remember the map

--- plot

## Themes convey brands

<img src="figure/plot2.svg" title="plot of chunk plot2" alt="plot of chunk plot2" width="750px" height="480px" />


--- plot

## They Also Communicate


```r
qplot(hp, mpg, data = mtcars) + theme_tufte()
```

<img src="figure/plot3.svg" title="plot of chunk plot3" alt="plot of chunk plot3" width="750px" height="480px" />



--- plot

## They Also Can Confound


```r
qplot(hp, mpg, data = mtcars, color = factor(cyl)) + theme_excel() + scale_color_excel()
```

<img src="figure/plot4.svg" title="plot of chunk plot4" alt="plot of chunk plot4" width="750px" height="480px" />


--- plot

## So Choose Wisely


```r
qplot(hp, mpg, data = mtcars, color = factor(cyl)) + theme_stata()
```

<img src="figure/plot5.svg" title="plot of chunk plot5" alt="plot of chunk plot5" width="750px" height="480px" />


---

## Stacked Bar

<p align="center"><img src="img/d3stackedbar.png" height="550" width="800"></p>

--- 

## Box and Whisker

<p align="center"><img src="img/d3boxwhisker.png" height="490" width="700"></p>

---

## Bullet Chart

<p align="center"><img src="img/d3bulletchart.png" height="320" width="800"></p>

---

## Calendar

<p align="center"><img src="img/d3calendar.png" height="440" width="875"></p>

---

## Lines

<p align="center"><img src="img/d3linemany.png" height="440" width="875"></p>

---

## Parallel Coordinates

<p align="center"><img src="img/d3parallelcoordinates.png" height="440" width="875"></p>

---

## Parallel Sets

<p align="center"><img src="img/d3parallelsets.png" height="440" width="875"></p>

---

## Streamgraph

<p align="center"><img src="img/d3streamgraph.png" height="561" width="661"></p>

---

## Tree Map

<p align="center"><img src="img/d3treemap.png" height="470" width="950"></p>

---

## Word Cloud

<p align="center"><img src="img/d3wordcloud.png" height="420" width="900"></p>

--- &twocol w1:50% w2:50%

## Graphics Files

*** left

### Raster
- Files like **jpg** , **png** , **gif**. 
- Fixed scale, aspect ratio, and size
- Reasonable file size
- Viewable in almost any image viewing and editing system, including any modern web browser, PowerPoint, etc.

*** right

### Vector
- Files like **pdf** and **svg**
- Infinitely zoomable, adjustable on the fly
- Larger file size
- Viewable and usable in fewer systems. SVGs can be used in modern web browsers. PDFs included in other PDF reports. 

---

## Beyond Graphics

We have a number of other techniques we can use beyond simple charts. 

- Animations
- Interactive demos
- Summary tables
- Videos
- Web sites

--- map

## Maps

<p align="center"><img src="img/evenFRLmap.gif" height="600" width="550"></p>

--- animation

## Animations

<p align="center"><img src="img/TESTstuplot.gif" height="550" width="750"></p>


---

## Technologies

The technology you choose to do visualizations is largely a question of personal productivity, but with some important caveats:

- In the future, more and more content is going to be delivered in a paperless world, so pick a technology that can leverage web/tablet/phone interfaces
- Different technologies are useful for different levels of finish and polish; Adobe Illustrator is great for publication quality graphics, R is a great tool for rapidly prototyping different visualizations
- Chose a technology that best serves your **consumer**, not you are the producer. Charts are a service to the consumer, not to the creator. 

---

## Some Technologies

![plot of chunk technologies](figure/technologies.svg) 


--- &twocol w1:20% w2:80%

## Group Exercise

Visualize some education data. Imagine we have the following dimensions and want to present more of them on a plot like that on the right.

*** left

- Grade
- Disability Status
- Type of Disability
- Language Proficiency
- School
- Math Score
- Reading Curriculum
- Math Curriculum

*** right

<img src="figure/studentexample.svg" title="plot of chunk studentexample" alt="plot of chunk studentexample" width="300px" height="250px" />



---

## Backmatter


```r
print(sessionInfo(), locale = FALSE)
```

```
R version 2.15.2 (2012-10-26)
Platform: x86_64-w64-mingw32/x64 (64-bit)

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods  
[8] base     

other attached packages:
 [1] Formula_1.1-0        mvtnorm_0.9-9994     partykit_0.1-4      
 [4] mgcv_1.7-22          vcd_1.2-13           colorspace_1.2-0    
 [7] MASS_7.3-22          ggthemes_1.3.1       eeptools_0.1        
[10] mapproj_1.2-0        maps_2.3-0           proto_0.3-10        
[13] plyr_1.8             ggplot2_0.9.3        stringr_0.6.2       
[16] knitr_0.9.1          slidifyLibraries_0.1 markdown_0.5.3      
[19] whisker_0.3-2        slidify_0.3.3        devtools_0.8        

loaded via a namespace (and not attached):
 [1] dichromat_1.2-4    digest_0.6.0       evaluate_0.4.3    
 [4] formatR_0.7        gtable_0.1.2       httr_0.2          
 [7] labeling_0.1       lattice_0.20-10    Matrix_1.0-10     
[10] memoise_0.1        munsell_0.4        nlme_3.1-106      
[13] parallel_2.15.2    RColorBrewer_1.0-5 RCurl_1.95-3      
[16] reshape2_1.2.2     scales_0.2.3       splines_2.15.2    
[19] survival_2.37-2    tools_2.15.2       yaml_2.1.5        
```


--- 

## References

- Tufte, Edward. 1992. [The Visual Display of Quantitative Information.](http://www.amazon.com/The-Visual-Display-Quantitative-Information/dp/0961392142/) Graphics Press. 
- Unwin, Theus, and Hofmann. 2006. [Graphics of Large Datasets: Visualizing a Million.](http://www.amazon.com/Graphics-Large-Datasets-Visualizing-Statistics/dp/0387329064) Springer. 
- Wilkinson, Leland. 2005. The Grammar of Graphics. Springer.
- Ware, Colin. 2012. [Information Visualization: Perception for Design.](http://www.amazon.com/Information-Visualization-Third-Edition-Technologies/dp/0123814642/ref=reg_hu-rd_add_1_dp) 3rd Edition. Morgan Kaufmann. 
- Cleveland, William. 1994. [The Elements of Graphing Data.](http://www.amazon.com/gp/product/0963488414/) Hobart Press. 
- Cleveland, William. 1993. [Visualizing Data.](http://www.amazon.com/gp/product/0963488406) Hobart Press.
- Few, Stephen. 2009. [Now You See It: Simple Visualization Techniques for Quantiative Analysis.](http://www.amazon.com/gp/product/0970601980/) Analytics Press. 
- Few, Stephen. 2012. [Show Me the Numbers: Designing Tables and Graphs to Enlighten.](http://www.amazon.com/gp/product/0970601972) Analytics Press. 
- Yau, Nathan. 2011. [Visualize This: The FlowingData Guide to Design, Visualization, and Statistics.](http://www.amazon.com/Visualize-This-FlowingData-Visualization-Statistics/dp/0470944889/) Wiley.
- Few, Stephen. 2006. [Information Dashboard Design: The Effective Visual Communication of Data.](http://www.amazon.com/Information-Dashboard-Design-Effective-Communication/dp/0596100167) O'Reilly Media

---

<p align="center"><img src="img/periodictablevisualization1.png" height="550" width="900"></p>

---

--- plot

## Ugly graphic

<script>
    function init() {

      var canvas = document.getElementById("canvas");
      var ctx = canvas.getContext("2d");

      draw(ctx);
    }

    function draw(ctx) {

      var gradient;

      // layer1/Path
      ctx.save();
      ctx.beginPath();
      ctx.moveTo(0.5, 0.0);
      ctx.lineTo(0.5, 423.0);
      ctx.stroke();

      // layer1/Path
      ctx.beginPath();
      ctx.moveTo(0.0, 423.5);
      ctx.lineTo(477.0, 423.5);
      ctx.stroke();

      // layer1/This is silly
      ctx.font = "36.0px 'Nyala'";
      ctx.fillText("This gradient is silly", 62.1, 93.3);

      // layer1/Path
      ctx.beginPath();
      ctx.moveTo(472.0, 317.0);
      ctx.lineTo(62.0, 317.0);
      ctx.lineTo(62.0, 175.0);
      ctx.lineTo(472.0, 175.0);
      ctx.lineTo(472.0, 317.0);
      ctx.closePath();
      gradient = ctx.createRadialGradient(267.0, 246.0, 0.0, 267.0, 246.0, 153.4);
      gradient.addColorStop(0.50, "rgb(255, 255, 255)");
      gradient.addColorStop(0.65, "rgb(255, 169, 171)");
      gradient.addColorStop(1.00, "rgb(255, 83, 88)");
      ctx.fillStyle = gradient;
      ctx.fill();
      ctx.restore();
    }
</script>

<body onload="init()">
   <canvas id="canvas" width="477" height="424"></canvas>
</body>
