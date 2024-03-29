# Laboratório 1A – Processo de Aprendizagem 

## Materiais
- Bolas de tênis, cronômetro (ou celular) e folha de caderno.
## Procedimentos 
Em duplas, realizar 50 tentativas do malabares de acordo com um vídeo de demonstração. Uma pessoa da dupla realizará (executante) a tarefa e o outro será responsável (experimentador) por:

1. Anotar os erros/acertos de cada tentativa: será considerado erro caso o executante (a) deixe a bola cair ou (b) pegue com a mão errada. Erro = 0 e acerto = 1. 

2. Realizar uma sonda em seu colega. A sonda funcionará da seguinte forma: assim que o colega iniciar a execução do malabares, o experimentador falará um número qualquer (menor que 10) e disparar um cronômetro. O executante deverá responder a estee número acrescido por 3, paralelo a execução do malabares. Quando o executante resposder corretamente, o experimentador deverá parar o cronômetro e anotar o tempo gasto. 

Clique na imagem e assista o vídeo do minuto 2:16 até 3:48

[![](https://i.ytimg.com/vi/iFSy0MNaDRM/hqdefault.jpg)](https://youtu.be/iFSy0MNaDRM?list=PLQ9fmFUN_UmJZC8LGRQfA7R2Ot2UVEQJd&t=136)


# Para Entregar

Após executar todas as tentativas crie duas figuras representando as mudanças no *(a) desempenho da tarefa (erro ou acerto)* e na *(b) sonda* ao longo das 50 tentativas. Para isso, assista o seguinte vídeo: https://youtu.be/jIal2LVR07g



## Código utilizado no vídeo
```python
import pandas as pd
import matplotlib.pyplot as plt


dados = pd.read_excel('/content/Planilha_tercio.xlsx')

tentativas = dados['Tentativas']
sonda = dados['Tempo sonda']
acerto = dados['Acerto']


plt.plot(tentativas, sonda, '-or')

plt.ylabel('Tempo (s)')
plt.xlabel('Tentativas')



plt.plot(tentativas, acerto, '-ok')

plt.ylabel('Acertos')
plt.xlabel('Tentativas')


```
