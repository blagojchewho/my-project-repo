class CoctailDB{
    //save recepies in storage
    saveIntoDB(drink){
        const drinks= this.getFromDB();
        drinks.push(drink);

        //new array in lOcal storage
        localStorage.setItem('drinks', JSON.stringify(drinks));
    }
    removeFromDB(id){
        const drinks = this.getFromDB();

        drinks.forEach((drink, index) => {
            if(id === drink.id) {
                drinks.splice(index,1);
            }
        });
        localStorage.setItem("drinks", JSON.stringify(drinks));
    }




    getFromDB(){
        let drinks;
        //Check from loccal storage

        if(localStorage.getItem('drinks')=== null){
            drinks = [];
        }else {
            drinks = JSON.parse(localStorage.getItem('drinks'));
        }
        return drinks;
    }
}