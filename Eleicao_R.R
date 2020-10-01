rm(list=ls())
library(stringr)
df <- read.csv2('D:/R/Python_DataSet/Dataset/lista_de_candidatos_-_candidaturas.csv', sep = ';')
head(df)


### Filtro por PATENTE MILITAR
coronel <- sum(str_count(df$Nome.do.candidato..urna.,"CORONEL"))
capitao <- sum(str_count(df$Nome.do.candidato..urna.,"CAPITÃO"))
tenente <- sum(str_count(df$Nome.do.candidato..urna.,"TENENTE"))
cabo <- sum(str_count(df$Nome.do.candidato..urna.,"CABO"))
sargento <- sum(str_count(df$Nome.do.candidato..urna.,"SARGENTO"))
soldado <- sum(str_count(df$Nome.do.candidato..urna.,"SOLDADO"))
major<- sum(str_count(df$Nome.do.candidato..urna.,"MARJOR"))
major

base <- data.frame(valor = c(coronel, capitao, tenente, cabo, sargento, soldado, major))
base$Patente <- c('Coronel', 'Capitão', 'Tenente', 'Cabo', 'Sargento', 'Soldado', 'Major' )
str(base) 

### Gráfico Patente Militar
bp <- barplot(base$valor, 
              ylim = c(0,40),
              names.arg = base$Patente,
              main = "Candidatos com patentes da PM no RN")
text(bp, 0, round(base$valor, 1),cex=1.5,pos=3) 

### Filtro por Religião
irmao <- sum(str_count(df$Nome.do.candidato..urna.,"IRMÃO"))
pastor <- sum(str_count(df$Nome.do.candidato..urna.,"PASTOR"))
padre <- sum(str_count(df$Nome.do.candidato..urna.,"PADRE"))
diaconos <- sum(str_count(df$Nome.do.candidato..urna.,"DIÁCONO"))
Missionario <- sum(str_count(df$Nome.do.candidato..urna.,"MISSIONÁRIO"))
Missionario
diaconos
baser <- data.frame(valor = c(irmao, pastor, padre, diaconos, Missionario))
baser$Patente <- c('Irmão', 'Pastor', 'Padre', 'Diácono','Missionário' )
str(baser)

### Gráfico religão
bp <- barplot(baser$valor, 
              ylim = c(0,120),
              names.arg = baser$Patente,
              main = "Candidatos com menção religiosa nos nomes no RN")
text(bp, 0, round(baser$valor, 2),cex=1.5,pos=3) 


#### 

