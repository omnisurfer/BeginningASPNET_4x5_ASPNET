using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for Calculator
/// </summary>
public class Calculator
{    
    public Calculator()
    {

    }

    public string Test
    {
        get;
        set;
    }

    public byte Tests
    {
        get;
        set;
    }

    /// <summary>
    /// Takes in argument 'a' and adds it to argument 'b' then returns the result.
    /// </summary>
    /// <param name="a">Double</param>
    /// <param name="b">Double</param>
    /// <returns>a + b</returns>
    public double Add(double a, double b)
    {
        return a + b;                
    }

    public double Sub(double a, double b)
    {
        return a - b;
    }

    public double Mult(double a, double b)
    {
        return a * b;
    }

    public double Div(double a, double b)
    {
        return a / b;
    }
}