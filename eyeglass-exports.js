var bourbon = require(".");

module.exports = function(eyeglass, sass) {
  return {
    sassDir: bourbon.includePaths[0]
  };
};
