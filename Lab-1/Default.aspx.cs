using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_1
{
    public partial class Defauls : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {            
            var firstNumber = Double.Parse(textBoxFirstNumber.Text);
            var secondNumber = Double.Parse(textBoxSecondNumber.Text);

            textBoxResult.Text = Calculator.numAdd(firstNumber, secondNumber).ToString();
        }

        protected void btnSubtract_Click(object sender, EventArgs e)
        {
            var firstNumber = Double.Parse(textBoxFirstNumber.Text);
            var secondNumber = Double.Parse(textBoxSecondNumber.Text);

            textBoxResult.Text = Calculator.numSubtract(firstNumber, secondNumber).ToString();
        }

        protected void btnMultiply_Click(object sender, EventArgs e)
        {
            var firstNumber = Double.Parse(textBoxFirstNumber.Text);
            var secondNumber = Double.Parse(textBoxSecondNumber.Text);

            textBoxResult.Text = Calculator.numMultiply(firstNumber, secondNumber).ToString();
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            var firstNumber = Double.Parse(textBoxFirstNumber.Text);
            var secondNumber = Double.Parse(textBoxSecondNumber.Text);

            textBoxResult.Text = Calculator.numDivide(firstNumber, secondNumber).ToString();
        }
    }
}