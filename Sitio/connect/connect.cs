using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
class DBconnect
    {
        static string CadenaDeConexion = "Data Source=localhost;Database=ventas;User ID=robetorr;Password=rt988311";
        MySqlConnection conn = new MySqlConnection(CadenaDeConexion);

        private void OpenConnection()
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.ConnectionString = CadenaDeConexion;
                conn.Open();
            }
        }
        public void Iusers(string name, string password, string level, string status, string email, string phone)
        {
            OpenConnection();
            System.Data.IDbCommand dbcmd = conn.CreateCommand();
            string sql = "insert into users " +
                         "(name, password, level, status, email, phone) values " +
                            "('" + name + "',hash('" +
                              password + "')," + level + "," + status + ",'" + email + "','" + phone + "');";
            dbcmd.CommandText = sql;
            System.Data.IDataReader reader = dbcmd.ExecuteReader();
            conn.Close();
            reader.Close();
            reader = null;
            dbcmd.Dispose();
            dbcmd = null;
        }
        public DataTable SusersBy(string username,string password)
        {
            OpenConnection();
            System.Data.IDbCommand dbcmd = conn.CreateCommand();
            string sql = "select * from users where name='" + username + " and password=hash('" +
                          password + "');";
            dbcmd.CommandText = sql;
            System.Data.IDataReader reader = dbcmd.ExecuteReader();
            DataTable users = new DataTable();
            users.Load(reader);
            conn.Close();
            reader.Close();
            reader = null;
            dbcmd.Dispose();
            dbcmd = null;
            return users;
        }
}
