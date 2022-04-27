# Sprint Fase 3 ABCTech - App
Projeto Abc Tech App - FIAP - MBA em Engenharia de Software - Fase 3 - Grupo 9

## Problemas a serem resolvidos pela Solution Sprint

| Problema                                                                                                                                                    | Observações                                                                                                                                              | Responsável Back | Status Back                            | Responsável Front | Status Front                           |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|------------------|----------------------------------------|-------------------|----------------------------------------|
| Aplicativo não captura informação de geolocalização ao início e término de serviço, possibilitando que o prestador não compareça para prestação do serviço. | 1. Mapear ORM com info de Location nas Ordens. <br/>2. Disponibilizar REST para criação da Ordem.4. Fazer a chamada do Frontend para salvar atendimento. | Leandro          | <span style="color:green">DONE</span>  | Thiago            | <span style="color:green">DONE</span>  |          
| Reclamação dos prestadores, aplicativo lento e que descarrega o celular rapidamente. Com isso, muitos ainda acabam utilizando fichas e recibos físicos.     |                                                                                                                                                          | X                | <span style="color:green">DONE</span>  | X                 | <span style="color:green">DONE</span>  |     
| É complexo para adicionar os serviços realizados e a ordem.                                                                                                 |                                                                                                                                                          | X                | <span style="color:green">DONE</span>  | X                 | <span style="color:green">DONE</span>  |
| O sistema não gera relatório do tempo gasto para realização do serviço.                                                                                     | Os dados estão sendo gravados no DB que possibilita extração detsas informações.                                                                         | X                | <span style="color:green">DONE</span>  | X                 | <span style="color:green">DONE</span>  |
| Ao finalizar, o serviço não exige nenhuma confirmação do cliente.                                                                                           | Requisito não foi abordado no hands on.                                                                                                                  | X                | <span style="color:green">DONE</span>  | X                 | <span style="color:green">DONE</span>  |

## Premissas a serem resolvidos pela Solution Sprint

| Premissa                                                                                                  | Observações                                                                                                                                    | Responsável Back | Status Back                            | Responsável Front | Status Front                              |  
|-----------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|------------------|----------------------------------------|-------------------|-------------------------------------------|
| Sistema deve ser rápido e escalável.                                                                      | Deverá ser executado em container na AWS.                                                                                                      |                  | <span style="color:green">DONE</span>  |                   | <span style="color:green">DONE</span>     |
| O aplicativo deve funcionar em Android, iOS e Web.                                                        | Resolvido pela tuilização do Flutter.                                                                                                          |                  | <span style="color:green">DONE</span>  |                   | <span style="color:green">DONE</span>     |
| O aplicativo identificará o prestador por um código numérico.                                             | Criar atributo de Id para o Operador.                                                                                                          | Leandro          | <span style="color:green">DONE</span>  | Thiago            | <span style="color:green">DONE</span>     |
| O aplicativo deverá contar com uma lista de serviços prestados.                                           | Cadastro de Assitencias.                                                                                                                       | Leandro          | <span style="color:green">DONE</span>  | Thiago            | <span style="color:green">DONE</span>     |
| Cada ordem deverá ter ao menos 1 serviço prestado e poderá ter até 15 serviços realizados.                | Ciar handler de validação no backend.                                                                                                          | Leandro          | <span style="color:green">DONE</span>  | Thiago            | <span style="color:green">DONE</span>     |
| O aplicativo deverá gravar a hora e geolocalização ao iniciar o atendimento.                              | 1. Frontend chama Rest de criacão da Ordem.<br/>2. Backend salva as informações. (Utiliza o mesmo serviço de save do backend).                 | Leandro          | <span style="color:green">DONE</span>  | Thiago            | <span style="color:green">DONE</span>     |
| O aplicativo deverá gravar a hora e geolocalização ao finalizar o atendimento.                            | 1. Frontend chama Rest de finalização de ordem.<br/>2. Backend Atualiza as informações da Ordem. (Utiliza o mesmo serviço de save do backend). | Leandro          | <span style="color:green">DONE</span>  | Thiago            | <span style="color:green">DONE</span>     |
| Ao finalizar, todas essas informações devem ser enviadas para o servidor e gravadas em um banco de dados. | Parece que é o mesmo item anterior. (Utiliza o mesmo serviço de save do backend).                                                              | Leandro          | <span style="color:green">DONE</span>  | Thiago            | <span style="color:green">DONE</span>     |

## Desenho da Solução

![System Design](docs/system-design.png)

## Entregáveis

| Entregável                                                                                                                                | Observações              | Responsável | Status                                 |
|-------------------------------------------------------------------------------------------------------------------------------------------|--------------------------|-------------|----------------------------------------|
| Apresentação com quais requisitos serão desenvolvidos na POC do aplicativo (lembrando que, na live, desenvolveremos todos os requisitos). | Docs anexados no FIAP ON |             | <span style="color:green">DONE</span>  | 
| Print do pipeline executado no CI/CD da aplicação.                                                                                        | Prints abaixo            |             | <span style="color:green">DONE</span>  |    
| O código de backend desenvolvido em Springboot com os testes unitários em ao menos 30% das features.                                      |                          | Leandro     | <span style="color:green">DONE</span>  |
| O código front-end desenvolvido em Flutter/Dart com os requisitos descritos na apresentação.                                              |                          | Thiago      | <span style="color:green">DONE</span>  | 

### Code Build

![Code Build](docs/code-build.png)

### Pipeline Executando

![System Design](docs/pipeline-executando.png)

### Configuração do Beanstalk

![Beanstalk](docs/beanstalk.png)

### Code Coverage

![Backend](docs/coverage-backend.png)

![Frontend](docs/coverage-frontend.png)
