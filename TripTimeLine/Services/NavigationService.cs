namespace TripTimeLine.Services
{
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using TripTimeLine.Contracts.Services;
    using TripTimeLine.ViewModels;
    using TripTimeLine.ViewModels.Base;
    using TripTimeLine.Views;
    using Xamarin.Forms;

    public class NavigationService : INavigationService
    {
        private Dictionary<Type, Type> mappingViewModelToView;

        public NavigationService()
        {
            mappingViewModelToView = new Dictionary<Type, Type>();
            CreateMappings();
        }

        public async Task InitializeAsync()
        {
            await NavigateToAsync<TripsViewModel>();
        }

        public Task NavigateToAsync<TViewModel>() where TViewModel : BaseViewModel
        {
            return CustomNavigateToAsync(typeof(TViewModel), null);
        }

        public Task NavigateToAsync<TViewModel>(object parameter) where TViewModel : BaseViewModel
        {
            return CustomNavigateToAsync(typeof(TViewModel), parameter);
        }

        private async Task CustomNavigateToAsync(Type viewModelType, object parameter)
        {

            var page = CreatePage(viewModelType, parameter);

            if (page is TripsView)
            {
                var nv = new NavigationView(page);
                Application.Current.MainPage = nv;

            }
            else if (Application.Current.MainPage is NavigationView navigationPage)
            {
                await navigationPage.PushAsync(page);
            }
            else
            {
                throw new NotSupportedException();
            }


            await (page.BindingContext as BaseViewModel).InitializeAsync(parameter);
        }

        private Page CreatePage(Type viewModelType, object parameter)
        {
            Type pageType = mappingViewModelToView[viewModelType];
            if (pageType == null) throw new Exception($"No page for view model:{viewModelType}");

            Page page = Activator.CreateInstance(pageType) as Page;
            return page;
        }


        private void CreateMappings()
        {
            mappingViewModelToView.Add(typeof(TripDetailViewModel), typeof(TripDetailView));
            mappingViewModelToView.Add(typeof(TripsViewModel), typeof(TripsView));
        }
    }
}
