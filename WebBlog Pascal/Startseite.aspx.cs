using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBlog_Pascal
{
    public partial class Startseite : System.Web.UI.Page
    {
        WebBlog_ptoeEntities entities = new WebBlog_ptoeEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            BloglisteFuellen();
            if (!Page.IsPostBack)
            {
                ThemaFuellen();
            }
        }

        private void BloglisteFuellen()
        {
            datalist.DataSource = entities.Posts.ToList<Post>();
            DataBind();
        }

        private void ThemaFuellen()
        {
            Ddl_Thema.DataSource = entities.Themen.ToList<Theman>();
            Ddl_Thema.DataValueField = "ID";
            Ddl_Thema.DataTextField = "Thema";
            Ddl_Thema.DataBind();
        }
        protected void Btn_Absenden_Click(object sender, EventArgs e)
        {
            Post post = new Post();
            post.Autor = Tb_Name.Text;
            post.Text = Tb_Eintrag.Text;
            post.Titel = Tb_Titel.Text;
            post.Tags = Tb_Tags.Text;
            post.REF_Thema = Convert.ToInt32(Ddl_Thema.SelectedValue);
            post.Datum = DateTime.Now;
            entities.Posts.Add(post);
            entities.SaveChanges();
            BloglisteFuellen();

        }
    }
}