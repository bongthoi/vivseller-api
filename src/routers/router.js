'use strict';

/** */
import express from 'express';
import api_config from '../../config/api_config.json';
import namespace_config from '../../config/namespace_config.json';
import invalidPathUtility from '../utilities/invalidPathUtility';
import CategoryService from '../services/CategoryService';
import ProductService from '../services/ProductService';


/** */
let router=express.Router();
let categoryService=new CategoryService();
let productService=new ProductService();

/**Categories */
router.get(api_config.api_url+namespace_config.namespace+".categories",async (req,res)=>{
    try {
        let categories=await categoryService.getAll();
        res.json(categories);
    } catch (error) {
        res.sendStatus(500);
    }    
});

router.get(api_config.api_url+namespace_config.namespace+".category.getByUser/:userID",async (req,res)=>{
    try {
        let categoriesByUser=await categoryService.getByUser(req.params.userID);
        res.json(categoriesByUser);    
    } catch (error) {
        res.sendStatus(500);
    }
    
});

/**Products */
router.get(api_config.api_url+namespace_config.namespace+".products",async(req,res)=>{
    try {
        let products=await productService.getAll();
        res.json(products);
    } catch (error) {
        res.sendStatus(500);
    }
});

router.get(api_config.api_url+namespace_config.namespace+".product.getByCategory/:categoryID",async (req,res)=>{
    try {
        let products=await productService.getByCategoryID(req.params.categoryID);
        res.json(products);
    } catch (error) {
        res.sendStatus(500);
    }

});

router.get(api_config.api_url+namespace_config.namespace+".product.getBySellerID/:SellerID",async (req,res)=>{
    try {
        let products=await productService.getBySellerID(req.params.SellerID);
        res.json(products);
    } catch (error) {
        res.sendStatus(500);
    }

});

router.get(api_config.api_url+namespace_config.namespace+".product.productDetail/:productID",async (req,res)=>{
    try {
        let product=await productService.getByID(req.params.productID);
        res.json(product);
    } catch (error) {
        res.sendStatus(500);
    }
});


/** */
module.exports=router;