namespace TripTimeLine.Views.Templates
{
    using System.ComponentModel;
    using Xamarin.Forms;

    [DesignTimeVisible(true)]
    public partial class TripStartEndTemplate : ContentView
    {
        public TripStartEndTemplate()
        {
            InitializeComponent();
        }

        public string TripEventIcon
        {
            get { return base.GetValue(ImageProperty).ToString(); }
            set { base.SetValue(ImageProperty, value); }
        }

        public static BindableProperty ImageProperty = BindableProperty.Create(
                                                       propertyName: nameof(TripEventIcon),
                                                       returnType: typeof(string),
                                                       declaringType: typeof(TripStartEndTemplate),
                                                       defaultValue: "",
                                                       defaultBindingMode: BindingMode.TwoWay,
                                                       propertyChanged: ImageSourcePropertyChanged);

        private static void ImageSourcePropertyChanged(BindableObject bindable, object oldValue, object newValue)
        {
            var control = (TripStartEndTemplate)bindable;
            control.tripEventIcon.Source = ImageSource.FromFile(newValue.ToString());
        }
    }
}
