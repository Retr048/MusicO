using Android.Content.Res;
using Android.Media;
using Android.OS;
using MediaManager;
using MusicO.Services;
using MusicO.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace MusicO
{
    public partial class App : Application
    {
        MediaPlayer player;

        public App()
        {
            InitializeComponent();

            DependencyService.Register<MockDataStore>();
            //MainPage = new AppShell();
            MainPage = new NavigationPage(new PageLogIn());
        }

        protected override void OnStart()
        {
            
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
