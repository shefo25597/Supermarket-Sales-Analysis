	SELECT  
	       [Invoice_ID]
          ,[Branch]
          ,[City]
  --  ,[Customer_type]
		  ,[Customer_type] AS [Customer type]   -- Rename column
		  ,[Gender]
		  ,[Product_line] AS [Product line]		-- Rename column
  --  ,[Unit_price]
	      ,Round([Unit_price],3) AS [Unit price]	-- Decrease decimal points and rename column
		  ,[Quantity]
  --  ,[Tax_5]
		  ,Round([Tax_5],2) As [Tax rate (5%)]		-- Decrease decimal points and rename column
  --  ,[Total]
		  ,Round([Total],3) AS [Total revenue]
          ,[Date]
	      ,DateName(Month,Date) AS Month			-- get month name from date
  --  ,[Time]        -- Not imported for analysis
		  ,[Payment] AS [Payment method]
  --  ,[cogs]
		  ,Round ([cogs],2) AS [Cost of goods sold]
  --  ,[gross_margin_percentage]
          ,Round([gross_margin_percentage],2) As [Gross margin (%)] 
  --  ,[gross_income]
          ,Round([gross_income],2) As [Gross profit]
  --  ,[Rating]
          ,Round(Rating,2) AS [Customer stratification (1-10) ]

  FROM [Supermarket sales].[dbo].[supermarket_sales]
  order by date
