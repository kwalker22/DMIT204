using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using eBikeSystem.Entities;
using System.Data.SqlClient;

namespace eBikeSystem.DAL
{
    class PartProvider
    {
        public static Part Lookup_Part_ByPartID(int partNumber)
        {
            SqlCommand cmd;
            cmd.CommandText = "PR_Lookup_Part_ByPartID";
            cmd.Parameters.Add("PartNumber", partNumber);
            Part returnedPart = databaseProvider.getScalar(cmd);
            return returnedPart;
        }

    }
}
