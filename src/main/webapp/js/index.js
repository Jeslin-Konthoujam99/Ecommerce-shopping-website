

const hamburer = document.querySelector(".hamburger");
const navList = document.querySelector(".nav-list");
const productRender = document.querySelector(".product-center")


if (hamburer) {
  hamburer.addEventListener("click", () => {
    navList.classList.toggle("open");
  });
}
// Popup

const popup = document.querySelector(".popup");
const closePopup = document.querySelector(".popup-close");

if (popup) {
  closePopup.addEventListener("click", () => {
    popup.classList.add("hide-popup");
  });

  window.addEventListener("load", () => {
    setTimeout(() => {
      popup.classList.remove("hide-popup");
    }, 1000);
  });
}


// Search Engine
/*
const categories = [...new Set(product.map((item) => { return item }))]

document.getElementById('searchBar').addEventListener('keyup', (e) => {
	const searchData = e.target.value.toLowerCase();
	const filteredData = categories.filter((item) => {
		return (
			item.Name.toLowerCase().includes(searchData)
		)
	})
	displayItem(filteredData)
});
 
const displayItem = (items) => {
	    productRender.innerHTML = items.map((item) => {
		var { id, Name , Price } = item;
		return (
			`
			<div class="product-item">
          <div class="overlay">
            <a href="productDetails.html" class="product-thumb">
              <img src="${id}" alt="" />
            </a>
            <span class="discount">40%</span>
          </div>
          <div class="product-info">
            <span>${Name}</span>
            <a href="Printed rugby shirt.html" class="product-title">${Name}</a>
            <h4 class="price">Rs.${Price}</h4>
          </div>
          <ul class="icons">
            <li><i class="bx bx-heart add-wishlist"></i></li>
            <li><i class="bx bx-search"></i></li>
            <li><i class="bx bx-cart-alt add-cart"></i></li>
          </ul>
        </div>
               `
		)
	}).join('')
};
displayItem(categories); 
*/
// sort products

/*
//parameter passed from button (Parameter same as category)
function filterProduct(value) {
  //Button class code
  let buttons = document.querySelectorAll(".button-value");
  buttons.forEach((option) => {
    //check if value equals innerText
    if (value.toUpperCase() == option.innerText.toUpperCase()) {
      option.classList.add("active");
    } else {
      option.classList.remove("active");
    }
  });

  //select all cards
  let elements = document.querySelectorAll(".product-item");
  //loop through all cards
  elements.forEach((element) => {
    //display all cards on 'all' button click
    if (value == "all") {
      element.style.display = "";
    } else {
      //Check if element contains category class
      if (element.classList.contains(value)) {
        //display element based on category
       element.style.display = "";
      } else {
        //hide other elements
        item.style.display = "none";
      }
    }
  });
}

									
//Initially display all products
window.onload = () => {
  filterProduct("all");
};
}*/