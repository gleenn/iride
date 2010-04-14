Jelly.Pages.add("Trails", {

  show: function() {
    var trailId = getTrailId();
    $.ajaxWithJelly({
      url: "/trails/"+trailId+"?format=js"});
  },

  on_show: function(trail_points) {
    //alert(trail_points);
    loadData(JSON.parse(trail_points));
  }
});

var getTrailId = function() {
  return window.location.toString().match(/\d+/g)[1];
}

var getTrailIdFancy = function() {
  var accum = genArrAccum();
  window.location.scan(/trails\/\d+/, accum);
  accum().pop()
}

var genArrAccum = function() {
  var accum = function(results) { return function(e) { results.push(e); return results } };
  return accum([]);
}

