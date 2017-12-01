SELECT * FROM usuario WHERE provincia LIKE "%distrito%nacional%" AND circunscripcion = '00'
SELECT * FROM usuario WHERE provincia LIKE "%distrito%nacional%" AND circunscripcion = '01'
SELECT * FROM usuario WHERE provincia LIKE "%distrito%nacional%" AND circunscripcion = '02'
SELECT * FROM usuario WHERE provincia LIKE "%distrito%nacional%" AND circunscripcion = '03'
SELECT * FROM usuario WHERE provincia LIKE '%la%altagracia%'
SELECT * FROM usuario WHERE provincia LIKE '%azua%'
SELECT * FROM usuario WHERE provincia LIKE '%pueblo%viejo%'
SELECT * FROM usuario WHERE provincia LIKE '%sabana%yegua%'
SELECT * FROM usuario WHERE provincia LIKE '%bahoruco%'
SELECT * FROM usuario WHERE provincia LIKE '%barahona%'
SELECT * FROM usuario WHERE provincia LIKE '%dajabon%'
SELECT * FROM usuario WHERE provincia LIKE '%duarte%'
SELECT * FROM usuario WHERE provincia LIKE '%el%seibo%'
SELECT * FROM usuario WHERE provincia LIKE '%elias%piña%'
SELECT * FROM usuario WHERE provincia LIKE '%espaillat%'
SELECT * FROM usuario WHERE provincia LIKE '%hato%mayor%'
SELECT * FROM usuario WHERE provincia LIKE '%independencia%'
SELECT * FROM usuario WHERE provincia LIKE '%la%romana%'
SELECT * FROM usuario WHERE provincia LIKE '%la%vega%'
SELECT * FROM usuario WHERE provincia LIKE '%maria%trinidad%sanchez%'
SELECT * FROM usuario WHERE provincia LIKE '%monseñor%nouel%'
SELECT * FROM usuario WHERE provincia LIKE '%montecristi%'
SELECT * FROM usuario WHERE provincia LIKE '%monte%plata%'
SELECT * FROM usuario WHERE provincia LIKE '%pedernales%'
SELECT * FROM usuario WHERE provincia LIKE '%peravia%'
SELECT * FROM usuario WHERE provincia LIKE '%puerto%plata%'
SELECT * FROM usuario WHERE provincia LIKE '%hermanas%mirabal%'
SELECT * FROM usuario WHERE provincia LIKE '%samana%'
SELECT * FROM usuario WHERE provincia LIKE '%san%juan%'
SELECT * FROM usuario WHERE provincia LIKE '%san%cristobal%'
SELECT * FROM usuario WHERE provincia LIKE '%samana%'
SELECT * FROM usuario WHERE provincia LIKE '%san%pedro%de%macoris%'
SELECT * FROM usuario WHERE provincia LIKE '%sanchez%ramirez%'
SELECT * FROM usuario WHERE provincia LIKE '%santiago%'
SELECT * FROM usuario WHERE provincia LIKE '%santiago%rodriguez%'
SELECT * FROM usuario WHERE provincia LIKE '%valverde%'
SELECT * FROM usuario WHERE provincia LIKE '%san%jose%de%ocoa%'
SELECT * FROM usuario WHERE provincia LIKE '%santo%domingo%'
SELECT * FROM usuario WHERE provincia LIKE '%santo%domingo%' AND circunscripcion = '01'
SELECT * FROM usuario WHERE provincia LIKE '%santo%domingo%' AND circunscripcion = '02'
SELECT * FROM usuario WHERE provincia LIKE '%santo%domingo%' AND circunscripcion = '03'
SELECT * FROM usuario WHERE provincia LIKE '%santo%domingo%' AND circunscripcion = '04'
SELECT * FROM usuario WHERE provincia LIKE '%santo%domingo%' AND circunscripcion = '05'
SELECT * FROM usuario WHERE provincia LIKE '%santo%domingo%' AND circunscripcion = '06'
SELECT * FROM usuario WHERE provincia LIKE '%estados%unidos%'
SELECT * FROM usuario WHERE provincia LIKE '%españa%'
SELECT * FROM usuario WHERE provincia LIKE '%panama%'


SELECT circunscripcion FROM usuario WHERE provincia LIKE '%azua%'

UPDATE usuario SET circunscripcion = '01' WHERE provincia LIKE '%estados%unidos%'

SELECT provincia FROM usuario


SELECT * FROM usuario WHERE circunscripcion = '02'