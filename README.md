# 🎉 Eventos API

Projeto de gerenciamento de eventos, atividades, blocos, participantes e categorias, desenvolvido com **Spring Boot**, **JPA** e **H2**.

## 🚀 Tecnologias

- Java
- Spring Boot
- Spring Data JPA
- H2 Database
- Maven
- Lombok

## 🗂️ Estrutura das Entidades

- **Categoria:** Tipos de atividades (ex: Curso, Oficina)
- **Atividade:** Evento principal, vinculado a uma categoria e participantes
- **Bloco:** Períodos de tempo de uma atividade
- **Participante:** Usuários inscritos nas atividades

## 📝 Scripts de inicialização

O projeto utiliza o arquivo `import.sql` para popular o banco H2 com dados de exemplo ao iniciar.

## 💡 Observações

- O projeto utiliza Lombok para reduzir o código boilerplate.
- As datas dos blocos usam o tipo `Instant` e são mapeadas como `TIMESTAMP WITHOUT TIME ZONE`.

---

Desenvolvido por Ricardo Rodrigues Santana 
