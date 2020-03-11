namespace TripTimeLine.Contracts.Services
{
    using System.Threading.Tasks;
    using TripTimeLine.ViewModels.Base;

    public interface INavigationService
    {
        Task InitializeAsync();

        Task NavigateToAsync<TViewModel>() where TViewModel : BaseViewModel;

        Task NavigateToAsync<TViewModel>(object parameter) where TViewModel : BaseViewModel;
    }
}