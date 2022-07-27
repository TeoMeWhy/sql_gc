# SQL do Zero
Bem vindo ao curso de SQL do Zero utilizando dados de CS:GO da [Gamers Club](https://gamersclub.com.br/).

As lives serão realizadas no canal [Téo Me Why](https://www.twitch.tv/teomewhy), às terças e quintas às 9:00AM. Você pode encontrar a [coleção dos VODs aqui](https://www.twitch.tv/collections/1GD1BC-Y3BbhgA).

## Sumário
- [Sobre o Curso](#sobre-o-curso)
- [Sobre o Professor](#sobre-o-professor)
- [Sobre os Dados](#sobre-os-dados)
- [Setup e requisitos](#setup-e-requisitos)
- [Calendário](#calendário)
- [FAQ](#faq)

## Sobre o curso

Este é um curso de SQL aberto à toda comunidade e aqueles que desejam realizar seus primeiros passos com a linguagem SQL. Como principal referência deste material, temos o livro [Introdução à Linguagem SQL - Abordagem prática para iniciantes. Nield T.](https://amzn.to/3pS3Bmo)

Os encontros serão às terças e quintas às 09:00AM na [Twitch do Téo Me Why](https://www.twitch.tv/teomewhy).

### Para quem NÃO é este curso

O foco será a realização de consultas em um banco de dados que já possui dados. Não é o objetivo abordar temas que envolvam criação de banco de dados, bem como design e modelagem de arquitetura de dados.

## Sobre o professor

Téo é Bacharel em Estatística e tem Pós Graduação em Data Science & Big Data.É bastante curioso em aprender novas tecnologias e aprimorar seus projetos voltados à Análise de Dados e Modelagem Preditiva.

Tem atuado desde 2014 em grandes empresas, sempre utilizando técnicas Estatísticas e Computacionais para empregar Aprendizado de Máquina em diferentes cenários. Com isso, entende que a principal etapa no ciclo analítico consiste em consultas de dados em bancos relacionais. Além de realizar suas lives na Twitch desde 08.2019.

Hoje, como Head of Data na Gamers Club, gostaria de contribuir ainda mais para a comunidade trazendo dados reais e aplicações com SQL.

Você pode conhecer mais sobre o professor no [LinkedIn](https://www.linkedin.com/in/teocalvo/).

## Sobre os dados

Para este curso utilizaremos dados de partidas que ocorreram nos servidores da Gamres Club. São aprtidas referentes à 2.500 jogadores, havendo mais de 30 estatísticas de seus partidas. Tais como Abates, Assistências, Mortes, Flash Assist, Head Shot, etc.

Alem disso, temos informações de medalhes destes players, como:
- Assinatura Premium, Plus
- Medalhas da Comunidade

Para ter uma melhor descrição destes dados, confira na [página oficial do Kaggle](https://www.kaggle.com/gamersclub/brazilian-csgo-plataform-dataset-by-gamers-club) onde os dados foram disponibilizados.

Abaixo temos o schema (relacionamentos) dos nossos dados.

<img src="https://user-images.githubusercontent.com/4283625/157664295-45b60786-92a4-478d-a044-478cdc6261d7.jpg" alt="" width="500">


## Setup e requisitos

### 1. Visual Studio Code

Para acompanhar este curso você precisará instalar o [Visual Studio Code](https://code.visualstudio.com/). Basta realizar o download na [página oficial](https://code.visualstudio.com/) da ferramenta e seguir os passos de instalação.

### 2. Dados

Como vamos utilizar os dados da GC, você precisa baixar estes dados de nossa pasta no [google drive](https://drive.google.com/file/d/1JwV2q_NEEPkacCixgM0MXIxe4z-Sdigk/view?usp=sharing).

### 3. Conhecimentos técnicos

Temos como objetivo  ajudar pessoas que estão descobrindo o mundo de dados agora. Assim, não é necessário nenhum conhecimento com banco de dados. Embora, experiência com programação possa deixar o aprendizado mais leve.

## Calendário

|Data|Conteúdo|Agenda|VOD|
|:---:|-|:---:|:---:|
|15.03.22 9:00AM | SELECT FROM WHERE, DISTINCT, CASE WHEN|[:link:](https://www.twitch.tv/teomewhy/schedule?segmentID=2f908e6b-61c2-46d9-9d01-bbb53feb7bb3)|[:link:](https://www.twitch.tv/videos/1426415137)|
|17.03.22 9:00AM | COUNT, AVG, MIN, MAX, GROUP BY, ORDER BY|[:link:](https://www.twitch.tv/teomewhy/schedule?segmentID=b5b7db80-aeb3-49c7-8458-769510ade8d9)| [:link:](https://www.twitch.tv/videos/1428367386) |
|22.03.22 9:00AM | JOINS |[:link:](https://www.twitch.tv/teomewhy/schedule?segmentID=3c42117d-75e8-43ba-a72e-0539d2027d02)|[:link:](https://www.twitch.tv/videos/1433520544)|
|24.03.22 9:00AM | Resolução de Exercícios (JOINS) |[:link:](https://www.twitch.tv/teomewhy/schedule?segmentID=058bb5a7-f4f2-4793-8d3b-a0134f42538a)|[:link:](https://www.twitch.tv/videos/1440197492)|
|29.03.22 9:00AM | SUBQUERIES & WINDOWS FUNCTIONS |[:link:](https://www.twitch.tv/teomewhy/schedule?segmentID=46789e74-ad18-4d79-b139-8f436f5bcf83)|[:link:](https://www.twitch.tv/videos/1440199696)|
|31.03.22 9:00AM | CREATE TABLE |[:link:](https://www.twitch.tv/teomewhy/schedule?segmentID=bb8d3e40-864e-4c6c-8b94-a72fcdd280d2)||

## FAQ

1. É grátis?

Sim, as lives serão abertas e sem a necessidade de pagamento.

2. Precisa se cadastrar?

Não, é só abrir a live no horário da transmissão.

3. Vai ficar gravado?

Sim! Os inscritos no canal da Twitch terão acesso à todos os VODs gerados a parti das lives. Para ser inscrito, basta ter Amazon Prime e assinar nosso canal de forma gratuita ou realizando o pagamento na própria plataforma.

4. Vai para o YouTube?

Não! Queremos prestigiar nossos apoiadores do projeto. Assim, apenas os assinantes da Twitch terão acesso ao conteúdo gravado.

5. Como posso apoiar?

Sua inscrição no canal da Twitch já apoia muito o nosso trabalho. Esta seria uma ótima forma de contribuir.
Alem da ajuda financeira, sinta-se a vontade para abrir `issues` no nosso repositório para melhorias no projeto.

6. Posso usar este material em um curso?

Este material é aberto e pode ser utilizado por outras iniciativas gratuitas na comunidade. É importante que se faça as devidas referências ao utilizar este projeto. **Não se deve utilizar este conteúdo para fins comerciais.**
