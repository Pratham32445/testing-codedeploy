import express from "express";
import dotenv from "dotenv";

dotenv.config();

const app = express();

app.get("/",(req,res) => {
    res.status(201).json({
        message : "API WORKING"
    })
})

app.post("/get",(req,res) => {
    const data = [1,2,3];
    res.status(201).json({
        message : data
    })
})

app.listen(process.env.PORT,() => {
    console.log("api is working");
})