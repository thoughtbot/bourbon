var bourbon = require("./index");

module.exports = function(eyeglass, sass) {
  return {
    sassDir: bourbon.includePaths[0]
  };
};
