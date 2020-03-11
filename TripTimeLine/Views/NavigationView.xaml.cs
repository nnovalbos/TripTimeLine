namespace TripTimeLine.Views
{
    using Xamarin.Forms;

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
