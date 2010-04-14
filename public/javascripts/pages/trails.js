Jelly.Pages.add("Trails", {

  show: function() {
    var trailId = getTrailId();
    alert(trailId);
    $.ajaxWithJelly({
      url: "/trails/"+trailId+"?format=js"});
  },

  on_show_trail_points: function() {
    alert("in on_show");
  }
});

var getTrailId = function() {
  alert(window.location);
  alert(window.location.toString().match(/\d+/));
  return window.location.toString().match(/[0-9]+/);
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

