import express from "express";
import dotenv from "dotenv";

dotenv.config();

console.log(process.env.PORT);

const app = express();


app.get("/",(req,res) => {
    res.status(201).json({
        message : "Hello"
    })
})


app.listen(process.env.PORT,() => {
    console.log("server running")
})