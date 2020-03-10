using System;
using System.Threading.Tasks;
using System.Windows.Input;
using TripTimeLine.Contracts.Services;
using TripTimeLine.ViewModels.Base;
using Xamarin.Forms;

namespace TripTimeLine.ViewModels
{
    public class TripsViewModel : BaseViewModel
    {

        public TripsViewModel(INavigationService navigationService): base(navigationService)
        {
        }

        public ICommand GoToDetailCommand => new Command (async (obj) => await GoToDetail(obj));

        private async Task GoToDetail(object obj)
        {
            await navigationService.NavigateToAsync<TripDetailViewModel>(obj as string);
        }
    }
}
