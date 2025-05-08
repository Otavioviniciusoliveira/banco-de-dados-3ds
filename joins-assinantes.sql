SELECT 
    A.nm_assinante,
    E.ds_endereco,
    E.complemento,
    E.bairro,
    E.cep,
    M.ds_municipio,
    T.dd,
    T.n_fone
FROM Assinante A
INNER JOIN Endereco E ON A.cd_endereco = E.cd_endereco
INNER JOIN Municipio M ON E.cd_municipio = M.cd_municipio
LEFT OUTER JOIN Telefone T ON A.cd_assinante = T.cd_assinante;



SELECT 
    A.nm_assinante,
    R.ds_ramo
FROM Assinante A
LEFT OUTER JOIN Ramo R ON A.cd_ramo = R.cd_ramo
ORDER BY R.ds_ramo, A.nm_assinante;



SELECT 
    A.nm_assinante
FROM Municipio M
INNER JOIN Endereco E ON M.cd_municipio = E.cd_municipio AND M.ds_municipio = 'Pelotas'
INNER JOIN Assinante A ON E.cd_endereco = A.cd_endereco
INNER JOIN Tipo_Assinante T ON A.cd_tipo = T.cd_tipo AND T.ds_tipo = 'residencial';



SELECT DISTINCT A.nm_assinante
FROM Assinante A
INNER JOIN Telefone T1 ON A.cd_assinante = T1.cd_assinante
INNER JOIN Telefone T2 ON A.cd_assinante = T2.cd_assinante 
AND T1.cd_fone <> T2.cd_fone;

SELECT DISTINCT A.nm_assinante, T.n_fone, TA.ds_tipo
FROM Municipio M
INNER JOIN Endereco E ON M.cd_municipio = E.cd_municipio
INNER JOIN Assinante A ON E.cd_endereco = A.cd_endereco
INNER JOIN Tipo_Assinante TA ON A.cd_tipo = TA.cd_tipo 
AND TA.ds_tipo = 'comercial'
INNER JOIN Telefone T ON A.cd_assinante = T.cd_assinante
AND (M.ds_municipio = 'Natal' OR M.ds_municipio = 'João Câmara');
