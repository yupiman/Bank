using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BankAccount
{
    public abstract class Account
    {
        public int InterestRate
        {
            get => default;
            set
            {
            }
        }

        public Customer Customer
        {
            get => default;
            set
            {
            }
        }

        public int Balance
        {
            get => default;
            set
            {
            }
        }

        public Income Income
        {
            get => default;
            set
            {
            }
        }

        public void SetPayment()
        {
            throw new System.NotImplementedException();
        }
    }
}