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

---

### Some tips

>- Have a properly chosen format and design 
>- Use words, numbers and drawing together
>- Reflect a balance, a proportion, relevant scale
>- Display an accessible complexity of details
>- Have a narrative quality, tell a story
>- Avoid content-free decoration (Tufte's proverbial chartjunk)
>- Draw in a professional manner with an eye on the technical details
>- Remember the map

--- plot

### Themes convey brands



```r
qplot(hp, mpg, data = mtcars) + theme_economist()
```

<img src="figure/plot2.svg" title="plot of chunk plot2" alt="plot of chunk plot2" width="750px" height="480px" />


--- plot

### They Also Communicate



```r
qplot(hp, mpg, data = mtcars) + theme_tufte()
```

<img src="figure/plot3.svg" title="plot of chunk plot3" alt="plot of chunk plot3" width="750px" height="480px" />



--- plot

### They Also Can Confound



```r
qplot(hp, mpg, data = mtcars, color = factor(cyl)) + theme_excel2003() + scale_color_excel2003()
```

<img src="figure/plot4.svg" title="plot of chunk plot4" alt="plot of chunk plot4" width="750px" height="480px" />



--- plot

### So Choose Wisely



```r
qplot(hp, mpg, data = mtcars, color = factor(cyl)) + theme_stata()
```

<img src="figure/plot5.svg" title="plot of chunk plot5" alt="plot of chunk plot5" width="750px" height="480px" />


---

---

### Ugly graphic

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
 [1] ggthemes_1.1.0    eeptools_0.1      mapproj_1.1-8.3  
 [4] maps_2.2-8        proto_0.3-9.2     plyr_1.8         
 [7] ggplot2_0.9.3     stringr_0.6.2     knitr_0.9        
[10] slidify_0.3.3     devtools_0.8.0.99

loaded via a namespace (and not attached):
 [1] colorspace_1.2-0   dichromat_1.2-4    digest_0.6.0      
 [4] evaluate_0.4.3     formatR_0.7        gtable_0.1.2      
 [7] httr_0.2           labeling_0.1       markdown_0.5.3    
[10] MASS_7.3-22        memoise_0.1        munsell_0.4       
[13] parallel_2.15.2    RColorBrewer_1.0-5 Rcpp_0.10.1       
[16] RCurl_1.95-3       reshape2_1.2.2     scales_0.2.3      
[19] tools_2.15.2       whisker_0.1        yaml_2.1.5        
```

