const express = require("express");
const router = express.Router();
const fs = require("fs/promises");
const xml2js = require("xml2js");
// const { DOMParser, XMLSerializer } = require("xmldom");

router.get("/", async (req, res) => {
  // const { phiMin, phiMax, omegaMin, omegaMax, massMin, massMax } = req.body;
  const filePath = "D:/jennani/config.text"; // Update with your file path

  try {
    const data = await fs.readFile(filePath, "utf-8");
    const temp = data.split("\n");
    const newFilePath = temp[1].replaceAll("\\", "/");
    const newFile = newFilePath.replace("\r", "");
    try {
      const newXmlData = await fs.readFile(newFile, "utf-8"); //
      // xml2js.parseString(newXmlData, (err, result) => {
      //   if (err) {
      //     res.json(err);
      //   }
      //   // Convert the modified JSON data back to XML
      //   res.json(result);
      //   const builder = new xml2js.Builder();
      //   const modifiedXmlString = builder.buildObject(result);
      //   res.json(modifiedXmlString);
      // });
      res.type('application/json').send(newXmlData);
      // res.send(newXmlData);
      // const parser = new DOMParser();
      // const xmlDoc = parser.parseFromString(newXmlData, "application/xml");
      // // res.json(xmlDoc.documentElement);
      // res.send(xmlDoc);
      // const phiNodeList =
      //   xmlDoc.documentElement.getElementsByTagName("DesignVariable");
      // res.json(phiNodeList);
      // for (const phiElement of phiNodeList) {
      //   const varnameAttr = phiElement.getAttribute("varname");
      //   if (varnameAttr === "phi") {
      //     const lowerBoundNode =
      //       phiElement.getElementsByTagName("LowerBound")[0];
      //     const upperBoundNode =
      //       phiElement.getElementsByTagName("UpperBound")[0];
      //     if (lowerBoundNode) {
      //       lowerBoundNode.textContent = phiMin;
      //     }
      //     if (upperBoundNode) {
      //       upperBoundNode.textContent = phiMax;
      //     }
      //   }
      // }

      // // Serialize the modified XML back to string
      // const serializer = new XMLSerializer();
      // const modifiedXmlString = serializer.serializeToString(xmlDoc);
      // // res.json(modifiedXmlString);
    } catch (e) {
      res.json(e);
    }
  } catch (e) {
    res.json(e);
  }

  // fs.readFile(newFilePath, 'utf8', (err, data) => {
  //     if (err) {
  //         console.error('Error reading the file:', err);
  //         res.status(500).send('Error reading the file');
  //         return;
  //     }

  //     res.json(data);
  // });
});

module.exports = router;
