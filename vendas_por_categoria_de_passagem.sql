-- Este código SQL realiza uma análise para determinar qual categoria de tarifa (fare_conditions)
-- vendeu mais em uma companhia aérea. Ele utiliza dados de cartões de embarque, voos e assentos.

SELECT
    s.fare_conditions AS "Fare Conditions", -- Seleciona a categoria de tarifa (Ex: Economy, Business, First Class).
    COUNT(*) AS count                      -- Conta quantos registros existem para cada categoria de tarifa.
FROM
    boarding_passes bp                     -- Tabela principal: informações sobre os cartões de embarque.
INNER JOIN
    flights f ON bp.flight_id = f.flight_id -- Relaciona os cartões de embarque aos voos pelos IDs dos voos.
INNER JOIN
    seats s ON f.aircraft_code = s.aircraft_code 
            AND bp.seat_no = s.seat_no     -- Relaciona os voos aos assentos:
                                           -- Garante que o código da aeronave e o número do assento correspondam.
GROUP BY
    s.fare_conditions                      -- Agrupa os resultados pelas categorias de tarifa.
ORDER BY
    2 DESC                                 -- Ordena os resultados pela contagem em ordem decrescente.
                                           -- A coluna 2 refere-se ao "COUNT(*)".

	