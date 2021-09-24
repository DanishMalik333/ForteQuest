using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ForteQuest.ForteQuestNS;



namespace ForteQuest
{
    
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            Activity activity_new = new Activity();

            activity_new.ActivityName = ActivityNametxt.Text;
            activity_new.Duration = int.Parse(Durationtxt.Text);
            activity_new.ActivityType = ActivityType.SelectedValue;
            activity_new.MaxScore = int.Parse(MaxScore.Text);
            string selectedoption = RadioButtons.SelectedValue;
            if (selectedoption == "Team") { 
                activity_new.IsTeam = true;
                activity_new.InstructorWeightage = float.Parse(Team.Text);
                activity_new.TAWeightage = float.Parse(Individual.Text);
            }
            else { activity_new.IsTeam = false;
                activity_new.InstructorWeightage = 100;
                activity_new.TAWeightage = 0;
            }
            ActivityNametxt.Text = "";
            Durationtxt.Text = "";
            ActivityType.SelectedValue = "";
            MaxScore.Text = "";
            
            Team.Text = "";
            Individual.Text = "";



            string strcon = ConfigurationManager.ConnectionStrings["ForteQuestXConnectionString"].ConnectionString;
            SqlConnection ForteQuestXConnectionString = new SqlConnection(strcon);
                if (ForteQuestXConnectionString.State == System.Data.ConnectionState.Closed)
                {
                    ForteQuestXConnectionString.Open();
                }
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                String sql;
                sql = "insert into [dbo].[Activities1] (ActivityName, Duration, ActivityType, MaxScore, IsTeam, InstructorWeightage, TAWeightage)" +
                " VALUES('" + activity_new.ActivityName + "','" + activity_new.Duration + "'," +
                "'" + activity_new.ActivityType + "','" + activity_new.MaxScore + "','"
                + activity_new.IsTeam + "','" + activity_new.InstructorWeightage + "','"
                + activity_new.TAWeightage + "')";

                command = new SqlCommand(sql, ForteQuestXConnectionString);
                adapter.InsertCommand = new SqlCommand(sql, ForteQuestXConnectionString);
                adapter.InsertCommand.ExecuteNonQuery();

                command.Dispose();
            ForteQuestXConnectionString.Close();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Team_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Individual_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioIndivBtn_CheckedChanged(object sender, EventArgs e)
        {

            //Team.Style.Add("display", "none");
            //Individual.Style.Add("display", "none");

        }

        protected void RadioTeamBtn_CheckedChanged(object sender, EventArgs e)
        {
            //Team.ReadOnly = false;
            //Individual.ReadOnly = false;

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ActivityType_TextChanged(object sender, EventArgs e)
        {

        }

        protected void MaxScore_TextChanged(object sender, EventArgs e)
        {

        }
    }
}