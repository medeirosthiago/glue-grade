# Apresentação Banca 01 (04/12/2015)
## Introdução

## Revisão Bibliográfica
 1. 2 técnicas de data mining: árvore de decisão e redes neurais, estas técnicas permitem fazer o reconhecimento de padrões e também diagnosticar novos casos. conseguem ver se novos clientes merecem crédito ou não - banco do brasil
 2. otimizar o processo do diagnóstico, minimizar riscos e custos e melhor eficácia dos resultados. 118 históricos de pacientes (curitiba) árvore de decisão e regras de classificação
 3. frequencias que uma página web é acessada e quais os serviços mais procurados

 comum a setores diferentes, porém o desenvolvimento da técnica são particulares para cada caso.

## Fundamentação Teórica
 ### KDD
 É a descoberta de conhecimento por dados, ou knowledge discovery from data. Ou seja, é um processo pelo qual se obterá não somente gráficos ou um rendimento do data mining, mas filtrar informações que são apresentadas eliminando possíveis ruídos (padrões irrelevantes).

 ### Data Mining
 Data Mining pode ser entendido como o processo de extração de informações de um conjunto de dados para tomada de decisões. É uma metodologia aplicada em diversas áreas. Data mining define o processo automatizado de captura e análise de conjuntos de dados para extrair um significado, sendo usado para descrever características do passado como para predizer tendências para o futuro.
 Para conseguir isso o processo de data mining possui vários métodos: (métodos)
 * Classificação: Descrição gráfica ou algébrica das características das observações de várias populações. A ideia é de alguma forma classificar um item ou vários de uma vez, para compara-los posteriormente.
 * Modelos de Relacionamento entre Variáveis: Aqui são aplicados técnicas de estatística como regressão linear simples, múltipla e modelos lineares.
 * Análise de Agrupamento (Cluster): São feitos clusters, que são grupos de dados baseados em medias de similaridade ou modelos probabilisticos. A análise visa detectar a existência de diferentes grupos dentro de um conjunto de dados, caso exista, quais são eles.
 * Sumarização: Descrição compacta para um subconjunto. Medidas de posição e variabilidade são exemplos simples de sumarização
 * Modelo de Dependência: Descreve as dependências significativas entre variáveis, tendo duas formas: estruturado(gráficos) e quantitavtivo(grau de dependencia, usando escala numérica)
 * Regras de Associação: Determina relação entre campos de um banco de dados. Derivação de correlações multivariadas que permitem alimentar as tomadas de decisões.
 * Análise de Séries Temporais: Determina características sequencias, como dados com dependência no tempo. Correlações entre dois instantes de tempo...

 ### Machine Learning

 ### Python

## Materiais e Métodos

 ### API
 tecnologia que permite um pedaço de software se comunicar com outro pedaço de software
 existem vários tipos de api, é comumente referenciado a outras tecnologias
 uma api é composta por uma séria de funções acessíveis somente por programação, e que permitem utilizar características do software menos evidentes ao uaitlizador tradicional

 ### REST
 estilo de arquitetura para a construção de serviços web consistentes e coesos, é baseado em recursos e estados dos recursos
 enfatiza a escalabilidade na interação entre componentes, generalidade de interfaces, implantação independente dos componentes de um sistema, uso de componentes intermediários, reforço na segurança e encapsulamento de sistemas legados
 -> foca nos papéis dos componentes
 similar ao funcionamento de uma página web, faz a requisição e recebe
 recebe uma representação que é um recurso transformado... XML, JSON, JPG...

 ### OAuth
 autenticar a parte que está se conectando, e se autenticar pra ele
 cliente tenha acesso a um recurso protegido pelo seu dono em um servidor
 evitar problmas de usuários compartilhar suas senhas com aplicações web
 1.0a não permite trocar credenciais através de uma conexão SSL (canal criptografado entre um servidor web e um browser)
 three-legged-flow -> cliente obtem um token para a requisição a aplicação, dono autoriza, cliente troca o token de requisição para acesso e acessa os recursos protegidos

 ### Etapas do Data Mining
 ### Clustering
 pegar uma coleção de itens e particioná-los em pequenas coleções (cluster), utilizando uma heurística
 é usado em bases de texto (textmining) agrupa textos que falem sobre o mesmo assunto

 ### Normalização
 dados não estão formatados para a análise, por exemplo vagas de emprego DBA - Database Adminsitrator

 ### Similaridade
 verificar a similaridade entre os itens após a normalização.
 definir uma heurística que conseguirá aproximar a similaridade entre dois valores quaisquer
 comparar o tempo de carreira entre duas pessoas (easy)
 comparar um elemento profissional - atitude de liderança (hard)

## Considerações Finais
