# Heroes API

Building an API using Ruby on Rails 6.

<table>
  <tr>
    <td>Ruby Version</td>
    <td>2.5.8</td>
  </tr>
  <tr>
    <td>Rails Version</td>
    <td>6.0.4.6</td>
  </tr>
  <tr>
    <td>Database</td>
    <td>PostgreSQL</td>
  </tr>
</table>

## Installation

```bash
  # clone the project
  git clone https://github.com/karinevieira/heroes-api.git

  # enter the cloned directory
  cd heroes-api

  # run the project
  docker-compose up --build

  # create the development and test databases
  rails db:create

  # migrate tables to database
  rails db:migrate
```
Open the browser at the address http://localhost:3000 

## Running Tests

To run tests, run the following command

```bash
  rspec
```

## API Reference

#### Include a Header Authorization

For all requests, use an Authorization header, of size >= 10 characters, so that you can only manipulate your data, for example:

```bash
  curl --request GET \
  --url 'http://localhost:3000/api/heroes' \
  --header 'Authorization: anyTokenCanBeUsed'
```

#### Endpoints

<table>
  <thead style="font-weight: bold; text-align:center;">
    <tr>
      <td>Endpoints</td>
      <td>Usage</td>
      <td>Params</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>GET /api/heroes</td>
      <td>Get all of the heroes.</td>
      <td></td>
    </tr>
    <tr>
      <td>GET /api/heroes?name=term</td>
      <td>Get all heroes with name like a term.</td>
      <td>term: [String]</td>
    </tr>
    <tr>
      <td>GET /api/heroes/:id</td>
      <td>Get the details of a single hero.</td>
      <td></td>
    </tr>
    <tr>
      <td>POST /api/heroes</td>
      <td>Create a new hero.</td>
      <td>name: [String]</td>
    </tr>
    <tr>
      <td>PUT /api/heroes/:id</td>
      <td>Edit the details of an existing hero.</td>
      <td>name: [String]</td>
    </tr>
    <tr>
      <td>DELETE /api/heroes/:id</td>
      <td>Remove the hero.</td>
      <td></td>
    </tr>
  </tbody>
</table>