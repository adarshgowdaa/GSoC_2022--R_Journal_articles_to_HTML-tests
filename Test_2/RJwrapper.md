by Quietest Quokka and Bounciest Bilby *by Quietest Quokka and Bounciest
Bilby*

**Abstract** An abstract of less than 150 words.

# Introduction

Interactive data graphics provides plots that allow users to interact
them. One of the most basic types of interaction is through tooltips,
where users are provided additional information about elements in the
plot by moving the cursor over the plot.

This paper will first review some R packages on interactive graphics and
their tooltip implementations. A new package
[ToOoOlTiPs](https://CRAN.R-project.org/package=ToOoOlTiPs) that
provides customized tooltips for plot, is introduced. Some example plots
will then be given to showcase how these tooltips help users to better
read the graphics.

# Background

Some packages on interactive graphics include
[plotly](https://CRAN.R-project.org/package=plotly) [@plotly] that
interfaces with Javascript for web-based interactive graphics,
[crosstalk](https://CRAN.R-project.org/package=crosstalk) [@crosstalk]
that specializes cross-linking elements across individual graphics. The
recent R Journal paper
[tsibbletalk](https://CRAN.R-project.org/package=tsibbletalk)
[@RJ-2021-050] provides a good example of including interactive graphics
into an article for the journal. It has both a set of linked plots, and
also an animated gif example, illustrating linking between time series
plots and feature summaries.

# Customizing tooltip design with ToOoOlTiPs {#customizing-tooltip-design-with}

ToOoOlTiPs is a packages for customizing tooltips in interactive
graphics, it features these possibilities.

# A gallery of tooltips examples

The [palmerpenguins](https://CRAN.R-project.org/package=palmerpenguins)
data [@palmerpenguins] features three penguin species which has a lovely
illustration by Alison Horst in Figure
[1](#fig:penguins-alison){reference-type="ref"
reference="fig:penguins-alison"}.

![Artwork by \_horst](penguins.png){#fig:penguins-alison
width="1\\linewidth" height="0.3\\textheight"}

Table [1](#tab:penguins-tab-static){reference-type="ref"
reference="tab:penguins-tab-static"} prints at the first few rows of the
`penguins` data:

::: {#tab:penguins-tab-static}
  species   island        bill_length_mm   bill_depth_mm   flipper_length_mm   body_mass_g sex        year
  --------- ----------- ---------------- --------------- ------------------- ------------- -------- ------
  Adelie    Torgersen               39.1            18.7                 181          3750 male       2007
  Adelie    Torgersen               39.5            17.4                 186          3800 female     2007
  Adelie    Torgersen               40.3            18.0                 195          3250 female     2007
  Adelie    Torgersen                 NA              NA                  NA            NA NA         2007
  Adelie    Torgersen               36.7            19.3                 193          3450 female     2007
  Adelie    Torgersen               39.3            20.6                 190          3650 male       2007

  : A basic table
:::

Figure [2](#fig:penguins-ggplot){reference-type="ref"
reference="fig:penguins-ggplot"} shows an plot of the penguins data,
made using the [ggplot2](https://CRAN.R-project.org/package=ggplot2)
package.

::: Sinput
penguins ggplot(aes(x = bill_depth_mm, y = bill_length_mm, color =
species)) + geom_point()
:::

![A basic non-interactive plot made with the ggplot2 package on palmer
penguin data. Three species of penguins are plotted with bill depth on
the x-axis and bill length on the y-axis. Visit the online article to
access the interactive version made with the plotly
package.](test_files/figure-latex/penguins-ggplot-1.pdf){#fig:penguins-ggplot}

# Summary

We have displayed various tooltips that are available in the package
ToOoOlTiPs.

*Quietest Quokka\
University of Little Mates\
Department of Letter Q\
Somewhere, Australia\
<https://www.britannica.com/animal/quokka>\
*ORCiD: [0000-1721-1511-1101](https://orcid.org/0000-1721-1511-1101)*\
[`qquo@ulm.edu`](mailto:qquo@ulm.edu)*

*Bounciest Bilby\
University of Little Mates\
Department of Letter B\
Somewhere, Australia\
<https://www.britannica.com/animal/bilby>\
*ORCiD: [0000-0002-0912-0225](https://orcid.org/0000-0002-0912-0225)*\
[`bbil@ulm.edu`](mailto:bbil@ulm.edu)*
