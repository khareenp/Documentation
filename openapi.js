const axios = require("axios");
const fs = require("fs");
const converter = require("swagger2openapi");
const options = {};
options.patch = true; // fix up small errors in the source definition
//options.warnOnly = true; // Do not throw on non-patchable errors

async function main() {
  const swagger = (await axios.get("https://api.modv.io/swagger/docs")).data;
  // const swagger = JSON.parse(fs.readFileSync('./swagger.json', 'utf8'));

  converter.convertObj(swagger, options, function (err, options) {

    // options.openapi contains the converted definition
    fs.writeFileSync(
      "./openapi.json",
      JSON.stringify(options.openapi, null, 2)
    );
  });
}

main();
