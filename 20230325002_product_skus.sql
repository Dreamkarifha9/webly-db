DROP TABLE IF EXISTS "product"."skus";
CREATE TABLE "product"."skus" (
  "id" uuid,
  "productId" uuid NOT NULL,
  "categoryId" uuid NOT NULL,
  "price" money,
  "salePrice" money,
  "qty" BIGINT NOT NULL,
  "coverImage" varchar,
  CONSTRAINT "pk_product_skus" PRIMARY KEY ("id"),
  CONSTRAINT "fk_product_sku_products" FOREIGN KEY ("productId") REFERENCES "product"."products"(id),
  CONSTRAINT "fk_product_categorie_products" FOREIGN KEY ("categoryId") REFERENCES "product"."categories"(id)
);