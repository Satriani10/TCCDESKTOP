using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using BCrypt.Net;

namespace codominio
{
    public partial class Form1 : Form
    {
        Conexao conexao = new Conexao();
        public Form1()
        {
            InitializeComponent();
        }
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void txtUsuario_TextChanged(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("http://gerentiacondominium.orgfree.com/");
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            string userEmail = txtUsuario.Text;
            string userPassword = txtSenhar.Text;

            if (string.IsNullOrWhiteSpace(userEmail) || string.IsNullOrWhiteSpace(userPassword))
            {
                MessageBox.Show("Preencha ambos os campos de usuário e senha.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }

            // Conecte-se ao banco de dados e recupere a senha hash para o usuário com o email fornecido
            MySqlConnection conn = conexao.abri();
            if (conn == null)
            {
                MessageBox.Show("Erro ao abrir o banco de dados");
                return;
            }

            string mSql = "SELECT id, password FROM users WHERE email = @email";
            using (MySqlCommand cmd = new MySqlCommand(mSql, conn))
            {
                cmd.Parameters.AddWithValue("@email", userEmail);

                try
                {
                    MySqlDataReader mdr = cmd.ExecuteReader();
                    if (mdr.Read())
                    {
                        // Recupere a senha hash do banco de dados
                        string hashedPasswordFromDB = mdr["password"].ToString();

                        // Verifique a senha fornecida com a senha hash do banco de dados usando BCrypt
                        bool passwordMatches = BCrypt.Net.BCrypt.Verify(userPassword, hashedPasswordFromDB);

                        if (passwordMatches)
                        {
                            inicio iniciar = new inicio();
                            iniciar.Show();

                        }
                        else
                        {
                            MessageBox.Show("Usuário ou senha inválida.");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Usuário ou senha inválida.");
                    }
                }
                catch (Exception err)
                {
                    MessageBox.Show("Erro: " + err.Message);
                }
                finally
                {
                    conn.Close(); // Certifique-se de fechar a conexão com o banco de dados
                }
            }
        }



        private void btnLimpar_Click(object sender, EventArgs e)
        {
            txtSenhar.Clear();
            txtUsuario.Clear();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
