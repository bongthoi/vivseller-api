# vivseller-api

## Features:
- [x] GET,POST,PUT,DELETE/CATEGORIES.
- [x] GET,POST,PUT,DELETE/PRODUCTS.
- [x] GET,POST,PUT,DELETE/USERS.

## Installation
1. Config Database.
2. Clone the Repo.
3. Go into the folder and hit the npm install command
4. Run the command: npm start

## How to access API with Postman
1. Categories.
- [getAll()] http://localhost:3100/api/vn.vivmall.categories 
- [getCategoryByUser(userID)] http://localhost:3100/api/vn.vivmall.category.getByUser/userID

2. Products
- [getAll()] http://localhost:3100/api/vn.vivmall.products 
- [getProductByCate(categoryID)] http://localhost:3100/api/vn.vivmall.product.getByCategory/categoryID
- [getProductBySellerID(sellerID)] http://localhost:3100/api/vn.vivmall.product.getBySellerID/sellerID
- [getProductDetail(productID)] http://localhost:3100/api/vn.vivmall.product.productDetail/productID


## View Detail at documents/labs folder
