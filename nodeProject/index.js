const express = require("express");
const app = express();
const cors = require("cors");
const bodyParser = require('body-parser');

app.use(bodyParser.text({ type: 'application/xml' }));
app.use(express.json());
app.use(cors());

const uploadFileRouter = require("./routes/uploadFile");
app.use("/upload", uploadFileRouter);

const readFileRoute = require("./routes/readFile");
app.use("/readFile", readFileRoute);

const downloadFileRoute = require("./routes/downloadFile");
app.use("/download",downloadFileRoute);

const changeDirectoryRouter = require("./routes/changeDirectory");
app.use("/changeDirectory",changeDirectoryRouter);

const getDirectoryRouter = require("./routes/getDirectory");
app.use("/getDirectory",getDirectoryRouter);

app.listen(3001, () => {
  console.log("The server has been started at port 3001");
});
