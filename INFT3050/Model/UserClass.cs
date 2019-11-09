using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Principal;
using System.Web;

namespace INFT3050.Model
{
    public class UserClass : IPrincipal
    {
        [Display(Name = "UserID")]
        /// <summary>
        /// UserID
        /// </summary>
        public int UserID { get; set; }

        [Display(Name = "UserName")]
        /// <summary>
        /// UserName
        /// </summary>
        public string UserName { get; set; }

        [Display(Name = "Email")]
        /// <summary>
        /// Email
        /// </summary>
        public string Email { get; set; }

        [Display(Name = "Password")]
        /// <summary>
        /// Password
        /// </summary>
        public string Password { get; set; }

        [Display(Name = "Role")]
        /// <summary>
        /// Role
        /// </summary>
        public string Role { get; set; }

        public IIdentity Identity { get; set; }

        public bool IsInRole(string role)
        {
            return role == Role;
        }
    }

    public class Login
    {
        [Display(Name = "UserName")]
        /// <summary>
        /// UserName
        /// </summary>
        public string UserName { get; set; }

        [Display(Name = "Password")]
        /// <summary>
        /// Password
        /// </summary>
        public string Password { get; set; }
    }

    public class Postage
    {
        [Display(Name = "UserID")]
        /// <summary>
        /// UserID
        /// </summary>
        public int UserID { get; set; }

        [Display(Name = "PostageID")]
        /// <summary>
        /// PostageID
        /// </summary>
        public int PostageID { get; set; }

        [Display(Name = "ContactName")]
        /// <summary>
        /// ContactName
        /// </summary>
        public string ContactName { get; set; }

        [Display(Name = "Street")]
        /// <summary>
        /// Street
        /// </summary>
        public string Street { get; set; }

        [Display(Name = "City")]
        /// <summary>
        /// City
        /// </summary>
        public string City { get; set; }

        [Display(Name = "State")]
        /// <summary>
        /// State
        /// </summary>
        public string State { get; set; }

        [Display(Name = "Country")]
        /// <summary>
        /// Country
        /// </summary>
        public string Country { get; set; }

        [Display(Name = "ZipCode")]
        /// <summary>
        /// ZipCode
        /// </summary>
        public string ZipCode { get; set; }

        [Display(Name = "Phone")]
        /// <summary>
        /// Phone
        /// </summary>
        public string Phone { get; set; }
    }
}