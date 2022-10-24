using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BankAccount
{
    public class Giro : Account
    {
        public Outcome Outcome
        {
            get => default;
            set
            {
            }
        }

        public void SetChargedAmount()
        {
            throw new System.NotImplementedException();
        }
    }
}