DROP TABLE itens_pedido; /*EXCLUIR TABLEA*/

TRUNCATE TABLE itens_pedido; /* EXCLUIR CONTEUDO DA TABELA*/
ALTER TABLE clientes
	ADD email VARCHAR(100) UNIQUE;
    
ALTER TABLE clientes
	DROP email;

ALTER TABLE clientes
	MODIFY cidade 	VARCHAR(200);
    
ALTER TABLE clientes 
 MODIFY cidade INT;
 
 ALTER TABLE clientes
 MODIFY id float;
 
 ALTER TABLE itens_pedido
 MODIFY quantidade decimal(7,2);
 
 ALTER TABLE clientes
 MODIFY ie varchar(20);
 
 ALTER TABLE clientes
 MODIFY nome varchar(05);
 
 /* ALTERAÇÃO NOS DADOS */
 UPDATE clientes
 SET uf = 'GO'
 WHERE id = 20;
 
  UPDATE clientes
 SET uf = 'GO', cidade = 123
 WHERE id = 20;
 
 DELETE FROM clientes
 WHERE id = 20;
 
 DELETE FROM clientes
 WHERE id = 180;
    