using MusicO.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace MusicO.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}