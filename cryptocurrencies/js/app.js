//instanciate the classes

const cryptoAPI = new CryptoAPI();

const ui = new UI();

//create the variables

const form = document.getElementById("form");

//Add event listener
form.addEventListener("submit", (e) => {
  e.preventDefault();

  //read currency
  const currencySelect = document.getElementById("currency").value;

  //read cryptocurency
  const cryptoCurencySelect = document.getElementById("cryptocurrency").value;

  //validate that teh selects have something
  if (currencySelect === "" || cryptoCurencySelect === "") {
    //display error
    ui.printMessage(
      "All the fields are mandatory!",
      "deep-orange darken-4 card-panel "
    );
  } else {
    //Query the rest api
    cryptoAPI.queryAPI(currencySelect, cryptoCurencySelect).then((data) => {
      ui.displayResult(data.result, currencySelect);
    });
  }
});
