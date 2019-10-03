using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NightOwl.demo
{
    public class CSharp
    {
        private readonly string _testField;

        public string TestProperty { get; set; }

        #region RegionTest
        public string Getter => TestProperty;

        public CSharp(string testField)
        {
            _testField = testField;
            string text = $"{TestProperty} this is a text string";
            int number = 1;
        }

        #endregion

        /// <summary>
        /// Hello this is an xml comment
        /// </summary>
        /// <param name="testParam">param comment</param>
        /// <returns></returns>
        public async Task<string> TestMethod(string testParam)
        {
            for(var i = 0; i <= 5; i++)
            {
                testParam.Trim();
                _testField?.Trim();

                var enumVal = (int)TestEnum.TestValue;


                // Hello this is a normal comment
                new List<string>().Where(c => c == "Test");
            }

            return await Task.FromResult(testParam);
        }
    }

    public enum TestEnum
    {
        TestValue
    }
}