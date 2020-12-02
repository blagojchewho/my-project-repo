class UI {
  constructor() {
    this.init();
  }
  init() {
    this.printCryptoCurrencies();
  }
  //Prints the optios for the form
  printCryptoCurrencies() {
    cryptoAPI.getCryptoCurrenciesList().then((data) => {
      const cryptoCurrencies = data.cryptoCurrencies;

      //select from rest api
      const select = document.getElementById("cryptocurrency");

      cryptoCurrencies.forEach((currency) => {
        //add the options
        const option = document.createElement("option");
        option.value = currency.id;
        option.appendChild(document.createTextNode(currency.name));
        select.appendChild(option);
      });
    });
  }
  //prints message 2 parameters message and classes

  printMessage(message, className) {
    const div = document.createElement("div");

    //add the classes
    div.className = className;
    //add the message
    div.appendChild(document.createTextNode(message));

    const messageDiv = document.querySelector(".messages");

    messageDiv.appendChild(div);

    //remove the message
    setTimeout(() => {
      document.querySelector(".messages div").remove;
    }, 3000);
  }

  //prints the result of teh evaluation /rate
  displayResult(result, currency) {
    //read the currency
    let currencyName;
    currencyName = currency.toLowerCase();
    const value = result[currency];

    const prevResult = document.querySelector("#result > div");
    if (prevResult) {
      prevResult.remove();
    }

    let HTMLTemplate = "";
    HTMLTemplate += `
        <div class="card cyan darken-3">
            <div class="card-content white-text">
                <span class= "card-title"> Result </span>
                <p> The Price of ${result.name} is ${value})}</p>

            </div> 
        </div>
    `;
    //print spinner
    this.showSpinner();

    setTimeout(() => {
      //print result
      const divResult = document.querySelector("#result");
      divResult.innerHTML = HTMLTemplate;
      //hide spinner
      document.querySelector(".spinner img").remove();
    }, 3000);
  }

  showSpinner() {
    const spinner = document.createElement("img");
    spinner.src = "img/spinner.gif";
    document.querySelector(".spinner").appendChild(spinner);
  }
}
