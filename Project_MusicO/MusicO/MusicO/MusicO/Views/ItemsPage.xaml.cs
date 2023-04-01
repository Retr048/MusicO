using MusicO.ViewModels;
using System;
using Xamarin.Forms;

namespace MusicO.Views
{
    public partial class ItemsPage : ContentPage
    {
        ItemsViewModel _viewModel;

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

        private void OnTextChanged(object sender, TextChangedEventArgs e) 
        {
            Color defaultBGColor = new Color(9, 3, 51);
            try
            {
                
            }
            catch(Exception ex) {
                backgroundTextBox.BackgroundColor = defaultBGColor;
            }
        }
    }
}