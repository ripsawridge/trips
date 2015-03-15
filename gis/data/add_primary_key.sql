
ALTER TABLE "planet_osm_line" ADD COLUMN "gid" INTEGER;
CREATE SEQUENCE "planet_osm_line_gid_seq";
UPDATE planet_osm_line SET gid = nextval('"planet_osm_line_gid_seq"');
ALTER TABLE "planet_osm_line"
  ALTER COLUMN "gid" SET DEFAULT nextval('"planet_osm_line_gid_seq"');
ALTER TABLE "planet_osm_line"
  ALTER COLUMN "gid" SET NOT NULL;
ALTER TABLE "planet_osm_line" ADD UNIQUE ("gid");
ALTER TABLE "planet_osm_line" ADD PRIMARY KEY ("gid");
 
ALTER TABLE "planet_osm_point" ADD COLUMN "gid" INTEGER;
CREATE SEQUENCE "planet_osm_point_gid_seq";
UPDATE planet_osm_point SET gid = nextval('"planet_osm_point_gid_seq"');
ALTER TABLE "planet_osm_point"
  ALTER COLUMN "gid" SET DEFAULT nextval('"planet_osm_point_gid_seq"');
ALTER TABLE "planet_osm_point"
  ALTER COLUMN "gid" SET NOT NULL;
ALTER TABLE "planet_osm_point" ADD UNIQUE ("gid");
ALTER TABLE "planet_osm_point" ADD PRIMARY KEY ("gid");
 
ALTER TABLE "planet_osm_polygon" ADD COLUMN "gid" INTEGER;
CREATE SEQUENCE "planet_osm_polygon_gid_seq";
UPDATE planet_osm_polygon SET gid = nextval('"planet_osm_polygon_gid_seq"');
ALTER TABLE "planet_osm_polygon"
  ALTER COLUMN "gid" SET DEFAULT nextval('"planet_osm_polygon_gid_seq"');
ALTER TABLE "planet_osm_polygon"
  ALTER COLUMN "gid" SET NOT NULL;
ALTER TABLE "planet_osm_polygon" ADD UNIQUE ("gid");
ALTER TABLE "planet_osm_polygon" ADD PRIMARY KEY ("gid");
