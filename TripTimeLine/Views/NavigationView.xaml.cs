using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace TripTimeLine.Views
{
    public partial class NavigationView : NavigationPage
    {
        public NavigationView()
        {
            InitializeComponent();
        }

        public NavigationView(Page root) : base(root)
        {
            InitializeComponent();
        }
    }
}
