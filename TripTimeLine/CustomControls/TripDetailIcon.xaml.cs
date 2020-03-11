namespace TripTimeLine.CustomControls
{
    using System.ComponentModel;
    using Xamarin.Forms;

    [DesignTimeVisible(true)]
    public partial class TripDetailIcon : ContentView
    {
        public TripDetailIcon()
        {
            InitializeComponent();
        }

        public string TitleText
        {
            get { return base.GetValue(TitleTextProperty).ToString(); }
            set { base.SetValue(TitleTextProperty, value); }
        }

        public double FontSize
        {
            get { return double.Parse(base.GetValue(FontSizeProperty).ToString()); }
            set { base.SetValue(FontSizeProperty, value); }
        }

        public string Image
        {
            get { return base.GetValue(ImageProperty).ToString(); }
            set { base.SetValue(ImageProperty, value); }
        }

        public static readonly BindableProperty TitleTextProperty = BindableProperty.Create(
                                                         propertyName: nameof(TitleText),
                                                         returnType: typeof(string),
                                                         declaringType: typeof(TripDetailIcon),
                                                         defaultValue: string.Empty,
                                                         defaultBindingMode: BindingMode.Default,
                                                         propertyChanged: TitleTextPropertyChanged);

        public static readonly BindableProperty FontSizeProperty = BindableProperty.Create(
                                                        propertyName: nameof(FontSize),
                                                        returnType: typeof(double),
                                                        declaringType: typeof(TripDetailIcon),
                                                        defaultValue: 14.0,
                                                        defaultBindingMode: BindingMode.Default,
                                                        propertyChanged: FontSizePropertyChanged);



        public static BindableProperty ImageProperty = BindableProperty.Create(
                                                        propertyName: nameof(Image),
                                                        returnType: typeof(string),
                                                        declaringType: typeof(TripDetailIcon),
                                                        defaultValue: string.Empty,
                                                        defaultBindingMode: BindingMode.TwoWay,
                                                        propertyChanged: ImageSourcePropertyChanged);



        private static void TitleTextPropertyChanged(BindableObject bindable, object oldValue, object newValue)
        {
            var control = bindable as TripDetailIcon;
            control.title.Text = newValue.ToString();
        }

        private static void FontSizePropertyChanged(BindableObject bindable, object oldValue, object newValue)
        {
            var control = bindable as TripDetailIcon;
            control.title.FontSize = double.Parse(newValue.ToString());
        }

        private static void ImageSourcePropertyChanged(BindableObject bindable, object oldValue, object newValue)
        {
            var control = (TripDetailIcon)bindable;
            control.image.Source = ImageSource.FromFile(newValue.ToString());
        }
    }
}
