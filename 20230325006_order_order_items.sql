CREATE TABLE "order".order_items (
	id uuid NOT NULL,
	qty int4 NOT NULL DEFAULT 0,
	price numeric NULL,
	"productId" uuid NOT NULL,
	"skuId" uuid NOT NULL,
	"orderId" uuid NOT NULL,
	"rawPrice" jsonb NULL,
  "rawData" jsonb NULL,
	active bool NULL DEFAULT true,
	deleted bool NULL DEFAULT false,
	"createdAt" timestamptz NOT NULL DEFAULT now(),
	"createdBy" varchar NULL,
	"updatedAt" timestamptz NOT NULL DEFAULT now(),
	"updatedBy" varchar NULL,
	CONSTRAINT pk_order_items PRIMARY KEY (id),
	CONSTRAINT fk_order_items_product FOREIGN KEY ("productId") REFERENCES product.products(id),
	CONSTRAINT fk_order_items_order FOREIGN KEY ("orderId") REFERENCES "order".orders(id),
	CONSTRAINT fk_order_items_sku FOREIGN KEY ("skuId") REFERENCES "product".skus(id)

);