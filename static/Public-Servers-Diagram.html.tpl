<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title> Lean Quality Program - Main Servers Diagram </title>
    <script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>

    <style>
      @import url(http://fonts.googleapis.com/css?family=Source+Code+Pro:400,600);
      body {font-family: "Source Code Pro", Consolas, monaco, monospace; line-height: 160%; font-size: 16px;  margin: 0; }
      path.link {
        fill: none;
        stroke-width: 2px;
      }
      .node:not(:hover) .nodetext {
        display: none;
      }
      h1 { font-size: 36px; margin: 10px 0; text-transform: uppercase; font-weight: normal;}
      h2, h3 { font-size: 18px; margin: 5px 0 ; font-weight: normal;}
      header {padding: 20px; position: absolute; top: 0; left: 0;}
      a:link { color: #EE3124; text-decoration: none;}
      a:visited { color: #EE3124; }
      a:hover { color: #A4CD39; text-decoration: underline;}
      a:active { color: #EE3124; }
    </style>
</head>
    

<body>
    <header>
      <h1> Lean Quality Program | Main Servers Diagram </h1>
      <h2>Click on image to view details</h2>
      <h3>including links to the servers</h3>
    </header>
    <!-- container for force layout visualisation  -->
    <section id="vis"></section> 
<script>

// some colour variables
  var tcBlack = "#130C0E";

// rest of vars
var w = 960,
    h = 600,
    maxNodeSize = 50,
    x_browser = 20,
    y_browser = 25,
    root;
 
var vis;
var force = d3.layout.force(); 

vis = d3.select("#vis").append("svg").attr("width", w).attr("height", h);
 
 // JuanC Embedded JSON
var json={  
"nombre": "Servers Diagram",
"detalle": "Servers distributed in Field vs. Private vs. Public  Internet Cloud ",
"img": "https://image.ibb.co/gq5w0d/screen04.jpg",
"size": 30000,
"children": [


  {
     "nombre": "Mission Virtual", 
      "detalle": "VMs on Either ESX HP or ESX over Cisco ",
      "img":  "   https://www.tenable.com/sites/drupal.dmz.tenablesecurity.com/files/images/pages/vmware-vm.png",
      "size": 50000,   
   "children": [
 
 
    
        {
      "nombre": "cacti ",
      "detalle": "cacti and meassuring scripts  ", 
      "img":  "https://cdn2.quintetsolutions.com/img/services/solutions/cacti_services_india.jpg",
      "size": 40000
    },
    
    
        {
      "nombre": "HQ Wiki / DB",
      "detalle": "HQ Wiki InfluxDB Checks ", 
      "link": "https://en.wikipedia.org/wiki/InfluxDB",
      "img":  "https://d22e4d61ky6061.cloudfront.net/sites/default/files/Influxdb_logo_1.png",
      "size": 40000
    },
    
    
         {
      "nombre": "HQ Dashboards",
      "detalle": "HQ Grafana ", 
      "link": "http://grafana.com",
      "img":  "https://gitlab.com/uploads/-/system/project/avatar/928825/grafana_icon.png",
      "size": 40000
    }
    
 
   ]
  },
  {

"nombre": "Public Cloud",
"detalle": "Public Internet Cloud, AWS MS RHC",
"img": "https://dancingdinosaur.files.wordpress.com/2015/02/cloud_computing_providers.jpg",
"size": 30000,
"children": [

     {
      "nombre": "Dashboards ",
      "detalle": "Testing, Dashboards app.powerbi.com online for Dashboard Resilience ", 
      "link": "https://app.powerbi.com/",
      "img":  "https://www.prajwaldesai.com/wp-content/uploads/2017/11/powerBI_desktop.jpg",
      "size": 40000
      
    },
        {
      "nombre": "Git Soft Updates",
      "detalle": "Running the public software releases, stripping actual data from the code", 
      "link": "https://github.com/infchg ",
      "img":  "https://www.tecmint.com/wp-content/uploads/2013/10/Install-GitHub.jpeg",
      "size": 40000
    },
    {
      "nombre": "Data Test",
      "detalle": "Testing, intermettently  infchg-infchg.7e14.starter-us-west-2.openshiftapps.com cloud.35.165.103.15.nip.io/  ", 
      "link": "http://cloud.35.165.103.15.nip.io/",
      "img":  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/OpenShift-LogoType.svg/300px-OpenShift-LogoType.svg.png",
      "size": 40000,
       "children": [
                    {
				"nombre": "AWS",
				"detalle": "AWS IaaS Infrstructure behind :  http://starter-us-west-2-infra-1717073047.us-west-2.elb.amazonaws.com", 
				"link": " http://starter-us-west-2-infra-1717073047.us-west-2.elb.amazonaws.com",
				"img":  "https://d0.awsstatic.com/gamedev/lumberyard/logo-aws-ly.png",
                         "size": 9000 } 
                         
                  ]
    },
    {
      "nombre": "Data OR Test",
      "detalle": "Go code Running for Machine-Machine data resilience https://limitless-tundra-56978.herokuapp.com/", 
      "link": "https://limitless-tundra-56978.herokuapp.com/",
      "img":  "http://www.codecheese.com/wp-content/uploads/heroku-logo.png",
      "size": 40000,
       "children": [
                    {
				"nombre": "Salesforce",
				"detalle": "Salesforce IaaS Infrstructure behind ", 
				"img":  "http://theoptionspecialist.com/wp-content/uploads/2014/03/Salesforce-Logo.jpg",
                         "size": 9000 } 
                         
                  ]
    }
   ]
  } ,
  {

"nombre": "Private Cloud",
"detalle": "Private Cloud",
"img": "https://inspirationseek.com/wp-content/uploads/2016/02/Private-Cloud-Illustration-Images.png",
"size": 30000,
"children": [

 
        {
      "nombre": "Cloud Dashboards",
      "detalle": "Cloud Grafana Dashboards - To replicate HQ dashbords and Data, To provision ", 
            "img":  "https://gitlab.com/uploads/-/system/project/avatar/928825/grafana_icon.png",
      "size": 40000
    },
    
    {
      "nombre": "Private Cloud ",
      "detalle": "Private  cloud  Linux", 
      "img":  "https://fantasy-fantasytravel1.netdna-ssl.com/sites/default/files/blog/website-extreme-makeover/drupal.jpg",
      "size": 40000,
       "children": [
                    {
				"nombre": "KanBAN ",
				"detalle": "Lean KanBAN Board  for Organization of Tasks ", 
				 "link": "http://kanboard.org",
				"img":  "http://www.imranyounis.com/public/img/conferences/LeanKanban.png",
                         "size": 9000 } 
                         
                  ]
    }
   ]
  } 
 

 
   
 ]
}
;

 var   root = json;
  root.fixed = true;
  root.x = w / 2;
  root.y = h / 4;
 
 
        // Build the path
  var defs = vis.insert("svg:defs")
      .data(["end"]);
 
 
  defs.enter().append("svg:path")
      .attr("d", "M0,-5L10,0L0,5");
 
 
 //this do get json and visualise
     update();
 
 //now save
 e = document.createElement('script'); 
 e.setAttribute('src', 'http://nytimes.github.com/svg-crowbar/svg-crowbar.js'); 
 e.setAttribute('class', 'svg-crowbar'); 
document.body.appendChild(e);
/**
 *   
 */
function update() {
  var nodes = flatten(root),
      links = d3.layout.tree().links(nodes);
 
  // Restart the force layout.
  force.nodes(nodes)
        .links(links)
        .gravity(0.15)
    .charge(-1500)
    .linkDistance(100)
    .friction(0.5)
    .linkStrength(function(l, i) {return 1; })
    .size([w, h])
    .on("tick", tick)
        .start();
 
   var path = vis.selectAll("path.link")
      .data(links, function(d) { return d.target.id; });
 
    path.enter().insert("svg:path")
      .attr("class", "link")
      // .attr("marker-end", "url(#end)")
      .style("stroke", "#eee");
 
 
  // Exit any old paths.
  path.exit().remove();
 
 
 
  // Update the nodes…
  var node = vis.selectAll("g.node")
      .data(nodes, function(d) { return d.id; });
 
 
  // Enter any new nodes.
  var nodeEnter = node.enter().append("svg:g")
      .attr("class", "node")
      .attr("transform", function(d) { return "translate(" + d.x + "," + d.y + ")"; })
      .on("click", click)
      .call(force.drag);
 
  // Append a circle
  nodeEnter.append("svg:circle")
      .attr("r", function(d) { return Math.sqrt(d.size) / 10 || 4.5; })
      .style("fill", "#eee");
 
   
  // Append images
  var images = nodeEnter.append("svg:image")
        .attr("xlink:href",  function(d) { return d.img;})
        .attr("x", function(d) { return -25;})
        .attr("y", function(d) { return -25;})
        .attr("height", 50)   //size fijo
        .attr("width", 50);
  
  
  
  // make the image grow a little on mouse over and add the text details on click
  var setEvents = images
          // Append nombre text
          .on( 'click', function (d) {
              d3.select("h1").html(d.nombre); 
              d3.select("h2").html(d.detalle); 
              if (d.link) { d3.select("h3").html ("link: " + "<a href='" + d.link + "' target=_blank>"  + d.nombre + " ⇢"+ "</a>" ) } else { d3.select("h3").html (" " ) }; 
           })

          .on( 'mouseenter', function() {
            // select element in current context
            d3.select( this )
              .transition()
              .attr("x", function(d) { return -60;})
              .attr("y", function(d) { return -60;})
              .attr("height", 100)
              .attr("width", 100);
          })
          // set back
          .on( 'mouseleave', function() {
            d3.select( this )
              .transition()
              .attr("x", function(d) { return -25;})
              .attr("y", function(d) { return -25;})
              .attr("height", 50)
              .attr("width", 50);
          });

  // Append nombre detalle on roll over next to the node as well
  nodeEnter.append("text")
      .attr("class", "nodetext")
      .attr("x", x_browser)
      .attr("y", y_browser +15)
      .attr("fill", tcBlack)
      .text(function(d) { return d.nombre; });
 
 
  // Exit any old nodes.
  node.exit().remove();
 
 
  // Re-select for update.
  path = vis.selectAll("path.link");
  node = vis.selectAll("g.node");
 
function tick() {
 
 
    path.attr("d", function(d) {
 
     var dx = d.target.x - d.source.x,
           dy = d.target.y - d.source.y,
           dr = Math.sqrt(dx * dx + dy * dy);
           return   "M" + d.source.x + "," 
            + d.source.y 
            + "A" + dr + "," 
            + dr + " 0 0,1 " 
            + d.target.x + "," 
            + d.target.y;
  });
    node.attr("transform", nodeTransform);    
  }
}

 
/**
 * Gives the coordinates of the border for keeping the nodes inside a frame
 * http://bl.ocks.org/mbostock/1129492
 */ 
function nodeTransform(d) {
  d.x =  Math.max(maxNodeSize, Math.min(w - (d.imgwidth/2 || 16), d.x));
    d.y =  Math.max(maxNodeSize, Math.min(h - (d.imgheight/2 || 16), d.y));
    return "translate(" + d.x + "," + d.y + ")";
   }
 
/**
 * Toggle children on click.
 */ 
function click(d) {
  if (d.children) {
    d._children = d.children;
    d.children = null;
  } else {
    d.children = d._children;
    d._children = null;
  }
 
  update();
}
 
 
/**
 * Returns a list of all nodes under the root.
 */ 
function flatten(root) {
  var nodes = []; 
  var i = 0;
 
  function recurse(node) {
    if (node.children) 
      node.children.forEach(recurse);
    if (!node.id) 
      node.id = ++i;
    nodes.push(node);
  }
 
  recurse(root);
  return nodes;
} 
  
  
</script>
<h4> This is the human readable response of the Data App </h2>
<ul>
<li>  The J2 app can respond to this <a href=/json>/json</a> url with HTTP JSON data. 
<li> Deployed Probes and Sensors push data to <a href=/write>/write</a>  ")
</ul>

  Lean Quality Tools Program  |  License: CC-BY-SA-4.0  by J &  infchg@github & C |   March 2019   |  <a href=https://github.com/infchg >https://github.com/infchg</a> |   <a href=https://infchg.github.io/ >https://infchg.github.io/ </a>
</body>
</html>
