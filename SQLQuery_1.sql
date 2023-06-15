SELECT [tranaction_Id],
[transaction_date]
      ,[district]
      ,[complete_year]
      ,[transaction_type]
      ,[num_building]
      ,[num_land]
      ,[num_garage]
      ,[total_floor_number]
      ,[building_state]
      ,[main_building_materials],
      [land_shifting_total_area]
      ,[building_shifting_total_area]
      ,[main_building_area]
      ,[subsidiary_building_area]
      ,[balcony_area]
      ,[num_room]
      ,[num_bathroom]
      ,[compartment]
      ,[management_org]
      ,[carpark_type]
      ,[carpark_shifting_area]
      ,[carpark_total_price]
      ,[elevator]
      ,[total_ntd]
      ,[unit_ntd]
  FROM [TaiwanRealEstate].[dbo].[2020TaiwanRs]


-- Adding Transaction_id column for each transaction
Alter Table [TaiwanRealEstate].[dbo].[2020TaiwanRs]
ADD tranaction_Id int IDENTITY(1,1) Not Null

-- Filling out null values in transaction type with 'Garage
UPDATE [TaiwanRealEstate].[dbo].[2020TaiwanRs]
SET transaction_type= ISNULL(transaction_type, 'Garage')

-- Converting the year of building to Gregorian year format 
UPDATE [TaiwanRealEstate].[dbo].[2020TaiwanRs]
SET complete_year = complete_year + 1911

