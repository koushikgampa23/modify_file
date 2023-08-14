const express = require("express");
const router = express.Router();
const fs = require("fs/promises");

function extractXmlContent(tplContent) {
  const openingTag = "<diagram>";
  const closingTag = "</diagram>";
  const startIndex = tplContent.indexOf(openingTag);
  const endIndex = tplContent.indexOf(closingTag, startIndex);
  if (startIndex !== -1 && endIndex !== -1 && endIndex > startIndex) {
    const xmlContent = tplContent.substring(
      startIndex,
      endIndex + closingTag.length
    );
    return xmlContent;
  }
  return null;
}

router.get("/", async (req, res) => {
  const filePath = "D:/jennani/romAI_Model.tpl";
  try {
    const data = await fs.readFile(filePath, "utf-8");
    const extractedData = extractXmlContent(data);
    res.type("application/json").send(extractedData);
  } catch (e) {
    res.json(e);
  }
});

router.post("/", async (req, res) => {
  const filePath = "D:/jennani/romAI_Model.tpl";
  const dirData = req.body;
  try {
    const data = await fs.readFile(filePath, "utf-8");
    const extractedXml = extractXmlContent(data);
    if (dirData) {
      // Replace the old XML content with the updated XML in the .tpl file
      const modifiedTplContent = data.replace(extractedXml, dirData.dirData);
      // Write the modified content back to the .tpl file
      fs.writeFile(filePath, modifiedTplContent, "utf8", (err) => {
        if (err) {
          res.json(err);
        } else {
          res.json("XML content updated and written back to the .tpl file.");
        }
      });
    } else {
      res.json("Failed to modify XML content.");
    }
  } catch (e) {
    res.json(e);
  }
});

module.exports = router;
