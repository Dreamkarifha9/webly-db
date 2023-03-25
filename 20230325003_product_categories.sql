
DROP TABLE IF EXISTS "product"."categories";
CREATE TABLE "product"."categories" (
  "id" uuid,
  "name" CHARACTER VARYING NOT NULL,
  "description" varchar,
  "active" boolean DEFAULT true,
  "deleted" boolean DEFAULT false,
  "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
  "createdBy" varchar,
  "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
  "updatedBy" varchar,
  CONSTRAINT "pk_product_categories" PRIMARY KEY ("id")
);