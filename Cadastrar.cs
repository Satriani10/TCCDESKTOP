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
using System.IO;

namespace codominio
{
    public partial class Cadastrar : Form
    {
        Conexao conexao = new Conexao();
        internal object panel1;

        public Cadastrar()
        {
            InitializeComponent();
        }
        private bool TemEsteUsuario()
        {
            conexao.abri();
            object[] obj = { txtCpf.Text, cboUsuario.Text };
            DataTable dataTable = conexao.seleciona("select users.id from users left join inactive_users on(inactive_users.user_id = users.id) join user_types on(user_types.id = users.user_types_id) where inactive_users.id is null and (users.cpf = @p0 and user_types.type = @p1);");
            if (dataTable.Rows.Count == 0)
            {
                return false;
            }
            return true;
        }
        
        private void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Clear();
            txtCpf.Clear();
            txtDataNascimento.Clear();
            txtSenha.Clear();
            rxrLogin.Clear();
        }

        private void btnCadastro_Click(object sender, EventArgs e)
        {
            if (TemEsteUsuario() == true)
            {
                MessageBox.Show("usuario ja cadastrado no sistema ");
                return;
            }

            string origemCompleto = "";
            string foto = "";
            string pastaDestino = Globais.caminhoafotos;
            string destinocompleto = "";
            if (txtNome.Text == "")
            {
                MessageBox.Show("CAMPO  OBRIGADORIO \U0001f91a");
                txtNome.Focus();
                return;
            }
            if (txtCpf.Text == "")
            {
                MessageBox.Show("CAMPO  OBRIGADORIO \U0001f91a");
                txtCpf.Focus();
                return;
            }
            if (txtDataNascimento.Text == "")
            {
                MessageBox.Show("CAMPO  OBRIGADORIO \U0001f91a");
                txtDataNascimento.Focus();
                return;
            }
            if (destinocompleto == "")
            {
                if (MessageBox.Show("sem foto selecionada,deseja continuar?","ERRO",MessageBoxButtons.YesNo) == DialogResult.No)
                {
                    return; 
                }
            }
            if (destinocompleto != "")
            {
                System.IO.File.Copy(origemCompleto, destinocompleto, true);
                if (File.Exists(destinocompleto))
                {
                    pb_foto.ImageLocation = destinocompleto;
                }
                else
                {
                    if (MessageBox.Show("Erro ao localiza a foto deseja continuar","ERRO",MessageBoxButtons.YesNo) == DialogResult .Yes)
                    {
                        return; 
                    }
                }
            }
            if (txtSenha.Text == "")
            {
                MessageBox.Show("CAMPO  OBRIGADORIO \U0001f91a");
                txtSenha.Focus();
                return;
            }
            try
            {
                conexao.abri();
                conexao.seleciona(string.Concat(""));
                txtCpf.Text = "";
                txtNome.Text = "";
                txtDataNascimento.Text = "";
                txtSenha.Clear();
                rxrLogin.Clear();
                
            }
            catch
            {
                MessageBox.Show("Deu erro\U0001f91a");
            }
        }

        private void btnVoltar_Click(object sender, EventArgs e)
        {
            inicio  iniciar = new inicio();
            iniciar.Show();
       
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void btn_addFoto_Click(object sender, EventArgs e)
        {
            string origemCompleto = "";
            string foto = "";
            string pastaDestino = Globais.caminhoafotos;
            string destinocompleto = "";
            if(openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                origemCompleto = openFileDialog1.FileName;
                foto = openFileDialog1.SafeFileName;
                destinocompleto = pastaDestino + foto;
            }
            if(File.Exists(destinocompleto))
            {
                if( MessageBox.Show("Arquivo já existi deseja substituir ?","substituir",MessageBoxButtons.YesNo) == DialogResult.No ) 
                {
                    return;
                }
                
            }
            System.IO.File.Copy(origemCompleto, destinocompleto, true);
            if (File.Exists(destinocompleto))
            {
                pb_foto.ImageLocation = destinocompleto;
            }
            else
            {
                MessageBox.Show("Arquivo nao copiado ");
            }
        }
    }
}
