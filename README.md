# PostgreSQL Learning Project

A comprehensive collection of PostgreSQL queries and database practices, organized for learning and reference purposes.

## 📋 Overview

This repository contains a structured set of PostgreSQL queries and exercises, ranging from basic database creation to advanced queries. It includes a Docker setup for easy local development and a complete database schema diagram.

## 🗂️ Project Structure

```
postgreSQL/
├── queries - create-database/  # Database creation scripts
├── queries 0 - 25/            # Basic SQL queries
├── queries 25/                # Intermediate SQL queries
├── queries 70 - 85/           # Advanced SQL queries
├── DER.png                    # Entity-Relationship Diagram
├── docker-compose.yml         # Docker setup for PostgreSQL
└── env.exemple                # Environment variables template
```

## 🚀 Getting Started

### Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your machine
- [Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Antonio-Sitoe/postgreSQL.git
cd postgreSQL
```

2. Set up environment variables:
```bash
cp env.exemple .env
```

3. Start the PostgreSQL container:
```bash
docker-compose up -d
```

The PostgreSQL database will be available at:
- **Host:** `localhost`
- **Port:** `5434`
- **Database:** `meu_banco`
- **Username:** `postgres`
- **Password:** `123456`

## 💾 Database Configuration

The project uses PostgreSQL 16 running in a Docker container. The configuration can be found in `docker-compose.yml`:

- Container name: `postgres-local`
- PostgreSQL version: 16
- Exposed port: 5434 (mapped to internal port 5432)
- Data persistence: `./data` directory

## 📊 Database Schema

The database schema is documented in the Entity-Relationship Diagram (`DER.png`). Refer to this diagram to understand the database structure and relationships between tables.

## 📚 Query Collections

The repository organizes SQL queries into different difficulty levels:

### queries - create-database
Contains scripts for initial database setup and table creation.

### queries 0 - 25
Basic SQL queries covering:
- SELECT statements
- WHERE clauses
- Basic filtering
- Simple joins

### queries 25
Intermediate SQL queries including:
- Complex joins
- Aggregations
- GROUP BY and HAVING
- Subqueries

### queries 70 - 85
Advanced SQL queries featuring:
- Complex subqueries
- Window functions
- Advanced aggregations
- Performance optimization techniques

## 🔌 Connecting to the Database

You can connect to the database using any PostgreSQL client:

### Using psql (Command Line)
```bash
psql -h localhost -p 5434 -U postgres -d meu_banco
```

### Using pgAdmin or other GUI tools
- Host: `localhost`
- Port: `5434`
- Database: `meu_banco`
- Username: `postgres`
- Password: `123456`

## 🛠️ Usage

1. Start the PostgreSQL container using Docker Compose
2. Run the database creation scripts from `queries - create-database/`
3. Execute queries from different folders based on your learning progress
4. Refer to the DER diagram to understand table relationships

## 📝 Notes

- The `data/` directory is used for PostgreSQL data persistence and is ignored by git
- Modify the `docker-compose.yml` file if you need different database credentials or port mappings
- Always refer to the DER diagram when writing queries to understand table relationships

## 🤝 Contributing

Feel free to fork this repository and add your own SQL queries and exercises!

## 📄 License

This project is open source and available for educational purposes.

## 👤 Author

**Antonio Sitoe**
- GitHub: [@Antonio-Sitoe](https://github.com/Antonio-Sitoe)

---

Happy learning! 🎓
```
