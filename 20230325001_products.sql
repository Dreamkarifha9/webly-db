
DROP TABLE IF EXISTS "product"."products";
CREATE TABLE "product"."products" (
  "id" uuid,
  "name" CHARACTER VARYING NOT NULL,
  "description" varchar,
  "active" boolean DEFAULT true,
  "deleted" boolean DEFAULT false,
  "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
  "createdBy" varchar,
  "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
  "updatedBy" varchar,
  CONSTRAINT "pk_product_products" PRIMARY KEY ("id")
);