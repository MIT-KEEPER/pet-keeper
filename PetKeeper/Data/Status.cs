﻿using System;
using System.Collections.Generic;

namespace PetKeeper.Data
{
    public partial class Status
    {
        public Status()
        {
            Podaci = new HashSet<Podaci>();
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Podaci> Podaci { get; set; }
    }
}
