# postgreSQL

Repositório: Antonio-Sitoe/postgreSQL

Um conjunto de exemplos, scripts e utilitários para trabalhar com PostgreSQL — incluindo instruções de instalação, exemplos de uso, e arquivos para execução via Docker.

## Conteúdo
- scripts/ — consultas e scripts SQL de exemplo
- docker/ — Dockerfile e docker-compose para levantar um banco PostgreSQL de teste
- examples/ — exemplos de criação de tabelas, triggers e backups
- README.md — este arquivo

> Este repositório tem como objetivo oferecer exemplos práticos para desenvolvimento e testes com PostgreSQL.

## Pré-requisitos
- Docker (opcional, mas recomendado para testes isolados)
- psql (cliente PostgreSQL) ou qualquer outro cliente SQL
- PostgreSQL 12+ (se executar localmente sem Docker)

## Iniciando com Docker (recomendado)
1. Copie o arquivo de exemplo de ambiente:
   - cp docker/.env.example docker/.env
2. Inicie os containers:
   - docker compose up -d
3. Verifique os logs e aguarde o banco inicializar:
   - docker compose logs -f db

As credenciais e outras configurações estão em `docker/.env`. O serviço do banco normalmente fica disponível em `localhost:5432`.

## Conexão via psql
Exemplo de comando para conectar:
```
psql -h localhost -p 5432 -U seu_usuario -d seu_banco
```

Para executar um script SQL:
```
psql -h localhost -p 5432 -U seu_usuario -d seu_banco -f scripts/exemplo.sql
```

## Estrutura de exemplo (scripts)
- scripts/create_tables.sql — cria tabelas de exemplo
- scripts/seed_data.sql — insere dados de teste
- scripts/backup.sh — script simples para backup (pg_dump)
- docker/docker-compose.yml — composição para levantar PostgreSQL

(Ajuste os nomes conforme os arquivos reais presentes no repositório.)

## Boas práticas
- Nunca comite credenciais reais no repositório. Use variáveis de ambiente e .env local na máquina.
- Versione seus scripts SQL com pequenos commits e mensagens claras.
- Teste migrations em bancos de homologação antes de aplicar em produção.

## Contribuição
Contribuições são bem-vindas! Abra issues para bugs/feature-requests ou envie pull requests com melhorias. Por favor, inclua:
- Descrição do problema/feature
- Passos para reproduzir
- Exemplo de SQL ou teste

## Licença
Especifique a licença do projeto (ex: MIT). Se não houver, adicione um arquivo LICENSE ou defina aqui.

## Contato
Mantainer: Antonio-Sitoe
