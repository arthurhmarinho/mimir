# 🏛️ Mimir (Academic Assistant)

> **Status:** Em Desenvolvimento 🚧

![Go](https://img.shields.io/badge/Backend-Go-00ADD8?style=flat&logo=go)
![Kotlin](https://img.shields.io/badge/Mobile-Kotlin-7F52FF?style=flat&logo=kotlin)
![Android](https://img.shields.io/badge/Platform-Android-3DDC84?style=flat&logo=android)
![UFRN](https://img.shields.io/badge/Target-SIGAA%2FUFRN-blue)

## 📖 Sobre o Projeto

O **Mimir** é uma solução *Full Cycle* (Backend + Mobile) desenvolvida para automatizar o gerenciamento da vida acadêmica. 

A motivação foi resolver um problema pessoal recorrente: a dificuldade de acompanhar múltiplos prazos, datas de provas e alterações de horário no portal universitário (SIGAA) manualmente. O sistema atua como um "segundo cérebro", extraindo dados automaticamente e notificando o usuário de forma proativa.

### 🎯 O que ele resolve?
- Fim da necessidade de login manual repetitivo no portal para checar notas.
- Centralização de prazos de entregas e horários de aula.
- Notificações proativas sobre entregas iminentes (mesmo offline).

---

## 🛠️ Tech Stack (Tecnologias)

O projeto utiliza uma arquitetura **Cliente-Servidor** moderna, separando a lógica de extração de dados da interface do usuário.

### ⚙️ Backend (The Brain)
Construído em **Go (Golang)** pela sua performance, tipagem estática e facilidade de compilação binária.
- **Go-Rod:** Para *Web Scraping* e automação de navegador (Headless Chrome), lidando com a autenticação complexa do portal.
- **SQLite:** Banco de dados leve e embarcado para persistência local dos dados extraídos.
- **REST API:** Expõe os dados tratados para o aplicativo móvel via JSON.

### 📱 Mobile (The Face)
Construído nativamente em **Kotlin** para garantir a melhor performance e integração com o sistema Android.
- **Jetpack Compose:** UI moderna e declarativa (sem arquivos XML).
- **Retrofit:** Consumo da API do backend.
- **WorkManager:** Agendamento de tarefas e notificações em segundo plano.
- **iCalendar (.ics):** Geração de arquivos de calendário para sincronização nativa com Google Agenda/Outlook.

---

## ⚡ Funcionalidades

- [x] **Login Automatizado:** Autenticação segura no portal do aluno.
- [x] **Extração de Horários:** Identificação de aulas, salas e horários.
- [x] **Monitor de Prazos:** Listagem de tarefas pendentes e datas de provas.
- [ ] **Alerta de Notas:** Notificação quando uma nota nova é lançada (Em breve).
- [ ] **Exportação de Calendário:** Gera link para importar grade no Google Calendar.

---

## 🚀 Como Rodar Localmente

### Pré-requisitos
- **Go** 1.21+ instalado.
- **Android Studio** (ou ambiente configurado com SDK Android).
- **Docker** (Opcional, para o backend).

### 1. Configurando o Backend (Go)

```bash
# Clone o repositório
git clone (https://github.com/arthurhmarinho/mimir.git)
cd server

# Configure as variáveis de ambiente (crie um arquivo .env)
# Não commite suas senhas reais!
echo "SIGAA_USER=sua_matricula" > .env
echo "SIGAA_PASS=sua_senha" >> .env

# Instale as dependências e rode
go mod tidy
go run main.go
# O servidor iniciará em http://localhost:8080
