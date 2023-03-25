DROP TABLE IF EXISTS "order".invoice;
CREATE TABLE "order".invoice (
	id uuid NOT NULL,
	"name" varchar NOT NULL,
	phone varchar NOT NULL,
	email varchar NULL,
	"orderId" uuid NOT NULL,
	note text NULL,
	status varchar NOT NULL,
	total numeric NULL,
	"subTotal" numeric NULL,
	active bool NULL DEFAULT true,
	deleted bool NULL DEFAULT false,
	"createdAt" timestamptz NOT NULL DEFAULT now(),
	"createdBy" varchar NULL,
	"updatedAt" timestamptz NOT NULL DEFAULT now(),
	"updatedBy" varchar NULL,
	CONSTRAINT pk_invoice PRIMARY KEY (id),
	CONSTRAINT fk_invoice_order FOREIGN KEY ("orderId") REFERENCES "order".orders(id)
);