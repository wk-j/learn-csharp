
    //public delegate void MyCustomEventHandler(object sender, int countNumber, EventArgs eventArgs);

    public class CounterEventArgs : EventArgs
    {
        public int Number { get; set; }
    }

    public class Counter
    {
        private int number;
        //public event MyCustomEventHandler ThresholdReached;
        public event Action<object, int, EventArgs> ThresholdReached;
        public int Number
        {
            get
            {
                return number;
            }
            set
            {
                number = value;
                if (ThresholdReached != null)//always check null
                {
                    //set current value to number argument or pass as property of EventAgrs
                    var eventArgs = new CounterEventArgs() {Number = number};
                    ThresholdReached(this, number, eventArgs);
                }
            }
        }
    }

    public class DelegateTest
    {
        private int currentCounterNumberValue;
        public void SetUp()
        {
            currentCounterNumberValue = 0;
        }
        public void ThresholdReached_ValidEventHanlder_CorrectNumberSentToTheHandler()
        {
            var counter = new Counter();
            counter.ThresholdReached += Counter_ThresholdReached;
            counter.Number += 2;
            //Assert.AreEqual(2,currentCounterNumberValue);
        }
        private void Counter_ThresholdReached(object sender,int countNumber,EventArgs eventArgs)
        {
            //assert from parameter or event args object, you can make it as strongly type as well
            //currentCounterNumberValue = countNumber;
            currentCounterNumberValue=   ((CounterEventArgs)eventArgs).Number;
        }
    }
