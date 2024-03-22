--Cau 1:
SELECT * FROM users ORDER BY user_name ASC;

--Cau 2:
SELECT * FROM users ORDER BY user_name ASC LIMIT 7;

--Cau 3:
SELECT * FROM users WHERE user_name LIKE '%a%' ORDER BY user_name ASC;

--Cau 4:
SELECT * FROM users WHERE user_name LIKE 'm%' ORDER BY user_name ASC;

--Cau 5:
SELECT * FROM users WHERE user_name LIKE '%i' ORDER BY user_name ASC;

--Cau 6:
SELECT * FROM users WHERE user_email LIKE '%@gmail.com' ORDER BY user_name ASC;

--Cau 7:
SELECT * FROM users WHERE user_email LIKE 'm%@gmail.com' AND user_name LIKE 'm%' ORDER BY user_name ASC;

--Cau 8:
SELECT * FROM users WHERE user_email LIKE '%@gmail.com' AND user_name LIKE '%i%' AND LENGTH(user_name) > 5;

--Cau 9:
SELECT * 
FROM users 
WHERE user_name LIKE '%a%' 
AND LENGTH(user_name) BETWEEN 5 AND 9 
AND user_email LIKE '%@gmail.com' 
AND user_email LIKE '%i%';

--Cau 10: 
SELECT *
FROM users
WHERE (user_name LIKE '%a%' AND LENGTH(user_name) BETWEEN 5 AND 9)
   OR (user_name LIKE '%i%' AND LENGTH(user_name) < 9)
   OR (user_email LIKE '%@gmail.com' AND user_email LIKE '%i%');
