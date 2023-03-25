DROP TABLE IF EXISTS "order"."orders";
CREATE TABLE "order"."orders" (
  "id" uuid,
  "orderNo" varchar NOT NULL,
  "orderDate" varchar NOT NULL,
  "userId" uuid NOT NULL,
  "active" boolean DEFAULT true,
  "deleted" boolean DEFAULT false,
  "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
  "createdBy" varchar,
  "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
  "updatedBy" varchar,

  CONSTRAINT "pk_order_orders" PRIMARY KEY ("id"),
  CONSTRAINT "fk_order_orders_user" FOREIGN KEY ("userId") REFERENCES "user"."users"(id)
);