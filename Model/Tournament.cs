using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Tournament
    {
        public string Name { get; set; }
        private bool Active;

        public Tournament ()
        {
            Name = string.Empty;
            Active = false;
        }

        public Tournament(string name, bool active)
        {
            Name = name;
            Active = active;
        }
        
        public bool IsActive()
        {
            return (Active == true);
        }
    }
}
