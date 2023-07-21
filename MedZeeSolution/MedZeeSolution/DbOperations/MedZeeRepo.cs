using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MedZeeSolution.DbOperations
{
    public class MedZeeRepo
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader dreader;
        string connstring = @"data source=DESKTOP-1EPBH3Q\SQLEXPRESS;initial catalog=MedZee;MultipleActiveResultSets=True;App=EntityFramework;Integrated Security=SSPI;persist security info=True";
        public void RegisterUser(string name,string password,string email)
        {
            conn = new SqlConnection(connstring);
            conn.Open();
            string query = "insert into Users values('"+name+"','"+email+"','"+password+"')";
            comm = new SqlCommand(query, conn);
            try
            {
                comm.ExecuteNonQuery();                
            }
            catch (Exception ex)
            {
            }
            finally
            {
                conn.Close();
            }
        }

        public string GetUser(string email)
        {
            conn = new SqlConnection(connstring);
            conn.Open();
            string password = string.Empty;
            string query = "select Password from Users where Email = '"+email+"'";
            comm = new SqlCommand(query, conn);
            try
            {
                dreader = comm.ExecuteReader();
                if (dreader.Read())
                {
                     password = dreader[0].ToString();
                }
                else
                {
                    
                }
                dreader.Close();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                conn.Close();
            }
            return password;
        }
    }
}