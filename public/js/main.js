// Generated by CoffeeScript 1.3.3
(function() {
  var log, set;

  log = console.log;

  set = {};

  d3.csv("/dataset/set.csv", function(error, data) {
    if (error) {
      throw Error(error);
    }
    this.set = data;
    return log(this.set);
  });

}).call(this);