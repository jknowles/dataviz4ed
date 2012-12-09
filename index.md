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

---
layout: slide2
---
{{{ content }}}
<footer class = 'logo'>
  <img src = 'img/dpilogo.png'></img>
</footer>

--- layout:slide2

## Objectives

1. Review data visualization principles
2. Look at applications in education data
3. Challenges in an LEA/SEA
4. Best practices and advice
5. What tools to use




--- plot

### Example


```r
qplot(hp, mpg, data = mtcars) + theme_dpi()
```

<img src="figure/plot.svg" title="plot of chunk plot" alt="plot of chunk plot" width="700px" height="500px" />


--- plot

### Example

<img src="figure/plot11.svg" title="plot of chunk plot1" alt="plot of chunk plot1" width="300px" height="200px" /><img src="figure/plot12.svg" title="plot of chunk plot1" alt="plot of chunk plot1" width="300px" height="200px" /><img src="figure/plot13.svg" title="plot of chunk plot1" alt="plot of chunk plot1" width="300px" height="200px" /><img src="figure/plot14.svg" title="plot of chunk plot1" alt="plot of chunk plot1" width="300px" height="200px" /><img src="figure/plot15.svg" title="plot of chunk plot1" alt="plot of chunk plot1" width="300px" height="200px" /><img src="figure/plot16.svg" title="plot of chunk plot1" alt="plot of chunk plot1" width="300px" height="200px" />


--- &twocol w1:40% w2:60%

## My Header

*** left

- What to do?
- When the project?
- Is too big?

*** right

- Don't panic
- Relax
- Breathe

--- layout:caption

What does this slide look like?

--- layout:title

Subheading?

--- bg:url(img/badinfographic.png) bg-repeat: no-repeat

### Arbitrary image

--- quote

<p><q> Think like a <span class = 'red'>map</span>. Data density and easy interpretability.</q></p>

---

### Some tips

>- Focus on the content
>- Use best practices
>- Understand the limitations
>- Experiment and iterate!

--- plot

### Themes convey brands



```r
qplot(hp, mpg, data = mtcars) + theme_economist()
```

<img src="figure/plot2.svg" title="plot of chunk plot2" alt="plot of chunk plot2" width="700px" height="500px" />


---

### Backmatter


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
 [1] devtools_0.8.0.99    slidifyLibraries_0.1 markdown_0.5.3      
 [4] whisker_0.3-2        ggthemes_1.1.0       knitr_0.9           
 [7] slidify_0.3.3        eeptools_0.1         mapproj_1.1-8.3     
[10] maps_2.2-6           proto_0.3-9.2        plyr_1.7.1          
[13] stringr_0.6.1        ggplot2_0.9.2.1     

loaded via a namespace (and not attached):
 [1] colorspace_1.2-0   dichromat_1.2-4    digest_0.6.0      
 [4] evaluate_0.4.3     formatR_0.7        gtable_0.1.2      
 [7] httr_0.2           labeling_0.1       MASS_7.3-22       
[10] memoise_0.1        munsell_0.4        parallel_2.15.2   
[13] RColorBrewer_1.0-5 RCurl_1.95-3       reshape2_1.2.2    
[16] scales_0.2.3       tools_2.15.2       yaml_2.1.5        
```

