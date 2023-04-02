using MusicO.ViewModels;
using System;
using Xamarin.Forms;
using Xamarin.Essentials;

namespace MusicO.Views
{
    public partial class ItemsPage : ContentPage
    {
        ItemsViewModel _viewModel;
        private bool isDark = true;

        public ItemsPage()
        {
            InitializeComponent();

            BindingContext = _viewModel = new ItemsViewModel();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            _viewModel.OnAppearing();
        }
        private void DarkTheme_Enable(object sender, CheckedChangedEventArgs e)
        {
            if (e.Value == true)
            {
                lightTheme.IsChecked = false;
            }
        }

        private void LightMode_Enable(object sender, CheckedChangedEventArgs e)
        {
            if(e.Value == true)
            {
                darkTheme.IsChecked = false;
            }
        }


        private void OnTextChanged(object sender, TextChangedEventArgs e) 
        {
            Color defaultBGColor = new Color(9, 3, 51);
            try
            {
               
            }
            catch(Exception ex) 
            {
            }
        }
    }
}