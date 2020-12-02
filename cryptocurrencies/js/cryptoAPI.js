class CryptoAPI {
  //query the rest api wuth a currency and  a cryptocurrency
  async queryAPI(currency, cryptocurrency) {
    const url = await fetch(
      `https://api.coingecko.com/api/v3/coins/${cryptocurrency}/?convert=${currency}`
    );

    const result = await url.json();
    //return result
    return {
      result,
    };
  }

  //get all the crypto currencies
  async getCryptoCurrenciesList() {
    const url = await fetch("https://api.coingecko.com/api/v3/coins/list/");
    //return ajs JSON
    const cryptoCurrencies = await url.json();

    //return the object
    return {
      cryptoCurrencies,
    };
  }
}
