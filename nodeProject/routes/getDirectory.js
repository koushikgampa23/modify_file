const express = require('express');
const multer = require('multer');
const router = express.Router();

const storage = multer.diskStorage({
  destination: 'uploads/',

  // Customize the filename using the original name
  filename: function (req, file, callback) {
    const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
    callback(null, file.originalname + '-' + uniqueSuffix);
  }
});

const upload = multer({ storage: storage });

router.post("/",upload.single('file'),(req,res)=>{
  const uploadedFilePath = req.file.path;

  // Send the file location back to the client
  res.send(uploadedFilePath);
});

module.exports = router;