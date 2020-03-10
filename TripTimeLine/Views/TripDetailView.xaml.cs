namespace TripTimeLine.Views
{
    using TripTimeLine.ViewModels;
    using Xamarin.Forms;

    public partial class TripDetailView : ContentPage
    {
        public TripDetailView()
        {
            InitializeComponent();
        }

        protected override void OnAppearing()
        {
            map.PropertyChanged += Map_PropertyChanged;
            detailsPanel.PropertyChanged += DetailsPanel_PropertyChanged;

            base.OnAppearing();
        }

        private void DetailsPanel_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            var vm = BindingContext as TripDetailViewModel;
            vm.TransparentViewLabel = map.Height + detailsPanel.Height;
        }

        private void Map_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            var vm = BindingContext as TripDetailViewModel;
            vm.TransparentViewLabel = map.Height + detailsPanel.Height;
        }
    }
}
