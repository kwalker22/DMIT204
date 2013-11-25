using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using eBikeSystem.Entities;
using System.Data.SqlClient;
using System.Configuration;

namespace eBikeSystem.DAL
{
    class PartProvider
    {
        public static Part Lookup_Part_ByPartID(int partNumber)
        {


            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["eBikeLab"].ConnectionString;
            
            using(SqlConnection _conn = new SqlConnection(connectionString))
            using(SqlCommand _cmd = new SqlCommand("dbo.PR_Lookup_Part_ByPartID", _conn))
            {  
               _cmd.CommandType = CommandType.StoredProcedure;

               _cmd.Parameters.Add(new SqlParameter("@CO_ID", SqlDbType.Int));
               _cmd.Parameters["@CO_ID"].Value = 5; // whatever value you want

               _conn.Open();
               object result = _cmd.ExecuteScalar();
               _conn.Close();

               Int64 sum = Int64.Parse(result);
            }
            SqlCommand cmd;
            cmd.CommandText = "PR_Lookup_Part_ByPartID";
            cmd.Parameters.Add("PartNumber", partNumber);
            return returnedPart;
        }

    }
}
