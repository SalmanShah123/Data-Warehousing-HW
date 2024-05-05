CREATE SCHEMA IF NOT EXISTS "HW-DW-code";

CREATE  TABLE "HW-DW-code"."dim-contributing-factor" ( 
	"contributing-factor-id" bigint  NOT NULL  ,
	"contributing-factor-1" varchar(255)    ,
	"contributing-factor-2" varchar(255)    ,
	CONSTRAINT "pk_dim-contributing-factor" PRIMARY KEY ( "contributing-factor-id" )
 );

CREATE  TABLE "HW-DW-code"."dim-date" ( 
	"date-id"            bigint  NOT NULL  ,
	"crash-date"         date    ,
	"crash-time"         timestamp    ,
	"hour"               integer    ,
	"am/pm-flag"         varchar(5)    ,
	"time-of-day-bucket" varchar(255)    ,
	"date-original-format" date    ,
	"date-iso-format"    date    ,
	"year"               integer    ,
	quarter              integer    ,
	"month"              integer    ,
	"day-number"         integer    ,
	"month-name"         varchar(100)    ,
	"day-name"           varchar(100)    ,
	"week-of-the-year"   integer    ,
	"week-of-the-month"  integer    ,
	CONSTRAINT "pk_dim-date" PRIMARY KEY ( "date-id" )
 );

CREATE  TABLE "HW-DW-code"."dim-location" ( 
	"location-id"        bigint  NOT NULL  ,
	latitude             double precision    ,
	longitude            double precision    ,
	"location_co-ordinates" double precision    ,
	zipcode              varchar(50)    ,
	"on-street-name"     varchar(255)    ,
	"cross-street-name"  varchar(255)    ,
	borough              varchar(255)    ,
	neighbourhood        varchar(355)    ,
	CONSTRAINT "pk_dim-location" PRIMARY KEY ( "location-id" )
 );

CREATE  TABLE "HW-DW-code"."dim-vehicle" ( 
	"vehicle-id"         bigint  NOT NULL  ,
	"vehicle-type-code-1" varchar(255)    ,
	"vehicle-type-code-2" varchar(255)    ,
	CONSTRAINT "pk_dim-vehicle" PRIMARY KEY ( "vehicle-id" )
 );

CREATE  TABLE "HW-DW-code"."facts-motor-accidents" ( 
	"collision-id"       bigint  NOT NULL  ,
	"number-of-persons-killed" integer    ,
	"number-of-pedestrians-killed" integer    ,
	"number-of-cyclists-killed" integer    ,
	"number-of-motorists-killed" integer    ,
	"number-of-persons-injured" integer    ,
	"number-of-pedestrians-injured" integer    ,
	"number-of-cyclists-injured" integer    ,
	"number-of-motorists-injured" integer    ,
	"vehicle-id"         integer    ,
	"location-id"        integer    ,
	"date-id"            integer    ,
	"contributing-factor-id" integer    ,
	CONSTRAINT "pk_facts-motor-accidents" PRIMARY KEY ( "collision-id" )
 );

CREATE UNIQUE INDEX "unq_date-id" ON "HW-DW-code"."facts-motor-accidents" ( "date-id" );

CREATE UNIQUE INDEX "unq_location-id" ON "HW-DW-code"."facts-motor-accidents" ( "location-id" );

CREATE UNIQUE INDEX "unq_vehicle-id" ON "HW-DW-code"."facts-motor-accidents" ( "vehicle-id" );

CREATE UNIQUE INDEX "unq_contributing-factor-id" ON "HW-DW-code"."facts-motor-accidents" ( "contributing-factor-id" );
