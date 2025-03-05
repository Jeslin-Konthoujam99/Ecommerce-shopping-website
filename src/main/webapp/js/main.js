// error

/*
let carts= document.querySelectorAll('.add-cart')
let cartItems = localStorage.getItem('productInCart')


let product = [
	{
		Name:'Printed rugby shirt',
		Price:1499,
		id:"https://lp2.hm.com/hmgoepprod?set=source[/25/98/2598086e020572e8bcdde5c21b372e5b579e5b9f.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'High-waisted tailored trousers',
		Price:2699,
		id:"//lp2.hm.com/hmgoepprod?set=source[/48/c5/48c55159b7d435413181c84a35146f4bac8914f3.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Cotton-blend sweatpants',
		Price:1599,
		id:"//lp2.hm.com/hmgoepprod?set=source[/74/c9/74c9f5fb8108daf4292a62434d619b5a31f36e04.jpg],origin[dam],category[ladies_basics_trousersleggings],type[DESCRIPTIVESTILLLIFE],res[m],hmver[2]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Long-sleeved jersey top ',
		Price:1299,
		id:"https://lp2.hm.com/hmgoepprod?set=source[/3a/04/3a044a0f32aa03fb41b7b45ca3c72d3a90d888c5.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Polo-neck top',
		Price:1999,
		id:"//lp2.hm.com/hmgoepprod?set=source[/6b/43/6b431fdabed4e5a6202aa43adb812cb67da97f08.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'High-waisted joggers ',
		Price:1799,
		id:"//lp2.hm.com/hmgoepprod?set=source[/fa/e3/fae35d02c58c33d52d3b8987cc5033f9e5fee291.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Oversized zip-through hoodie',
		Price:1699,
		id:"//lp2.hm.com/hmgoepprod?set=source[/cf/ca/cfca05985093934f382dfe7ed2d3fc9b34dd239f.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Knitted jumper ',	
		Price:2199,
		id:"//lp2.hm.com/hmgoepprod?set=source[/50/5f/505fd9cdda7ec9286fdcb29a3ebbc26a70f39d50.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Relaxed Fit Hoodie',
		Price:1149,
		id:"https://lp2.hm.com/hmgoepprod?set=source[/5c/70/5c70becbd00a13c32a9fcdcdcb8b92f7fb326324.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Relaxed Fit Zip-top sweatshirt',
		Price:1999,
		id:"//lp2.hm.com/hmgoepprod?set=source[/2f/62/2f623e520d506a1b72b045c67c90a208c61db3a7.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Relaxed Fit Zip-through hoodie',
		Price:1149,
		id:"https://lp2.hm.com/hmgoepprod?set=source[/3f/42/3f4281dd642ff0ee16d1974cbdc307b62a3bdfb3.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Relaxed Fit Sweatshirt ',
		Price:749,
		id:"//lp2.hm.com/hmgoepprod?set=source[/30/3b/303b85d60eb5e0836e0f2756ff207fc0b59c0c41.jpg],origin[dam],category[men_hoodiessweatshirts_sweatshirts],type[DESCRIPTIVESTILLLIFE],res[m],hmver[2]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Relaxed Fit Grey Hoodie',
		Price:1149,
		id:"https://lp2.hm.com/hmgoepprod?set=source[/64/37/6437c8db5a20d6e6f286ce9b37a5eb6ab7b11880.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Relaxed Fit Printed Hoodie ',
		Price:1549,
		id:"//lp2.hm.com/hmgoepprod?set=source[/c5/51/c551498264fca02707ca84cac578435113db89c1.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'Regular Fit Sweatpants',
		Price:1549,
		id:"//lp2.hm.com/hmgoepprod?set=source[/c5/51/c551498264fca02707ca84cac578435113db89c1.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
	{
		Name:'HERMOLITEÂ® Relaxed Fit Zip-top sweatshirt ',	
		Price:1699,
		id:"//lp2.hm.com/hmgoepprod?set=source[/fa/e9/fae9b680e392227681e83d7ced53596a02e64779.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]",
		inCart:0
	},
]

if(document.readyState == "loading")
 {
	 document.addEventListener("DOMContentLoaded", ready)
 }
 else
 {
	 ready()
 }

function ready()
{
	for (let i = 0; i < carts.length; i++) {
		carts[i].addEventListener('click', () => {
			cartNumbers(product[i])
			totalCost(product[i])
		})		
	}
}

function onLoadCartNumbers()
{
	let productNumbers = localStorage.getItem('cartNumbers')
	
	if(productNumbers)
	{
		document.querySelector('.cartbutton span').textContent = productNumbers
	}
}

function cartNumbers(product)
{
	let productNumbers = localStorage.getItem('cartNumbers')
	
	productNumbers = parseInt(productNumbers)
	
	if(productNumbers)
	{
		localStorage.setItem('cartNumbers', productNumbers + 1)
		document.querySelector('.cartbutton span').textContent = productNumbers + 1
		document.querySelector('.cartbuttonside span').textContent = productNumbers + 1
	}
	else
	{
		localStorage.setItem('cartNumbers', 1)
		document.querySelector('.cartbutton span').textContent = 1
		document.querySelector('.cartbuttonside span').textContent = 1
	}
	
	setItems(product)

}

function setItems(product)
{
	let cartItems = localStorage.getItem('productInCart')
	cartItems = JSON.parse(cartItems)
	
	if(cartItems != null)
	{
		if(cartItems[product.id] == undefined)
		{
			cartItems = {
				...cartItems,
				[product.id]: product
			}
		}
		cartItems[product.id].inCart += 1
	}
	else
	{
		product.inCart = 1

		cartItems = {
			[product.id]: product
		}
	}
		
	localStorage.setItem('productInCart', JSON.stringify(cartItems))
}

function totalCost(product)
{
	
	let cartCost = localStorage.getItem('totalCost')
		
	if(cartCost !=null)
	{
		cartCost = parseInt(cartCost)
		localStorage.setItem('totalCost', cartCost + product.Price)
	}
	else
	{
		localStorage.setItem('totalCost', product.Price)
	}
	
	
}

function remove(id) {
	
	let cart = localStorage.getItem('productInCart');
	cart = JSON.parse(cart)
	let totalPrice = parseInt(localStorage.getItem("totalCost")); //
	let N = parseInt(localStorage.getItem("cartNumbers"));

	let item = cart[id]

	if (item.inCart > 1) {
		item.inCart--
		localStorage.setItem("productInCart", JSON.stringify(cart));
	}
	else {
		delete cart[id];
		localStorage.setItem("productInCart", JSON.stringify(cart));
	}

	localStorage.setItem("totalCost", totalPrice - item.Price);
	localStorage.setItem("cartNumbers", N - 1);
	location.reload();
}
function add(id) {

	let cart = localStorage.getItem("productInCart");
	cart = JSON.parse(cart)
	let totalPrice = parseInt(localStorage.getItem("totalCost"));
	let N = parseInt(localStorage.getItem("cartNumbers"));

	let item = cart[id]

	item.inCart++; 
	localStorage.setItem("productInCart", JSON.stringify(cart));
	localStorage.setItem("totalCost", totalPrice + item.Price);
	localStorage.setItem("cartNumbers", N + 1);
	location.reload();
}
function removeCart(id) {

	let cart = localStorage.getItem("productInCart");
	cart = JSON.parse(cart)
	let totalPrice = parseInt(localStorage.getItem("totalCost"));
	let N = parseInt(localStorage.getItem("cartNumbers"));

	let item = cart[id]

	delete cart[id]
	localStorage.setItem("productInCart", JSON.stringify(cart));
	localStorage.setItem("totalCost", totalPrice - (item.Price * item.inCart))
	localStorage.setItem("cartNumbers", N - item.inCart)
	location.reload();
	displayCart()
	updatetotal()
	
}

/*function renderProducts()
 {
	 product.forEach( (item) => {
		 productren.innerHTML +=`
		 <div class="product-item">
          <div class="overlay">
            <a href="productDetails.html" class="product-thumb">
              <img src="${item.img}" alt="${item.Name}" />
            </a>
            <span class="discount">40%</span>
          </div>
          <div class="product-info">
            <span>${item.Name}</span>
            <a href="Printed rugby shirt.html" class="product-title">${item.Name}</a>
            <h4 class="price">${item.Price}</h4>
          </div>
          <ul class="icons">
            <li><i class="bx bx-heart add-wishlist"></i></li>
            <li><i class="bx bx-search"></i></li>
            <li><i class="bx bx-cart add-cart" onclick="addToCart(${item.id})"></i></li>
          </ul>
        </div>
        `
	 })
 } 
 


function displayCart()
{
	let cartItems = localStorage.getItem('productInCart')
	cartItems = JSON.parse(cartItems)
 	let cartCost = localStorage.getItem('totalCost')
	let productContainer = document.querySelector('.product-container')
	let tax = 149;
	let cost = parseInt(cartCost);
	let total = cost + tax;
	
	if(cartItems && productContainer )
	{
		productContainer.innerHTML = ''
		Object.values(cartItems).map(item => {
			productContainer.innerHTML += `
			<table class="cart-item">
			<tr>
				<td>
					<div class="cart-info">
						<img src="${item.id}" alt="" />
						<div>
							<p>${item.Name}</p>
							<span>Price:Rs.${item.Price}</span> <br /> <i
								class="bx bx-trash-alt cart-remove" onclick="removeCart('${item.id}')"></i>
						</div>
					</div>
				</td>
				<td>
					<div class="cart-quantity">
						<div class="btn"><i class='bx bx-chevron-left' onclick="remove('${item.id}')"></i></div>
						<div class="number">${item.inCart}</div>
						<div class="btn"><i class='bx bx-chevron-right' onclick="add('${item.id}')"></i></div>
					</div>
				</td>
				<td class="-cart-price">Rs.${item.inCart * item.Price}</td>
			</tr>
		    </table>
			`
		})
		
		productContainer.innerHTML += `
		
		<table>
        <tr>
          <th></th> 
          <th></th>
          <th></th>
        </tr>
	  </table>
	 
		      <div class="price">
        <table>
          <tr>
            <td >SubTotal</td>
            <td class="subtotal">Rs.${cartCost}</td>
          </tr>
          <tr>
            <td>GST</td>
            <td>Rs.149</td>
          </tr>
          <tr>
            <td>Total</td>
            <td  class="total-price">Rs.${total}</td>
          </tr>
        </table>
        <a href="Controller?page=success"checkout btn">Proceed To Checkout</a>
      </div>
      
		`
	}
}
//renderProducts()
displayCart()
onLoadCartNumbers()

*/