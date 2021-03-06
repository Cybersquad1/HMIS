USE [master]
GO
/****** Object:  Database [HMIS]    Script Date: 03/27/2018 10:44:30 ******/
CREATE DATABASE [HMIS] ON  PRIMARY 
( NAME = N'HMIS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HMIS.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HMIS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HMIS_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HMIS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HMIS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HMIS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HMIS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HMIS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HMIS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HMIS] SET ARITHABORT OFF
GO
ALTER DATABASE [HMIS] SET AUTO_CLOSE ON
GO
ALTER DATABASE [HMIS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HMIS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HMIS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HMIS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HMIS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HMIS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HMIS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HMIS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HMIS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HMIS] SET  ENABLE_BROKER
GO
ALTER DATABASE [HMIS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HMIS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HMIS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HMIS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HMIS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HMIS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HMIS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HMIS] SET  READ_WRITE
GO
ALTER DATABASE [HMIS] SET RECOVERY SIMPLE
GO
ALTER DATABASE [HMIS] SET  MULTI_USER
GO
ALTER DATABASE [HMIS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HMIS] SET DB_CHAINING OFF
GO
USE [HMIS]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sales_menu_detail]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sales_menu_detail](
	[Menu_Id] [int] NOT NULL,
	[Item_id] [int] NULL,
	[Item_des] [varbinary](50) NULL,
	[item_price] [money] NULL,
	[item_isprintable] [varbinary](50) NULL,
	[item_issubitem] [varbinary](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Menu_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sales_menu]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sales_menu](
	[Menu_Id] [int] NOT NULL,
	[Hotel_id] [int] NULL,
	[Depart_id] [int] NULL,
	[Effective_date] [datetime] NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Menu_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rooms](
	[Room_id] [int] NOT NULL,
	[Room_type_id] [int] NULL,
	[Hotel_id] [int] NULL,
	[Building_id] [int] NULL,
	[Room_name] [varbinary](50) NULL,
	[Room_des] [varbinary](50) NULL,
	[Room_des_extra] [varbinary](50) NULL,
	[Room_status] [varbinary](50) NULL,
	[Room_notes] [varbinary](50) NULL,
	[Room_rate] [money] NULL,
	[Room_prom_rate] [money] NULL,
	[Room_base_rate] [money] NULL,
	[Room_size] [numeric](18, 0) NULL,
	[Room_bed_size] [nchar](10) NULL,
	[Room_isTV] [bit] NULL,
	[Room_isFridge] [bit] NULL,
	[Room_isSeater] [bit] NULL,
	[Room_isTable] [bit] NULL,
	[Room_isShower] [bit] NULL,
	[date_created] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Room_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_Rooms_Column] UNIQUE NONCLUSTERED 
(
	[Room_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_Rooms_Column_1] UNIQUE NONCLUSTERED 
(
	[Hotel_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_Rooms_Column_2] UNIQUE NONCLUSTERED 
(
	[Building_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room_inspection_log]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room_inspection_log](
	[Room_id] [int] NOT NULL,
	[insp_type_id] [int] NULL,
	[insp_date] [date] NULL,
	[insp_time] [time](7) NULL,
	[insp_supervisor] [varbinary](50) NULL,
	[insp_room_status] [varbinary](50) NULL,
	[insp_isBedsheet] [varbinary](50) NULL,
	[insp_isTowel] [varbinary](50) NULL,
	[insp_isTissue] [varbinary](50) NULL,
	[insp_isWater] [varbinary](50) NULL,
	[insp_isCup] [varbinary](50) NULL,
	[insp_bathroom] [varbinary](50) NULL,
	[insp_isTV] [varbinary](50) NULL,
	[insp_rating] [varbinary](50) NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Room_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room_clean_log]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room_clean_log](
	[Room_id] [int] NOT NULL,
	[Clean_type_id] [int] NULL,
	[Clean_date] [date] NULL,
	[Clean_time] [time](7) NULL,
	[Clean_supervisor] [varbinary](50) NULL,
	[Clean_housekeeper] [varbinary](50) NULL,
	[Clean_room_status] [varbinary](50) NULL,
	[Clean_isBedsheet] [bit] NULL,
	[Clean_isTowel_qty] [numeric](18, 0) NULL,
	[Clean_isTissue_qty] [numeric](18, 0) NULL,
	[Clean_isWater_qty] [numeric](18, 0) NULL,
	[Clean_isCup_qty] [numeric](18, 0) NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Room_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room_Category]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room_Category](
	[Room_type_id] [int] NOT NULL,
	[Room_type_name] [nchar](10) NULL,
	[Room_type_des] [varbinary](50) NULL,
	[Room_type_Status] [varbinary](50) NULL,
	[Hotel_id] [int] NULL,
	[Room_type_rate] [varbinary](50) NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [nchar](10) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Room_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_Room_Category_Column] UNIQUE NONCLUSTERED 
