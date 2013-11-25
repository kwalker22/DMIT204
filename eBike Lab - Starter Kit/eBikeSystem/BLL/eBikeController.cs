using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using eBikeSystem.Entities;
using eBikeSystem.DAL;

namespace eBikeSystem.BLL
{
    class eBikeController
    {
        public static Part Lookup_Part_ByPartID(int partNumber)
        {
            Part ReturnedPart = PartProvider.Lookup_Part_ByPartID(partNumber);
            return ReturnedPart;
        }
    }
}
