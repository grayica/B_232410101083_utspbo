namespace WinFormsApp3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FormNew formNew = new FormNew();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            button1.Text = "Login";
            button1.Location = new System.Drawing.Point(311, 145);
            button1.TabIndex = 2;
            button1.Size = new System.Drawing.Size(154, 63);
            button1.Click += new System.EventHandler(button1_Click);

            buku.Text = "Buku";
            buku.Location = new System.Drawing.Point(311, 235);
            buku.TabIndex = 3;
            buku.Size = new System.Drawing.Size(154, 63);
            buku.Click += new System.EventHandler(button1_Click);

            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(253, 40);
            label1.Name = "Welcome, User";
            label1.Size = new System.Drawing.Size(40, 20);
            label1.TabIndex = 1;
            label1.Text = "Welcome, User";

        }

        private void button2_Click(object sender, EventArgs e)
        {
            
        }

        private void button2_Click_1(object sender, EventArgs e)
        {

        }

        private void button2_Click_2(object sender, EventArgs e)
        {

        }
    }
}
