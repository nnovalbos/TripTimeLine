﻿namespace TripTimeLine.ViewModels.Base
{
    using System.Threading.Tasks;
    using TripTimeLine.Contracts.Services;
    using Xamarin.Forms;

    public class BaseViewModel : BindableObject
    {
        protected readonly INavigationService navigationService;
        private bool isBusy;

        public BaseViewModel(INavigationService navigationService)
        {
            this.navigationService = navigationService;
        }

        public bool IsBusy
        {
            get => isBusy;
            set
            {
                isBusy = value;
                OnPropertyChanged();
            }
        }

        public virtual Task InitializeAsync(object parameter)
        {
            return Task.FromResult(false);
        }
    }
}
