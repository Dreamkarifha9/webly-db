DROP SEQUENCE IF EXISTS "public".global_sequence_order_seq ;
CREATE SEQUENCE "public".global_sequence_order_seq
	START WITH 1
	INCREMENT BY 1
	NO MINVALUE
	NO MAXVALUE
	CACHE 1;
DROP TABLE IF EXISTS "public".global_sequence_order ;
CREATE TABLE IF NOT EXISTS "public".global_sequence_order (
    "seq" BIGINT DEFAULT nextval('"public".global_sequence_order_seq'::regclass),
    "code" CHARACTER VARYING NOT NULL,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    PRIMARY KEY ("code")
);
