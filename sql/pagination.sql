-- numeber_record_per_page = 36
-- total product = 100
-- total page 100/36 + 1
SELECT [id]
      ,[name]
      ,[image]
      ,[quantity]
      ,[price]
      ,[description]
      ,[categoryId]
  FROM [dbo].[Product]
  ORDER BY id
  OFFSET X ROWS
  FETCH NEXT Y ROWS ONLY
  -- X: so ban ghi tiep theo (page - 1 ) * Y
  -- Y: numeber_record_per_page



