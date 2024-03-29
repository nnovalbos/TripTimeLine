﻿namespace TripTimeLine.ViewModels
{
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using TripTimeLine.Contracts.Services;
    using TripTimeLine.Models;
    using TripTimeLine.ViewModels.Base;
    using TripTimeLine.Extensions;

    public class TripDetailViewModel : BaseViewModel
    {
        private readonly ITripsService tripsService;
        private Trip trip;
        private string tripTime;
        private string tripKm;
        private string tripFuelConsumption;
        private string tripFuelConsumptionLitersPerHour;
        private TripEvent tripStart;
        private TripEvent tripEnd;
        private double transparentViewLabelHeight;


        private IEnumerable<GroupList<TripEvent>> tripEvents;

        public TripDetailViewModel(ITripsService tripsService, INavigationService navigationService) : base(navigationService)
        {
            this.tripsService = tripsService;
            base.IsBusy = true;
        }

        public string TripTime
        {
            get => tripTime;
            set
            {
                tripTime = value;
                OnPropertyChanged();
            }
        }

        public string TripKm
        {
            get => tripKm;
            set
            {
                tripKm = value;
                OnPropertyChanged();
            }
        }

        public string TripFuelConsumption
        {
            get => tripFuelConsumption;
            set
            {
                tripFuelConsumption = value;
                OnPropertyChanged();
            }
        }

        public string TripFuelConsumptionLitersPerHour
        {
            get => tripFuelConsumptionLitersPerHour;
            set
            {
                tripFuelConsumptionLitersPerHour = value;
                OnPropertyChanged();
            }
        }

        public TripEvent TripStart
        {
            get => tripStart;
            set
            {
                tripStart = value;
                OnPropertyChanged();
            }
        }

        public TripEvent TripEnd
        {
            get => tripEnd;
            set
            {
                tripEnd = value;
                OnPropertyChanged();
            }
        }


        public IEnumerable<GroupList<TripEvent>> TripEvents
        {
            get => tripEvents;
            set
            {
                tripEvents = value;
                OnPropertyChanged();
            }
        }



        public double TransparentViewLabelHeight
        {
            get => transparentViewLabelHeight;
            set
            {
                transparentViewLabelHeight = value;
                OnPropertyChanged();
            }
        }

        public async override Task InitializeAsync(object parameter)
        {
            IsBusy = true;
            trip = await tripsService.GetTrip(parameter as string);
            DrawData();
            IsBusy = false;
        }



        private void DrawData()
        {
            TripTime = trip.Duration.ToString();
            TripKm = trip.Kilometers.ToString();
            TripFuelConsumption = trip.FuelConsumption.ToString();
            TripFuelConsumptionLitersPerHour = trip.FuelConsumptionLitersPerHour.ToString();
            TripStart = trip.StartTrip;
            TripEnd = trip.EndTrip;
            TripEvents = trip.GetEventsGrouped();


        }
    }
}