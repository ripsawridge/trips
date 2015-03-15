[out:json][timeout:25];
relation[name="Stadtbezirk 01 Altstadt-Lehel"];
map_to_area -> .a;
// gather results
(
  // query part for: “boundary=administrative and admin_level=10”
  node["leisure"="playground"](area.a);
  way["leisure"="playground"](area.a);
  relation["leisure"="playground"](area.a);
);
node(around:50.0)[amenity=cafe];
// print results
out body;
>;
out skel qt;

