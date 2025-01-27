library(plumber)
library(ggplot2)

#* @apiTitle Generador de Histogramas

#* Generar histograma
#* @param n El número de valores aleatorios
#* @get /histograma
function(n) {
  n <- as.numeric(n)
  data <- rnorm(n)
  p <- ggplot(data.frame(x = data), aes(x)) + geom_histogram(binwidth = 0.5)
  ggsave("www/histograma.png", plot = p)
  list(src = "https://prueba.herokuapp.com/histograma.png")
}
