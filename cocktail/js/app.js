//instanciate the classes
const ui = new UI(),
  coctail = new CocktailAPI(),
  coctailDB = new CoctailDB();

//Create event listeners
function eventListeners() {
  //document ready
  document.addEventListener("DOMContentLoaded", documentReady)


  //add event listener when form is submitted
  const searchForm = document.querySelector("#search-form");
  if (searchForm) {
    searchForm.addEventListener("submit", getCoctails);
  }
  //Results div listeners
  const resultsDiv = document.querySelector('#results');
  if(resultsDiv) {
    resultsDiv.addEventListener('click', resultsDivDelegation);
  }
}

eventListeners();

//Get coctails function
function getCoctails(e) {
  e.preventDefault();

  const searchTerm = document.querySelector("#search").value;

  //check something is in the search bar
  if (searchTerm === "") {
    //call uI print message
    ui.printMessage("Please add something into the form", "danger");
  } else {
    //Server response from promise
    let serverResponse;
    //type of search ingredients, coctails or name
    const type = document.querySelector("#type").value;

    //evaluate type of methodand execute query
    switch (type) {
      case "name":
        serverResponse = coctail.getDrinksByName(searchTerm);
        break;
      case "ingredient":
        serverResponse = coctail.getDrinksByIngredient(searchTerm);
        break;
      case "categpry":
        serverResponse = coctail.getDrinksByCategory(searchTerm);
        break;
      case "alcohol":
        serverResponse = coctail.getDrinksByAlcohol(searchTerm);
        break;
    }
    ui.clearResults();

    //Query by the name of the drink
    serverResponse.then(coctails => {
      if (coctails.coctails.drinks === null) {
        //nothing exists
        ui.printMessage("There\'re no results, try a different term.", "danger");
      } else {
        if (type === "name") {
          //display with ingredients
          ui.displayDrinksWithIngredients(coctails.coctails.drinks);
      } else {
          //Display without ingredients, category, alcohol, ingredient
          ui.displayDrinks(coctails.coctails.drinks);
        }
      }
    });
  }
}
//deklegation for results area
function resultsDivDelegation(e){
    e.preventDefault();

    if (e.target.classList.contains('get-recipe')){
        coctail.getSingleRecipe(e.target.dataset.id)
        .then(recipe => {
          //dipslay single recipe into a modal
          ui.displaySingleRecipe(recipe.recipe.drinks[0]);
        })
    }
    //when favourite btn is clicked
    if (e.target.classList.contains('favorite-btn')){
      if(e.target.classList.contains('is-favorite')){
        //remove class
        e.target.classList.remove('is-favorite');
        e.target.textContent = '+'
      }else{
        //add the class
        e.target.classList.add('is-favorite');
        e.target.textContent = '-';

        //Get Info
        const cardBody = e.target.parentElement;
        const drinkInfo = {
          id: e.target.dataset.id,
          name: cardBody.querySelector('.card-title').textContent,
          image: cardBody.querySelector('.card-img-top').src
        }
        //console.log(drinkInfo)
        //add to storage
        coctailDB.saveIntoDB(drinkInfo);
      }

    }

}

//Document ready
function documentReady(){

  //select the search category select
  const searchCategory = document.querySelector('.search-category');
  if(searchCategory){
    ui.displayCategories();
  }


  //when favourites page
  const favoritesTable= document.querySelector('#favorites');
  if(favoritesTable){
    const drinks= coctailDB.getFromDB();
    ui.displayFavorites(drinks);

    //when view or remove are clicked
    favoritesTable.addEventListener('click', (e) => {
      e.preventDefault();

      //Delegation
      if(e.target.classList.contains('get-recipe')){
        coctail.getSingleRecipe(e.target.dataset.id)
        .then(recipe => {
          //dipslay single recipe into a modal
          ui.displaySingleRecipe(recipe.recipe.drinks[0]);
        })
      }
      if(e.target.classList.contains('remove-recipe')){
        ui.removeFavorite(e.target.parentElement.parentElement);

        coctailDB.removeFromDB(e.target.dataset.id);
      }
    })
  }
}
