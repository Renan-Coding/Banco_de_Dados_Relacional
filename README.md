## Documentação do Modelo Relacional

**Projeto:** Abandono Zero

**Data:** 2024-05-09

**Autor:** Renan Sabino dos Reis

**Objetivo:** Descrever o modelo relacional do projeto de forma resumida e simplificada.

## Entidades

- **Usuários** (`users`): Armazena informações básicas sobre os usuários (nome, email, etc.).
  - `id` (INTEGER): Identificador único do usuário.
  - `e-mail` (VARCHAR): Endereço de e-mail do usuário.
  - `password` (VARCHAR): Senha do usuário.
  - `admin` (BINARY): Indica se o usuário é um administrador.

- **Informações dos Usuários** (`users_infos`): Detalhes sobre os usuários.
  - `id` (INTEGER)`: Identificador único das informações do usuário.
  - `name` (VARCHAR): Nome do usuário.
  - `birth_date` (DATE): Data de nascimento do usuário.
  - `registration_site_date` (DATE): Data de registro no site.
  - `country` (VARCHAR): País do usuário.
  - `state` (VARCHAR): Estado do usuário.
  - `city` (VARCHAR): Cidade do usuário.
  - `neighborhood` (VARCHAR): Bairro do usuário.
  - `education` (VARCHAR): Nível de educação do usuário.
  - `family_constitution` (VARCHAR): Constituição familiar do usuário.
  - `family_income` (VARCHAR): Renda familiar do usuário.
  - `housing_type` (VARCHAR): Tipo de moradia do usuário.
  - `residents_number` (INTEGER): Número de residentes na moradia.
  - `id_users` (INTEGER): Chave estrangeira referenciando a tabela de Usuários.

- **Cães Atuais** (`current_dog`): Informações sobre os cães atualmente possuídos pelos usuários.
  - `id` (INTEGER): Identificador único do cão atual.
  - `name` (VARCHAR): Nome do cão.
  - `time_with` (INTEGER): Tempo de convivência com o cão.
  - `breed` (VARCHAR): Raça do cão.
  - `origin` (VARCHAR): Origem do cão.
  - `paid` (BINARY): Indica se houve pagamento pelo cão.
  - `age_arrived` (INTEGER): Idade do cão quando chegou ao usuário.
  - `personality` (MEDIUMTEXT): Personalidade do cão.
  - `id_users` (INTEGER): Chave estrangeira referenciando a tabela de Usuários.

- **Contato dos Usuários** (`contact_users`): Informações de contato dos usuários.
  - `id` (INTEGER): Identificador único das informações de contato.
  - `full_name` (VARCHAR): Nome completo do usuário.
  - `phone_number` (VARCHAR): Número de telefone do usuário.
  - `social_name` (VARCHAR): Nome social do usuário.
  - `id_users` (INTEGER): Chave estrangeira referenciando a tabela de Usuários.

- **Usuários com Cães Anteriores** (`had_dogs`): Informações sobre os cães anteriores dos usuários.

- **Usuários com Cães Atuais** (`has_dogs`): Informações sobre os cães atuais dos usuários.

- **Usuários que Desejam Ter Cães** (`want_dogs`): Informações sobre os usuários que desejam ter cães.

- **Usuários que Não Desejam Ter Cães** (`dont_want_dogs`): Informações sobre os usuários que não desejam ter cães.

## Relacionamentos

- Um usuário pode ter várias informações associadas a ele, como informações básicas, cães atuais e informações de contato (1:N).
- Cada cão atual pertence a um único usuário (1:1).
- Cada registro de contato está associado a um único usuário (1:1).
- As demais tabelas possuem relacionamentos similares com a tabela de Usuários.

## Regras de Negócio

- Os campos obrigatórios devem ser preenchidos em todas as tabelas.
- As informações devem ser consistentes entre as tabelas relacionadas.
- A integridade referencial deve ser mantida para garantir a consistência dos dados.
- A segurança e a privacidade das informações dos usuários devem ser preservadas.

## Considerações Finais

Este modelo relacional simplificado oferece uma estrutura para armazenar informações sobre os usuários, seus cães atuais, informações de contato e preferências em relação a cães. Os relacionamentos entre as entidades permitem uma visão abrangente das interações entre os dados. No entanto, é importante adaptar e expandir este modelo conforme necessário para atender aos requisitos específicos do projeto.

