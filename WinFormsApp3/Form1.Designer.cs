namespace WinFormsApp3
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            button1 = new Button();
            label1 = new Label();
            buku = new Button();
            SuspendLayout();
            // 
            // button1
            // 
            button1.Font = new Font("Segoe UI", 12F);
            button1.Location = new Point(311, 145);
            button1.Name = "button1";
            button1.Size = new Size(154, 63);
            button1.TabIndex = 2;
            button1.Text = "Login";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.BackColor = Color.Cyan;
            label1.Font = new Font("Segoe UI", 20F);
            label1.Location = new Point(268, 37);
            label1.Name = "label1";
            label1.Size = new Size(243, 46);
            label1.TabIndex = 3;
            label1.Text = "Welcome, User";
            // 
            // buku
            // 
            buku.Location = new Point(311, 235);
            buku.Name = "buku";
            buku.Size = new Size(154, 63);
            buku.TabIndex = 4;
            buku.Text = "button2";
            buku.UseVisualStyleBackColor = true;
            buku.Click += button2_Click_2;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(buku);
            Controls.Add(label1);
            Controls.Add(button1);
            Name = "Form1";
            Text = "UTS PBO SOAL B";
            Load += Form1_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private Button button1;
        private Label label1;
        private Button buku;
    }
}
