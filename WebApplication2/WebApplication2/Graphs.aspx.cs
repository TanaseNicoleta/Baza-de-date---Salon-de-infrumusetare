using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZedGraph;

namespace WebApplication2
{
    public partial class form2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ZedGraphWeb1.RenderGraph += new ZedGraph.Web.ZedGraphWebControlEventHandler(this.OnRenderGraph);
        }
        private void OnRenderGraph(ZedGraph.Web.ZedGraphWeb z, System.Drawing.Graphics g, ZedGraph.MasterPane masterPane)
        {

            DataSet ds = (DataSet)Cache["FBCache"];
            GraphPane myPane = masterPane[0];
            myPane.Title.Text = "";
            myPane.XAxis.Title.Text = "Client"; myPane.YAxis.Title.Text = "Varsta";
            Color[] colors = {
                             Color.Red, Color.Yellow, Color.Green, Color.Blue,
                             Color.Purple,Color.Pink,Color.Plum,Color.Silver, Color.Salmon
                         };

            if (Request.QueryString["tip"] != null)
            {
                List<string> listaX = new List<string>();
                PointPairList list = new PointPairList();
                int i = 0;
                foreach (DataRow r in ds.Tables[0].Rows)
                {
                    listaX.Add(r[1].ToString()); // nume client
                    list.Add(0, (int)r[5], i++); // varsta
                }

                switch (Request.QueryString["tip"])
                {
                    case "Bare":
                        {
                            BarItem myCurve = myPane.AddBar("Curve 2", list, Color.Blue);
                            myCurve.Bar.Fill = new Fill(colors);
                            myCurve.Bar.Fill.Type = FillType.GradientByZ;
                            myCurve.Bar.Fill.RangeMin = 0;
                            myCurve.Bar.Fill.RangeMax = list.Count;
                            myPane.XAxis.Type = AxisType.Text;
                            myPane.XAxis.Scale.TextLabels = listaX.ToArray();
                            break;
                        }

                    case "Bare3D": break;
                    case "Pie3D": break;
                    case "Linie":
                        {
                            LineItem curve = myPane.AddCurve("Spline", list, Color.Red, SymbolType.Diamond);
                            curve.Line.IsSmooth = true;
                            curve.Line.SmoothTension = 0.5F;
                            curve.Line.Width = 2;

                            curve.Symbol.Fill = new Fill(Color.White);
                            curve.Symbol.Size = 10;

                            myPane.XAxis.Scale.TextLabels = listaX.ToArray();
                            myPane.XAxis.Type = AxisType.Text;
                            break;
                        }
                    case "Pie":
                        {
                            i = 0;
                            foreach (DataRow r in ds.Tables[0].Rows)
                            {
                                PieItem segment1 = myPane.AddPieSlice((int)r[5], colors[(i++) % colors.Length], Color.White, 45f, (i % 2 == 0) ? 0.2 : 0, r[1].ToString());
                            }
                            break;
                        }
                }

            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clienti.aspx");
        }

    }
}