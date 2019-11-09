using System;
using System.Threading.Tasks;

namespace INFT3050.Model
{
    /// <summary>
    /// A dummy account for INFT payment system
    /// </summary>
    public class DummyPaymentAccount
    {
        public DummyPaymentAccount(string name, string number, decimal accountValue, DateTime expiry, int cvc, TransactionResult defaultResult)
        {
            Name = name;
            Number = number;
            AccountValue = accountValue;
            Expiry = expiry;
            CVC = cvc;
            DefaultResult = defaultResult;
        }

        public string Name { get; set; }
        public string Number { get; set; }
        public decimal AccountValue { get; set; }
        public int CVC { get; set; }
        public DateTime Expiry { get; set; }
        public TransactionResult DefaultResult { get; set; }
    }

    /// <summary>
    /// Result of a transaction
    /// </summary>
    public enum TransactionResult
    {
        Approved,
        Declined,
        InvalidCard,
        InvalidExpiry,
        ConnectionFailure
    }

    /// <summary>
    /// An attempted credit card payment
    /// </summary>
    public class PaymentRequest
    {
        public string CardName { get; set; }
        public string CardNumber { get; set; }
        public DateTime Expiry { get; set; }
        public int CVC { get; set; }
        public decimal Amount { get; set; }
        public string Description { get; set; }
    }

    /// <summary>
    /// The result of an attempted payment
    /// </summary>
    public class PaymentResult
    {
        public TransactionResult TransactionResult { get; set; }
        public decimal Amount { get; set; }
        public string Description { get; set; }
        public long ReceiptId { get; set; }
    }


    /// <summary>
    /// Payment system interface - takes a payment request and will return a 
    /// task that on completion will return a result. By using an interface here 
    /// we create a system that can easily be swapped for unit testing, and later changes 
    /// to payment sytems 
    /// </summary>
    public interface IPaymentSystem
    {
        Task<PaymentResult> MakePayment(PaymentRequest payment);
    }
}