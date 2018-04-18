RENAME TABLE `agenti` TO `personal`;

ALTER TABLE personal
  ADD (
    email VARCHAR(100),
    varsta INT
  );

ALTER TABLE personal MODIFY email INTEGER;

ALTER TABLE personal
DROP COLUMN email;

