/****** Object:  Database [SNHU]    Script Date: 1/15/2023 10:08:43 PM ******/
CREATE DATABASE [SNHU]  (EDITION = 'Standard', SERVICE_OBJECTIVE = 'S0', MAXSIZE = 20 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [SNHU] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [SNHU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SNHU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SNHU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SNHU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SNHU] SET ARITHABORT OFF 
GO
ALTER DATABASE [SNHU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SNHU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SNHU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SNHU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SNHU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SNHU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SNHU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SNHU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SNHU] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [SNHU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SNHU] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SNHU] SET  MULTI_USER 
GO
ALTER DATABASE [SNHU] SET ENCRYPTION ON
GO
ALTER DATABASE [SNHU] SET QUERY_STORE = ON
GO
ALTER DATABASE [SNHU] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
ALTER DATABASE [SNHU] SET  READ_WRITE 
GO
