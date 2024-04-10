x<-"yeah man! I love R"
rep(x, times=550)
df <- data.frame(
  x = 1, y = 1, 
  label = paste(
    "<span style='color: red; font-size: 100pt'>hell yeah, man!</span>,",
    "<span style='color: black; font-size: 20pt'>I love R.</span>", sep = "<br>"))

ggplot(df) +
  ggtext::geom_textbox(aes(x = x, y = y, label = label), box.colour = NA, width = unit(10, "cm")) +
  theme_void()
