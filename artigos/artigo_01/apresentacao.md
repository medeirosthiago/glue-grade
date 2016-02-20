# Apresentação do Artigo - SEICOM IV

## Conteúdo
  Boa noite, sou o Thiago Medeiros e vou apresentá-los o meu artigo: Conceitos de Data Mining e o uso da linguagem Python para a mineração de dados.
  Agredeço a ajuda dos professores Valmei e João no desenvolvimento do artigo.
  E bem, este vai ser o conteúdo da apresentação.
  Começarei comentando um pouco sobre um panorama geral do meu trabalho e o porque a necessidade de uma mineração ou de uma análise de dados. E para fazer essa mineração são necessários ferramentas que ajudaram no processo.
  Depois explicarei, de acordo com as minhas referências, o que é KDD e Data Mining, mas mais em relação aos termos, os nomes, se eles são iguais ou não...
  Então comentarei com um pouco mais de detalhes sobre o que é KDD e os passos que ele possui
  Assim como irei falar sobre Data Mining, qual a sua definição e alguns métodos conhecidos para realizá-lo
  Python como uma ferramenta, porque da escolha do Python, o que a linguagem tem de especial para começar a ser escolhida entre os cientistas de dados.
  Um exemplo de caso de uso, que é o Google Flu
  E concluirei dando um overview sobre tudo o que foi estudado.

## Introdução
  Jiawei Han, é um dos autores de Data Mining, Concepts and Techniques, disse algo muito interessante sobre a época em que vivemos. É muito comum falar que estamos na era da informação ma ele dá um outro ponto de vista, dizendo que NÃO, nós estamos na era dos dados, a era da informação ainda está por vir.
  Isto se dá não só emerção de dados a cada momento, como também o número de dados já existentes em várias organizações, seja uma creche, hospital, prefeitura e outros.
  Este gigantesco número de dados ainda precisa ser minerado para que se torne em informação útil. Para que isso seja possível é necessário técnicas e ferramentas capazes de lidar com estes dados. O que se busca é informação útil e conhecimento.
  Dessa necessidade surgiu o data mining como um campo interdiscplinar.

> próximo slide
  Hospitais conseguem enxergar trends e anomalias nos registros de um paciente.
  Ferramentas de busca conseguem trazer um melhor ranking nas consultas
  Padrões podem ser encontrados tanto em instituições particulares como pública
  Cibersegurança e redes de computadores conseguem detectar intrusões
  Monitorar o consumo de energia em bairros
  Analisar padrões no mercado farmaceutico, financeiro, bioinformatico.
  Mineração de dados em redes sociais para análise de grupos de pessoas em um nicho específco ou mesmo a análise em massa...
  Esse é o resultado final, ter esse tipo de conhecimento para então tomar decisões.

## KDD e Data Mining
  Por ser um assunto totalmente interdisciplinar o data mining pode ser definido de diversas maneiras. O termo data mining mesmo não representa a sua totalidade. Como exemplo é a mineração de ouro em rochas ou areia. O termo é mineração de ouro e não mineração de rocha ou mineração de areia.
  Algumas literaturas afirmam que o processo de mineração de dados deveria se chamar "mineração de conhecimento através de dados", logo é um tanto quanto longo. Alguns termos surgiram como knowledge mining from data, knowledge extraction, data/pattern analysis, data archaeology...

## KDD
 É a descoberta de conhecimento por dados, ou knowledge discovery from data. Ou seja, é um processo pelo qual se obterá não somente gráficos ou um rendimento do data mining, mas filtrar informações que são apresentadas eliminando possíveis ruídos (padrões irrelevantes).

 Vale destacar que data mining é um estágio dentro do kdd, e muitas vezes confundido como sendo o kdd por inteiro.

## Data Mining
 Data Mining pode ser entendido como o processo de extração de informações de um conjunto de dados para tomada de decisões. É uma metodologia aplicada em diversas áreas. Data mining define o processo automatizado de captura e análise de conjuntos de dados para extrair um significado, sendo usado para descrever características do passado como para predizer tendências para o futuro.
 Para conseguir isso o processo de data mining possui vários métodos: (métodos)
 * Classificação: Descrição gráfica ou algébrica das características das observações de várias populações. A ideia é de alguma forma classificar um item ou vários de uma vez, para compara-los posteriormente.
 * Modelos de Relacionamento entre Variáveis: Aqui são aplicados técnicas de estatística como regressão linear simples, múltipla e modelos lineares.
 * Análise de Agrupamento (Cluster): São feitos clusters, que são grupos de dados baseados em medias de similaridade ou modelos probabilisticos. A análise visa detectar a existência de diferentes grupos dentro de um conjunto de dados, caso exista, quais são eles.
 * Sumarização: Descrição compacta para um subconjunto. Medidas de posição e variabilidade são exemplos simples de sumarização
 * Modelo de Dependência: Descreve as dependências significativas entre variáveis, tendo duas formas: estruturado(gráficos) e quantitavtivo(grau de dependencia, usando escala numérica)
 * Regras de Associação: Determina relação entre campos de um banco de dados. Derivação de correlações multivariadas que permitem alimentar as tomadas de decisões.
 * Análise de Séries Temporais: Determina características sequencias, como dados com dependência no tempo. Correlações entre dois instantes de tempo...

## Python
  Existem várias linguagens capazes de analiser e manipular dados, realizar computação exploratória e a visualização de dados. Linguagens famosas como R, MATLAB, SAS, até mesmo algumas ferramentas como o WEKA feito em Java existem para este tipo de uso.
  O diferencial do python são as bibliotecas que ele possui para realizar este tipo de serviço. E logo vem a facilidade de aprender python, por ser desenvolvida com este intuito.
  O que se perceberam é que python é usado para pesquisa e prototipação, mas também para o desenvolvimento de sistemas.
  Porque digo isso, muitas empresas utilizam uma linguagem para pesquisa e prototipação como MATLAB e R e depois que as ideias estão maduras partem para uma linguagem como Java, C++, C# para criar um sistema mais robusto.
  Com o python é possível fazer ambas na mesma linguagem e tecnólogo e cientistas acabam utilizando o mesmo conjunto de ferramentas para trabalhar.
  Falando em ferramentas.... Não se esquecer do scikit que é uma ferramente para aprendizado de máquina. (machine learning)

## Caso de Uso
 Google's Flu Trends, parece que foi descontinuado, mas ele utilizava termos de busca específicos para indicar ocorrências de gripe. O serviço era capaz de encontrar uma relação entre o número de pessoas que procuram informações sobre a gripe e o número de pessoas que possuem os sintomas. Juntando as duas buscas é encontrado um padrão e conseguiam estimar as ocorrências de gripe com duas semanas de antecedência.

## Considerações Finais
 O que procura é isto, dados como informação pronta para o uso. Porém ainda é uma tarefa um pouco dificil para transformar dados em conhecimento, justamente porque não existe um estilo de mineração específica que funcione para todos os casos. Cada caso tem suas particularidades, sendo necessário refazer algumas etapas tando de KDD como data mining para chegar a um resultado desesjado.
 Algumas ferramentas como o Python estão evoluindo para ajudar nesse processo, por python ser uma linguagem open source e ter uma comunidade muito ativa, várias bibliotecas e frameworks estão sendo trabalhados e evoluídos para ajudar na mineração e análise de dados.
