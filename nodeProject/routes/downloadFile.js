const express = require("express");
const router = express.Router();
const fs = require("fs");

router.post("/",(req,res)=>{
    const data = req.body;
    const timestamp = new Date().getTime();
    const fileName = `data_${timestamp}.xml`;
    const filePath = `D:/jennani/${fileName}`;
    fs.writeFile(filePath, data.data, (err) => {
        if (err) {
          console.error('Error writing file:', err);
          return;
        }
    
        res.json('File has been saved.');
    
        // You can send a response back to the client indicating success or provide a download link.
      });
});

module.exports = router;