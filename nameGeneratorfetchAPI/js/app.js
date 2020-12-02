document.querySelector("#generate-names").addEventListener("submit", loadNames);

//Execute the function to query API
function loadNames(e) {
  e.preventDefault();

  const origin = document.getElementById("country").value;
  const genre = document.getElementById("genre").value;
  const amount = document.getElementById("quantity").value;

  //Build the URL
  let url = "https://uinames.com/api/";
  //read the origin and append to the url
  if (origin !== "") {
    url += `?region=${origin}&`;
  }
  //Read the genre
  if (genre !== "") {
    url += `?gender=${genre}&`;
  }
  if (amount !== "") {
    url += `?amount=${amount}&`;
  }

  //FEtch API

  fetch(url)
    .then(function (response) {
      return response.json();
    })
    .then(function (names) {
      let html = "<h2> GEnerated Names </h2>";
      html += '<ul class="list">';
      names.forEach(function (name) {
        html += `
            <li>${name.name}</li>
        `;
      });
      html += "</ul>";

      document.querySelector("#result").innerHTML = html;
    })
    .catch(function (error) {
      console.log(error);
    });
}
