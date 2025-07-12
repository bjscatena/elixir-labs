# Config em Elixir

-   **Java/Spring**: Arquivos `.properties` ou `.yml`. São **dados**. O Spring lê esse texto quando a aplicação sobe (*runtime*).
-   **Elixir**: Arquivos `.exs`. São **código** Elixir. Esse código é executado na hora de compilar (*compile-time*).

## Estrutura de Pastas: `config/` vs. `resources/`

É um paralelo quase direto.

| Elixir | Java (Spring Boot) |
| :--- | :--- | 
| `config/config.exs` | `resources/application.properties` | 
| `config/dev.exs` | `resources/application-dev.properties` |
| `config/test.exs` | `resources/application-test.properties` |
| `config/prod.exs` | `resources/application-prod.properties` |

### **Como o Elixir sabe qual arquivo usar?**
No final do `config.exs` tem essa linha:

```elixir
# Em config/config.exs
import_config "#{config_env()}.exs"
```

## ⚙️ Função `Config.config/3`

```elixir
import Config

config :my_app, MyApp.Repo,
  username: "postgres",
  password: "postgres",
  database: "my_app_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
```

## ✅ O que faz?
Define configurações para aplicações específicas ou para o próprio projeto.

Sintaxe:
```elixir
config app_name, key, value
config app_name, [key: value, key2: value2]
config app_name, module, [key: value]
```

Exemplo explicativo:

```elixir
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]
```

- :logger é a aplicação alvo.
- :console é o backend ou módulo dentro do logger.
- O último argumento é uma lista de configurações para aquele módulo.

## 💡 Observações
- `import Config` é necessário para usar config no arquivo.
- As configurações são avaliadas em tempo de compilação por padrão.
- Para variáveis de ambiente em runtime (ex: prod), use `System.fetch_env!/1` ou configure em releases.exs
