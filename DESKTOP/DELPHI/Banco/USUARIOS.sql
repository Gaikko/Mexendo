CREATE TABLE USUARIOS (
    USU_ID INTEGER NOT NULL,
    NOME VARCHAR(50) NOT NULL);

ALTER TABLE USUARIOS
ADD CONSTRAINT PK_USUARIOS
PRIMARY KEY (USU_ID);

CREATE SEQUENCE GEN_USUARIOS_ID;

SET TERM ^ ;

create trigger usuarios_bi for usuarios
active before insert position 0
as
begin
  if (new.USU_ID is null) then
    new.USU_ID = gen_id(gen_usuarios_id,1);
end^

SET TERM ; ^



