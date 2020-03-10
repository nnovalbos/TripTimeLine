namespace TripTimeLine.Common
{
    using System;
    using Autofac;
    using TripTimeLine.Contracts.Repositories;
    using TripTimeLine.Contracts.Services;
    using TripTimeLine.Repositories;
    using TripTimeLine.Services;
    using TripTimeLine.ViewModels;

    public static class AppContainer
    {
        private static IContainer _container;

        public static void RegisterDependencies()
        {
            var builder = new ContainerBuilder();

            builder.RegisterType<TripsViewModel>();
            builder.RegisterType<TripDetailViewModel>();

            builder.RegisterType<NavigationService>().As<INavigationService>();
            builder.RegisterType<TripsService>().As<ITripsService>();

            builder.RegisterType<RestServiceRepository>().As<IGenericRepository> ();

            _container = builder.Build();

        }

        public static object Resolve(Type typename)
        {
            return _container.Resolve(typename);
        }

        public static T Resolve<T>()
        {
            return _container.Resolve<T>();
        }
    }
}
