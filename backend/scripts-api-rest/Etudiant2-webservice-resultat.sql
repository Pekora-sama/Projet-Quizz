CREATE PROCEDURE "DBA"."resultat"(in total numeric)
RESULT (texte char(100))
begin 
    call sa_set_http_header( 'Content-Type', 'text/html' );
    select titres
    from DBA.resultats
    where total = points
end
