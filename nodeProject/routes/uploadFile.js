const express = require("express");
const router = express.Router();
const xml2js = require("xml2js");

router.get("/", (req, res) => {
  const xmlString =
    '<root><element1 id="design">Value 1</element1><element2 id="Omega">Value 2</element2></root>';

  xml2js.parseString(xmlString, (err, result) => {
    if (err) {
      res.json(err);
    }
    // res.json(result);
    if (result.root.element1[0].$.id === "design") {
      result.root.element1[0]._ = "abc"; // Modify the value
    }

    // Convert the modified JSON data back to XML
    const builder = new xml2js.Builder();
    const modifiedXmlString = builder.buildObject(result);

    res.type('application/json').send(modifiedXmlString);
  });
});

module.exports = router;
