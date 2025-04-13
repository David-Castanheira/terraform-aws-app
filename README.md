# Terraform App + Docker + AWS
Projeto simples a fim de realizar o deploy da aplicação na AWS, visando demonstrar o uso do Terraform como IaC e com Docker para a geração da imagem da aplicação.

*   **[GET]:** Exibe a data e horário atuais;

# Sumário
   * [Tecnologias](#️ferramentas-e-tecnologias-utilizadas)
   * [Sobre a aplicação](#️sobre-a-aplicação)
   * [Instalação](#️instalação)
   * [Execução da aplicação](#execução)
   * [Contribuição](#contribuição)

# ⚒️ Ferramentas e tecnologias utilizadas
*   **Java (Versão 21):** Linguagem de programação back-end;
*   **Spring Boot:** Framework Java de código aberto que simplifica o desenvolvimento de aplicações web e microsserviços com o Spring Framework, oferecendo uma série de recursos que facilitam a criação de aplicações robustas e prontas para produção com o mínimo de configuração manual;
*   **Docker:** Plataforma open-source que permite o empacotamento do software, proporcionando escalabilidade e independência de unidades executáveis;
*   **AWS:** Plataforma de computação e cloud mais utilizada do mundo oferecendo serviços de computação, armazenamento, bancos de dados, entre outros;
*   **Terraform:** Ferramenta que premite o provisionamento da infraestrutura de maneira eifciente através de código (IaC - Infrastructure as code), facilitando a manutenção e inibindo configurações manuais repetitivas;

# Serviços da AWS utilizados
- EC2 (Elastic Compute Cloud);
- Security Group;
- Keypair

# Sobre o Terraform


## Instalação
- Primeiramente, clone o repositório:
```
git clone https://github.com/David-Castanheira/terraform-aws-app.git
```

- Acesse a pasta do projeto no terminal ou CMD:
```
cd deploy
```

## 🚀 Execução da aplicação
- Inicie o servidor Tomcat através do comando Maven (certifique-se de o ter instalado localmente) no terminal:
```
mvn spring-boot:run
```

- A aplicação estará disponível na porta 8080:
```
http://localhost:8080/
```

# 🤝 Contribuição
Contribuições são sempre bem-vindas! Se você tiver ideias para melhorar este projeto, sinta-se à vontade para abrir uma issue ou enviar um pull request

