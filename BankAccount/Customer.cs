﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BankAccount
{
    public abstract class Customer
    {
        public Account Account
        {
            get => default;
            set
            {
            }
        }
    }
}