(
	[Hotel_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room_booking_log]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room_booking_log](
	[Booking_id] [int] NOT NULL,
	[Room_type_id] [int] NULL,
	[Room_num_rooms] [numeric](18, 0) NULL,
	[Customer_id] [int] NULL,
	[Customer_pay_id] [int] NULL,
	[Customer_check_in_id] [int] NULL,
	[Check_in_id] [int] NULL,
	[Check_in_date] [date] NULL,
	[Check_in_time] [time](7) NULL,
	[Check_out_date] [date] NULL,
	[Check_out_time] [time](7) NULL,
	[Check_in_type] [varbinary](50) NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Booking_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu_combo_items]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu_combo_items](
	[Menu_id] [int] NOT NULL,
	[invent_item_id] [int] NULL,
	[invent_item_qty] [int] NULL,
	[invent_isMusthave] [varchar](50) NULL,
	[invent_isTrackable] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Menu_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lpo_activity]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lpo_activity](
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventory_vendors]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory_vendors](
	[Company_id] [int] NOT NULL,
	[Comp_type_id] [int] NULL,
	[Comp_name] [varbinary](50) NULL,
	[Comp_othernames] [varbinary](50) NULL,
	[comp_phone1] [numeric](11, 0) NULL,
	[Comp_phone2] [numeric](11, 0) NULL,
	[Comp_email] [varbinary](50) NULL,
	[Comp_RC] [varbinary](50) NULL,
	[Comp_address] [varbinary](255) NULL,
	[Comp_city] [varbinary](50) NULL,
	[Cust_state] [varbinary](50) NULL,
	[Hotel_id] [int] NULL,
	[Comp_keycontact_name] [varbinary](50) NULL,
	[Company_keycontact_phone1] [numeric](11, 0) NULL,
	[Company_keycontact_phone2] [numeric](11, 0) NULL,
	[Company_keycontact_email] [varbinary](50) NULL,
	[Employee_id] [int] NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Company_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventory_master]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory_master](
	[invent_zone_id] [int] NOT NULL,
	[invent_cat_id] [int] NULL,
	[invent_item_id] [int] NULL,
	[invent_item_name] [varbinary](50) NULL,
	[Invent_item_des] [varbinary](50) NULL,
	[Invent_purchase_unit] [numeric](18, 0) NULL,
	[Invent_purchase_qty] [numeric](18, 0) NULL,
	[Invent_pucrchase_price] [money] NULL,
	[Invent_purchase_min] [int] NULL,
	[Invent_purchase_max] [int] NULL,
	[Invent_purchase_reorder] [varbinary](50) NULL,
	[Invent_retail_unit] [int] NULL,
	[Invent_Retail_price] [money] NULL,
	[Invent_retail_min] [int] NULL,
	[Invent_retail_max] [int] NULL,
	[Invent_retail_reorder] [varbinary](50) NULL,
	[Invent_isTrackable] [varbinary](50) NULL,
	[Invent_isWatchlist] [varchar](50) NULL,
	[Invent_isDirectsale] [varbinary](50) NULL,
	[Invent_isDiscontinued] [varbinary](50) NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[invent_zone_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventory_audit_detail]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_audit_detail](
	[Audit_id] [int] NOT NULL,
	[Invent_item_id] [int] NULL,
	[Invent_stock_qty] [numeric](18, 0) NULL,
	[Invent_audit_qty] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Audit_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_audit]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory_audit](
	[Audit_Id] [int] NOT NULL,
	[Hotel_id] [int] NULL,
	[Depart_id] [int] NULL,
	[Invent_location_id] [int] NULL,
	[Effective_date] [date] NULL,
	[Effective_time] [time](7) NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Audit_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventory_activity]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory_activity](
	[customer_id] [int] NOT NULL,
	[Act_type_id] [int] NULL,
	[Act_hotel_id] [int] NULL,
	[Act_depart_id] [int] NULL,
	[Act_ref_info] [int] NULL,
	[Act_debit] [money] NULL,
	[Act_credit] [money] NULL,
	[Act_Balance] [money] NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varchar](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hotel](
	[Hotel_Id] [int] NOT NULL,
	[Hotel_name] [varchar](50) NULL,
	[Hotel_Des] [nchar](10) NULL,
	[Hotel_Address] [nchar](10) NULL,
	[Hotel_City] [nchar](10) NULL,
	[Hotel_State] [nchar](10) NULL,
	[Hotel_phone1] [nchar](10) NULL,
	[Hotel_phone2] [nchar](10) NULL,
	[Hdate_opened] [nchar](10) NULL,
	[Hotel_Status] [nchar](10) NULL,
	[Hotel_Num_Rooms] [nchar](10) NULL,
	[Hotel_isGym] [nchar](10) NULL,
	[Hotel_isLounge] [nchar](10) NULL,
	[Hotel_isPool] [nchar](10) NULL,
	[Hotel_isResturant] [nchar](10) NULL,
	[date_created] [nchar](10) NULL,
	[created_by] [nchar](10) NULL,
	[date_updated] [nchar](10) NULL,
	[updated_by] [nchar](10) NULL,
	[replication_status] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Hotel_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee_phones]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee_phones](
	[employee_id] [int] NOT NULL,
	[emp_phone] [numeric](11, 0) NULL,
	[date_created] [numeric](11, 0) NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee_master]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee_master](
	[Employee_id] [int] NOT NULL,
	[Hotel_id] [int] NULL,
	[Securelobby_id] [int] NULL,
	[emp_firstname] [varbinary](50) NULL,
	[emp_lastname] [varbinary](50) NULL,
	[emp_othername] [varbinary](50) NULL,
	[emp_sex] [varbinary](50) NULL,
	[emp_start_date] [date] NULL,
	[emp_start_salary] [money] NULL,
	[emp_isActive] [bit] NULL,
	[emp_type] [varbinary](50) NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee_department]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee_department](
	[employee_id] [int] NOT NULL,
	[hotel_id] [int] NULL,
	[depart_id] [nchar](10) NULL,
	[depart_start_date] [datetime] NULL,
	[depart_isPromotion] [varbinary](50) NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee_debit]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_debit](
	[Employee_id] [int] NOT NULL,
	[debit_reason] [nchar](10) NULL,
	[debit_amount] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_addresse]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee_addresse](
	[employee_id] [int] NOT NULL,
	[emp_address] [varbinary](255) NULL,
	[emp_city] [varbinary](50) NULL,
	[emp_state] [varchar](50) NULL,
	[emp_address_des] [varbinary](50) NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer_room_rate]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer_room_rate](
	[Room_rate_id] [int] NOT NULL,
	[Customer_id] [int] NULL,
	[Hotel_id] [nchar](10) NULL,
	[Room_type_id] [int] NULL,
	[Room_rate] [money] NULL,
	[Room_rate_guest] [money] NULL,
	[Approved_by] [varbinary](50) NULL,
	[Start_date] [date] NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Room_rate_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer_activity_log]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer_activity_log](
	[customer_id] [int] NOT NULL,
	[Act_type_id] [int] NULL,
	[Act_hotel_id] [int] NULL,
	[Act_depart_id] [int] NULL,
	[Act_ref_info] [numeric](18, 0) NULL,
	[Act_debit] [money] NULL,
	[Act_credit] [money] NULL,
	[Act_Balance] [money] NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_id] [int] NOT NULL,
	[Cust_firstName] [varbinary](50) NULL,
	[Cust_lastname] [varbinary](50) NULL,
	[Cust_othername] [varbinary](50) NULL,
	[Cust_listedname] [varbinary](50) NULL,
	[Cust_sex] [varbinary](50) NULL,
	[Cust_DOB] [date] NULL,
	[Cust_phone1] [numeric](11, 0) NULL,
	[Cust_phone1_call] [numeric](11, 0) NULL,
	[Cust_phone1_sms] [numeric](11, 0) NULL,
	[Cust_phone1_whatsapp] [numeric](11, 0) NULL,
	[Cust_phone2] [numeric](11, 0) NULL,
	[Cust_phone2_call] [numeric](11, 0) NULL,
	[Cust_phone2_sms] [numeric](11, 0) NULL,
	[Cust_phone2_whatsapp] [numeric](11, 0) NULL,
	[Cust_whatsapp] [numeric](11, 0) NULL,
	[Cust_email] [varbinary](50) NULL,
	[Cust_address] [varbinary](255) NULL,
	[Cust_city] [varbinary](50) NULL,
	[Cust_state] [varbinary](50) NULL,
	[Cust_religion] [varbinary](50) NULL,
	[Hotel_id] [int] NULL,
	[Depertment_id] [int] NULL,
	[Employee_id] [int] NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company_Customer]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company_Customer](
	[Company_id] [int] NOT NULL,
	[Customer_id] [int] NULL,
	[Contact_type] [varbinary](50) NULL,
	[Contact_isReport] [varbinary](50) NULL,
	[Contact_isBooking] [varbinary](50) NULL,
	[Contact_isPayment] [varbinary](50) NULL,
	[Contact_isFandB] [varbinary](50) NULL,
	[Hotel_id] [int] NULL,
	[Depertment_id] [int] NULL,
	[Employee_id] [int] NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Company_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Company_id] [int] NOT NULL,
	[Comp_type_id] [int] NULL,
	[Comp_name] [varbinary](50) NULL,
	[Comp_othernames] [varbinary](50) NULL,
	[comp_phone1] [numeric](11, 0) NULL,
	[Comp_phone2] [numeric](11, 0) NULL,
	[Comp_email] [varbinary](50) NULL,
	[Comp_RC] [varbinary](50) NULL,
	[Comp_address] [varbinary](50) NULL,
	[Comp_city] [varbinary](50) NULL,
	[Cust_state] [varbinary](50) NULL,
	[Comp_religion] [varbinary](50) NULL,
	[Hotel_id] [int] NULL,
	[Depertment_id] [int] NULL,
	[Employee_id] [int] NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Company_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Building]    Script Date: 03/27/2018 10:44:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Building](
	[Building_id] [int] NOT NULL,
	[Building_name] [varbinary](50) NULL,
	[Building_des] [varbinary](50) NULL,
	[Building_Status] [varbinary](50) NULL,
	[Building_num_floors] [numeric](18, 0) NULL,
	[Hotel_id] [int] NOT NULL,
	[date_created] [datetime] NULL,
	[created_by] [varbinary](50) NULL,
	[date_updated] [datetime] NULL,
	[updated_by] [varbinary](50) NULL,
	[replication_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Building_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_Building_Column] UNIQUE NONCLUSTERED 
(
	[Hotel_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Building_ToTable]    Script Date: 03/27/2018 10:44:33 ******/
ALTER TABLE [dbo].[Building]  WITH CHECK ADD  CONSTRAINT [FK_Building_ToTable] FOREIGN KEY([Hotel_id])
REFERENCES [dbo].[Building] ([Hotel_id])
GO
ALTER TABLE [dbo].[Building] CHECK CONSTRAINT [FK_Building_ToTable]
GO
