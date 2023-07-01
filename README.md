# Guia básico de Terraform

## Requisitos mínimos

- [**Terraform CLI**](https://developer.hashicorp.com/terraform/downloads) instalado na máquina com versão mínima de 1.5.x

## Comandos usuais

> **Sugestão:** você pode encurtar o comando do Terraform definindo um *alias* nomeado de `tf` da seguinte forma:

```txt
alias tf="terraform"
```

- ### Iniciar um repositório local

1. Crie um arquivo no formato do Terraform

```bash
touch main.tf
```

2. Insira as informações do provedor de nuvem

```terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.6.1"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}
```

3. Inicialize o repositório

```bash
terraform init
```

- ### Formatar código

```bash
terraform fmt
```

- ### Atualizar extensões e dependências

```bash
terraform init -upgrade
```

- ### Atualizar informações da infraestrurura

```bash
terraform refresh
```

- ### Exibir status atual da infraestrutura

```bash
terraform plan
```

- ### Mostrar plano de execução da infraestrutura

```bash
terraform plan
```

- ### Aplicar criações e alterações na infraestrutura

```bash
terraform apply
```

- ### Validar código da infraestrutura

```bash
terraform validate
```

- ### Encerrar toda a infraestrutura

```bash
terraform destroy
```

- ### Encerrar um recurso específico

```bash
terraform destroy -target <recurso>
```

- ### Iniciar sessão no Terraform Cloud

```bash
terraform login
```

> **Aviso:** ao usar o Terraform Cloud, insira as chaves secretas do provedor correspondente (e.g chaves secretas da **AWS IAM**)

<details>
  <summary>Captura de tela</summary>

  ![Credenciais de segurança da AWS](https://github.com/T0mAlexander/Terraform-Alura/blob/screenshots/aws%20security%20credentials.png?raw=true)
</details>
