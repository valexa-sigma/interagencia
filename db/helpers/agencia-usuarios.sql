select u.username, a.nombre, au.id_agencia
from usuario u
join agencia_usuario au on au.id_usuario = u.id_usuario
join agencia a on au.id_agencia = a.id_agencia
where au.activo = 'Y'
and u.activo = 'Y'