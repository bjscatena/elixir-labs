# 🧪 Elixir Labs

Repositório de estudos, POCs e experimentos com Elixir, OTP, Phoenix e todo o ecossistema funcional.

Conteúdo:

- Pequenas provas de conceito
- Projetos de estudo práticos
- Anotações e resumos sobre tópicos aprendidos

---

## 🗂️ Estrutura do Repositório

```text
elixir-labs/
├── README.md
├── .gitignore
├── apps/ ou pocs/
│   ├── poc_nome/
│   │   ├── README.md
│   │   ├── mix.exs
│   │   └── lib/
└── notes/
    ├── assunto.md
```


| Pasta            | Descrição                                                                |
|------------------|--------------------------------------------------------------------------|
| `apps/` ou `pocs/` | Contém cada POC ou projeto de estudo isolado, criado com `mix new`.     |
| `notes/`         | Anotações teóricas ou insights sobre os estudos (ex: OTP, Supervisors). |

---

## 🔬 Projetos atuais

| Projeto                 | Descrição                                      |
|-------------------------|------------------------------------------------|

---

## 📚 Anotações



---

## 🛠️ Requisitos

- Elixir >= 1.14
- Erlang/OTP >= 25

---

## 🚀 Rodando uma POC

```bash
cd pocs/poc_nome
mix deps.get
mix run
