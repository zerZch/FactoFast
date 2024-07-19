USE gestion_usuarios;
-- Insertar un usuario aleatorio en la tabla de usuarios
INSERT INTO users (username, email, password_hash, role)
VALUES (
        CONCAT('user', FLOOR(RAND() * 10000)),
        -- username aleatorio
        CONCAT('user', FLOOR(RAND() * 10000), '@example.com'),
        -- email aleatorio
        SHA2('password', 256),
        -- contraseña hash (puedes cambiar 'password' por una contraseña más segura)
        'user' -- rol
    );
-- Verificar que el usuario se ha creado correctamente
SELECT *
FROM users;