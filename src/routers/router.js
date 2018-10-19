'use strict';

/** */
import express from 'express';
import api_config from '../../config/api_config.json';
import namespace_config from '../../config/namespace_config.json';
import invalidPathUtility from '../utilities/invalidPathUtility';
import CategoryService from '../services/CategoryService';


/** */
let router=express.Router();
let categoryService=new CategoryService();


router.get(api_config.api_url+namespace_config.namespace+".categories",async (req,res)=>{
    try {
        let t=await categoryService.getAll();
        res.json(t);
    } catch (error) {
        res.sendStatus(500);
    }    
});

router.get(api_config.api_url+namespace_config.namespace+".category.getByUser/:userID",async (req,res)=>{
    try {
        let t=await categoryService.getByUser(req.params.userID);
        res.json(t);    
    } catch (error) {
        res.sendStatus(500);
    }
    
});

    module.exports=router;