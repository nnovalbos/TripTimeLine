﻿namespace TripTimeLine.CustomControls
{
    using Xamarin.Forms;

    public partial class ActivityIndicatorPanel : ContentView
    {
        public ActivityIndicatorPanel()
        {
            InitializeComponent();
        }

        public string TitleText
        {
            get { return base.GetValue(TitleTextProperty).ToString(); }
            set { base.SetValue(TitleTextProperty, value); }
        }

        public static readonly BindableProperty TitleTextProperty = BindableProperty.Create(
                                                         propertyName: nameof(TitleText),
                                                         returnType: typeof(string),
                                                         declaringType: typeof(ActivityIndicatorPanel),
                                                         defaultValue: string.Empty,
                                                         defaultBindingMode: BindingMode.Default,
                                                         propertyChanged: TitleTextPropertyChanged);

        private static void TitleTextPropertyChanged(BindableObject bindable, object oldValue, object newValue)
        {
            var control = bindable as ActivityIndicatorPanel;
            control.title.Text = newValue.ToString();
        }
    }
}
