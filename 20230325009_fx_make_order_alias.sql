
CREATE OR REPLACE FUNCTION public.fx_make_order_alias(_orderalias text)
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
    _code VARCHAR;
    _last_seq INTEGER;
   	_result text;
begin
	select "seq" into _last_seq + 1 from public.global_sequence_order where code = _orderalias;
	RAISE NOTICE '_last_seq %', _last_seq;
	IF length(_last_seq::text) = 1 THEN
	  _result := '0' || _last_seq::text;
	elseif _last_seq is null then
	  _result := '0' || 1::text;
	else
	  _result := _last_seq::text;
	END IF;
	RAISE NOTICE '_result %', _result;
	INSERT INTO "public"."global_sequence_order" ("seq","code")
		VALUES(1,_orderAlias) ON CONFLICT ("code")
		DO
		UPDATE
		SET
			"seq" = "global_sequence_order"."seq" + 1
		returning
			concat("code", _result) INTO _code;
		RETURN _code;
END;
$function$
;