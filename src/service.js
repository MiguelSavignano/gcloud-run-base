const axios = require("axios").default;

class ApiService {
  getTodos() {
    return axios.get("https://jsonplaceholder.typicode.com/todos/1");
  }
}

module.exports.ApiService = ApiService;
