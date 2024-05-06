#Definindo o projeto de curso 
# Pergunta: O que afeta a qualidade do ar? Como?

# install.packages("Ecdat")
library(Ecdat)  #carrega 
data(Airq)  # carrega o pct do banco de dados do Ecdat 
names(Airq)  #exibe o nome das variaveis 

#Descrever as variaveis 
#airq: indice de qualidade do ar (quanto menor melhor)
#vala: valor das empresas nas cidades (milhares de dolares)
#rain: quantidade de chuvas em polegadas
#coas: posicao costeira da cidade (sim ou nao)
#dens: densidade populacional (milha quadrada)
#medi: renda media per capita (dolares)


#Analise Descritiva Exploratoria 

summary(Airq)  #sumario das variaveis 

# as variaveis podem ser continuas ou categoricas (divididas em categorias)
# variavel resposta eh a qualidade do ar(Airq)

plot(airq ~ vala, data = Airq)

View(Airq)
pairs(Airq)

#Criando um modelo estatistico 
# y(Resposta) em funcao de x(explicativa) (y ~x) 
# airq - vala + coas + rain

##### -------------------------------


# Montando o modelo Regressao Linear 
m1 <- lm(airq ~ vala, data = Airq) #lm=modelo linear 
#alguns dados nao podem ser lineares 
summary(m1) #significancia do modelo
plot(airq ~ vala, data = Airq, xlab='Valor as empresas ($)', ylab='Qualidade do ar', col='blue',pch=1, cex=1.5 ) #plot de regressao linear 

#p-valor indica a sgnificancia do modelo ou da variavel 
# se p-valor for menor < 0.05 a variavel eh significativa 
# se o p-valor for > 0.05 nao exite o efeito esperado 

# A variavel 'vala' nao influenciou a qualidade do ar nas cidades ('airq' )

# A variavel 'coa's afeta a variavel 'airq' 
m2<-lm(airq ~ coas, data = Airq)
summary(m2)

# Sim, a posicao costeira da cidade influencia a qualidade do ar das cidades

plot(airq ~ coas, data = Airq)

#A variavel medi afeta a qualidade do ar?
m3<-lm(airq ~ medi, data = Airq)
summary(m3)

plot(airq ~ medi, data = Airq)
# a variavel nao afetou a qualidade do ar 

# a qtd de chuva influencia a qualidade do ar
m4<-lm(airq ~ rain, data = Airq)
summary(m4)
# nao afetou a qualidade do ar 

# a densidade populacional afeta a qualidade do ar
m5<-lm(airq ~ dens, data = Airq)
summary(m5)
# nao afetou a qualidade do ar 

#retas de modelos nao significativos sao opcionais nos graficos 

#retas nos graficos 
plot(airq ~ medi, data = Airq)
# y= a + b * x 
#a <- intercepto 
# b<- eh a inclinacao da reta 
curve(9.936e+01+5.638e-04*x,add=TRUE)


#melhorando o grafico 
plot(airq ~ medi, data = Airq, xlab='Renda media per capita', ylab='Qualidade do ar', pch=16,
     col='blue',cex.lab=1.3,main='Renda media')
curve(9.936e+01+5.638e-04*x,add=TRUE, col='darkblue',lwd=2, lty=2)


plot(airq ~ coas, data = Airq, xlab='Posicao costeira', ylab='Qualidade do ar',col='lightblue', ylim=c(50,170), cex.lab=1.3, main='Analise da Qualidade do ar')


#modelagem 
#Regressao Multipla 
mRM1 <- lm(airq  ~ vala+coas, data = Airq)
summary(mRM1)

#entao existe um efeito da posicao costeira e do valor das empresas na qualidade do ar 

#grafico regressao multipla 
plot(airq ~ vala, data = Airq, xlab='Valor as empresas ($)', ylab='Qualidade do ar', col='blue',pch=1, cex=1.5 )
curve(1.171e+02 +1.999e-03 * x, add = TRUE) #cidade nao costeira
curve(1.171e+02 +1.999e-03 * x+-2.968e+01,lty=2 ,add = TRUE) #cidade costeira 
legend('bottomright', c('Nao-costeiras', 'Costeiras'), pch=1, , lty=c(1,2),bty='n')


# A qualidade do ar das cidades eh afetada tanto pelo valor das empresas quanto pela posicao costeira as cidades. Quanto maior o valor das empresas
#pior a qualidade do ar das cidades. 

mRM2 <- lm(airq  ~ vala+coas+dens, data = Airq)
summary(mRM2)


#contraste de modelos 
#comparar um modelo completo com um modelo sem a variavel em questao

modelocompleto <- lm(airq  ~ vala+coas+dens, data = Airq)
modeloincompleto <- lm(airq  ~ vala+coas, data = Airq)

#os modelos sao iguais?
# se p>0.05 nao existe diferenca entre os modelos 
#se p <0.05 os modelos sao diferentes 

anova(modelocompleto,modeloincompleto)


#grafico final
#grafico regressao multipla 
plot(airq ~ vala, data = Airq, xlab='Valor as empresas ($)', ylab='Qualidade do ar', col='blue',pch=16, cex.lab=1.5 )
curve(1.171e+02 +1.999e-03 * x,col='darkblue', add = TRUE) #cidade nao costeira
curve(1.171e+02 +1.999e-03 * x+-2.968e+01,lty=2 ,add = TRUE) #cidade costeira 
legend('bottomright', c('Nao-costeiras', 'Costeiras'), pch=16, , lty=c(1,2),bty='n', col=c('darkblue','darkblue'))
