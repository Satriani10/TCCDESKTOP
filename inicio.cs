using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace codominio
{
    public partial class inicio : Form
    {
        
        public inicio()
        {
            InitializeComponent();
        }

        private void proprietarioToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
        private Form formularioAberto = null;

        private void AbrirFormNoPainel(Form novoForm)
        {
            if (formularioAberto != null)
            {
                formularioAberto.Close();
            }

            novoForm.TopLevel = false;
            novoForm.AutoScroll = true;
            panel1.Controls.Add(novoForm);
            novoForm.Dock = DockStyle.Fill;
            novoForm.Show();

            formularioAberto = novoForm;
        }

        private void moradorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Cadastrar cadastrar = new Cadastrar();
            AbrirFormNoPainel(cadastrar);
        }

        private void correspondênciaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Correspondencia correspondencia = new Correspondencia();
            AbrirFormNoPainel(correspondencia);
        }

        // Você pode criar funções semelhantes para outros itens de menu ou botões.


        private void excluirToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void inicio_Load(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void cadastrarToolStripMenuItem1_Click(object sender, EventArgs e)
        {

        }

       

        private void menuStrip2_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void btnUsuario_Click(object sender, EventArgs e)
        {
            Users usr = new Users();
            AbrirFormNoPainel(usr);

        }

        private void conteúdosToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void noToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void regrasDeConvívToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void btnEntretenimentos_Click(object sender, EventArgs e)
        {
            Entreternimento entreternimento = new Entreternimento();
            AbrirFormNoPainel(entreternimento);
        }
    }
}
