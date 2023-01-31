-- Escreva um bloco PL/SQL que determine e exiba a quantidade de números pares 
-- E ímpares em uma tabela de números inteiros.

DECLARE

id_produto bradley_produto.id_produto%type;
w_par NUMBER := 0;
w_impar NUMBER := 0;

BEGIN

FOR indice IN (SELECT id_produto FROM bradley_produto) LOOP
        IF MOD(id_produto,2) = 0 THEN
            w_par := w_par + 1;
            DBMS_OUTPUT.PUT_LINE('Say hello');
        ELSE
            W_impar := w_impar + 1;
            DBMS_OUTPUT.PUT_LINE('Say H');
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Quantidade e pares: '|| w_par);
    DBMS_OUTPUT.PUT_LINE('Quantidade de impares: '||w_impar);
END;