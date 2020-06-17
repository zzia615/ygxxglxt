using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsxxglxt
{
    public partial class Registe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string id = YGID.Text;

            if (id.Length != 8)
            {
                args.IsValid = false;
            }
            else
            {
                long l_name;
                if(long.TryParse(id,out l_name))
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string salary = Salary.Text;
            double d_salary;
            if(double.TryParse(salary, out d_salary))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string id = YGID.Text;
                string name = Name.Text;
                string salary = Salary.Text;

                string sql = "insert into EmployeeInfo(ID,Name,Salary)" +
                    " values('" + id + "','" + name + "'," + salary + ")";
                using (SqlConnection con = new SqlConnection(SysData.ConStr))
                {
                    con.Open();
                    var cmd = con.CreateCommand();
                    cmd.CommandText = sql;
                    cmd.ExecuteNonQuery();
                }

                Response.Write("<script>alert('注册成功');window.location.href='ShowInfo.aspx';</script>");
            }
        }
    }
}