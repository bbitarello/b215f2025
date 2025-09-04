suppressPackageStartupMessages({
  library(tidyverse)
  library(cols4all)
})
# Fonts ----
#extrafont::font_import(prompt = F)
#extrafont::loadfonts(quiet = T)
hrbrthemes::import_roboto_condensed()
sysfonts::font_add_google("Roboto")
sysfonts::font_add_google("Roboto Condensed")
gdtools::register_gfont(family = "Roboto Condensed")
systemfonts::get_from_google_fonts(family = "Roboto Condensed")
fonts <- systemfonts::system_fonts()
systemfonts::fonts_as_import(family = "Roboto Condensed")
systemfonts::match_fonts("Roboto Condensed")
showtext::showtext_opts(dpi = 150)

bb_theme <-  function() {
  theme(
    text = element_text(face = "plain", family = "Roboto Condensed"),
    axis.text.x = element_text(
      size = 14,
      family = "Roboto Condensed",
      face = "plain"
    ),
    axis.text.y = element_text(
      size = 14,
      family = "Roboto Condensed",
      face = "plain"
    ),
    axis.title.x = element_text(
      size = 16,
      hjust = 1,
      family = "Roboto Condensed",
      face = "plain"
    ),
    axis.title.y = element_text(
      size = 16,
      hjust = 1,
      family = "Roboto Condensed",
      face = "plain"
    ),
    legend.position = "right",
    legend.title = element_blank(),
    legend.text = element_text(
      size = 12,
      family = "Roboto Condensed",
      face = "plain"
    ),
    plot.title = element_text(family = "Roboto Condensed", size = 18),
    strip.text =  element_text(size = 14),
    panel.background = element_blank(),
    panel.grid.major.x = element_line(color = "gray", linewidth = 0.1)
  )
}



#-----rstudio-font-settings
if(TRUE){
  showtext::showtext_auto()
  showtext::showtext_opts(dpi=300)
  
  if (interactive()) {
    options(device = "RStudioGD")
  } else {
    options(
      device = function(...)
        ragg::agg_png(...)
    )
  }
}
