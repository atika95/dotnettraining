using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetAllCartItems();
        }

        public void GetAllCartItems()
        {
            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                EmptyCart.Visible = true;
                CartItems.Visible = false;
            }
            else
            {
                EmptyCart.Visible = false;
                CartItems.Visible = true;

                List<CartItems_Result> objList = new List<CartItems_Result>();
                using (var entities = new ShoppingCartEntities())
                {
                    objList = entities.CartItems(Convert.ToInt32(Session["UserId"])).ToList<CartItems_Result>();
                }
                if (objList.Count != 0)
                {
                    EmptyCart.Visible = false;
                    CartItems.Visible = true;

                    CartListCartimg.DataSource = objList;
                    CartListCartimg.DataBind();
                }
                else
                {
                    EmptyCart.Visible = true;
                    CartItems.Visible = false;

                }
            }
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            using (var entities = new ShoppingCartEntities())
            {

                entities.Checkout(Convert.ToInt32(Session["UserId"]));
            }
            ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('Successfully Checkout !')", true);
            }
        }
    }


