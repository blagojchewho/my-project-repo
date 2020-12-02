class CocktailAPI {
  //Get coctail by name
  async getDrinksByName(name) {
    //search by name
    const apiResponce = await fetch(
      `https://www.thecocktaildb.com/api/json/v1/1/search.php?s=${name}`
    );

    //returns json responce
    const coctails = await apiResponce.json();

    return {
      coctails
    };
  }
  //Get recepies by ingredient
  async getDrinksByIngredient(ingredient) {
    //search by ingredient
    const apiResponce = await fetch(
      `https://www.thecocktaildb.com/api/json/v1/1/search.php?i=${ingredient}`
    );

    //wait for responce and return json
    const coctails = await apiResponce.json();

    return {
      coctails
    };
  }
  //get single recipe
  async getSingleRecipe(id){
     //search by ingredient
     const apiResponce = await fetch(
      `https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=${id}`
    );

    //wait for responce and return json
    const recipe = await apiResponce.json();

    return {
      recipe,
    };
  }

  //retrieves all the categories from api
  async getCategories(){
    const apiResponce = await fetch('https://www.thecocktaildb.com/api/json/v1/1/list.php?c=list');

    const categories = await apiResponce.json();

    return{
      categories
    }
  }
  //get drinks by caegory
  async getDrinksByCategory(category){
    //search by category
    const apiResponce = await fetch(
      `http://www.thecocktaildb.com/api/json/v1/1/filter.php?c=${category}`
    );

    //wait for responce and return json
    const coctails = await apiResponce.json();

    return {
      coctails,
    };
  }
  //Get alcoholic or non alcoholic coctail
  async getDrinksByAlcohol(term){
    //search by category
    const apiResponce = await fetch(
      `http://www.thecocktaildb.com/api/json/v1/1/filter.php?a=${term}`
    );

    //wait for responce and return json
    const coctails = await apiResponce.json();

    return {
      coctails,
    };
  }
}
