var cities = [
    {x: 169, y: 78, name: 'istanbul'},
    {x: 151, y: 72, name: 'berlin'},
    {x: 226, y: 64, name: 'russia'},
    {x: 170, y: 92, name: 'tel aviv'},
    {x: 100, y: 128, name: 'rio'},
    {x: 76, y: 88, name: 'new york'},
    {x: 145, y: 77, name: 'paris'},
    {x: 252, y: 90, name: 'tokyo'}
//    {x: 45, y: 85, name: 'cali'},
//    {x: 70, y: 83, name: 'chicago'},
//    {x: 159, y: 55, name: 'netherlands'},
//    {x: 164, y: 145, name: 'south africa'}
//    {x: 177, y: 86, name: 'middle east2'},
//    {x: 180, y: 91, name: 'middle east3'},
//    {x: 194, y: 83, name: 'pakistan'}
//    {x: 236, y: 90, name: 'china'},
//    {x: 242, y: 144, name: 'austraila'}
];
var imageY = 206;
var svg = null;
var transitionTime = 5000;
var slideOutTime = 1000;
var cityIndex = 1;

$(document).ready(function(){
    svg = d3.select("#world-canvas").append("svg")
        .attr("width", 300)
        .attr("height", 600);
    drawCity(cities[0]);
    interval = setInterval(slideImage, transitionTime);
    $('#back-arrow').click(function(){
      clearInterval(interval);
      minusAmt = cityIndex == 0 ? 2 : 1;
      cityIndex -= 2;
      cityIndex = cityIndex < 0 ? cities.length - minusAmt : cityIndex;
      slideImage(false);
      interval = setInterval(slideImage, transitionTime);
    });
    $('#forward-arrow').click(function(){
      clearInterval(interval);
      slideImage(true);
      interval = setInterval(slideImage, transitionTime);
    });
});

function drawCity(city){
    var line = d3.svg.line()
        .x(function(d) { return d.x; })
        .y(function(d) { return d.y; })
        .interpolate("linear");
    var cityx = city.x < 55 ? 55 : city.x;
    var cityx = cityx > 235 ? 235 : cityx;
    var path = svg.append("path")
        .attr("d", line([{x: cityx, y: imageY}, city]))
        .attr("stroke", "red")
        .attr("stroke-width", 1)
        .attr("fill", "none");
    var totalLength = path.node().getTotalLength();
    path.attr("stroke-dasharray", totalLength + " " + totalLength)
        .attr("stroke-dashoffset", totalLength)
        .transition()
        .duration(750)
        .ease("easing")
        .attr("stroke-dashoffset", 0)
        .each('end', function(){
            var circle = svg.append('circle')
                .style('fill', 'red')
                .style('opacity', 1)
                .attr('cx', city.x)
                .attr('cy', city.y)
                .attr('r', 1);
            circle.transition()
                .duration(500)
                .ease("easing")
                .attr('r', 12)
                .style('opacity', 0);
        });
}

function slideImage(forward) {
    forward = forward == undefined ? true : forward;
    svg.selectAll('path, circle').remove();
    var images = $('#main-ad-image img');
    var active = images.filter('.active');
    active.addClass("sliding");
    var next = active.removeClass('active');
    if(forward){
        next = next.next();
    } else {
        next = next.prev();
    }
    if(next.length == 0) {
        if(forward){
            next = images.first();
        } else {
            next = images.last();
        }
    }
    next.addClass('active');
    active.animate({
        opacity: 0,
        left: forward ? "-=1100" : "+=1100"
    }, slideOutTime, function(){
        active.removeClass("sliding");
        active.css({left: 0, opacity: 1});

        drawCity(cities[cityIndex]);
        cityIndex = cityIndex + 1 >= cities.length ? 0 : cityIndex + 1;
    });
}