using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_CalcDemo : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CalculateButton_Click(object sender, EventArgs e)
    {
        if (ValueBox1.Text.Length > 0 && ValueBox2.Text.Length > 0)
        {
            double result = 0, value1 = Convert.ToDouble(ValueBox1.Text), value2 = Convert.ToDouble(ValueBox2.Text);

            Calculator myCalc = new Calculator();

            switch (Operators.SelectedValue)
            {
                case "+":
                    result = myCalc.Add(value1, value2);                            
                    break;

                case "-":
                    result = myCalc.Sub(value1, value2);                    
                    break;

                case "*":
                    result = myCalc.Mult(value1, value2);
                    break;

                case "/":
                    result = myCalc.Div(value1, value2);
                    break;
            }

            ResultLabel.Text = result.ToString();
        }

        else
            ResultLabel.Text = string.Empty;
    }
}