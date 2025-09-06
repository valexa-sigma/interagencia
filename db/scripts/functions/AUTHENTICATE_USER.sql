create or replace FUNCTION authenticate_user(P_username IN VARCHAR2
                  ,P_password IN VARCHAR2) RETURN BOOLEAN AS
    l_password_almacenada  usuario.password%TYPE;
    l_activo               usuario.activo%TYPE;
BEGIN
    SELECT password, activo
    INTO l_password_almacenada, l_activo
    FROM usuario
    WHERE UPPER(username) = UPPER(P_username);

    IF l_password_almacenada = P_password AND l_activo = 'Y' THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
    WHEN OTHERS THEN
        RETURN FALSE;
END;
/