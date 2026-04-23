
using Android.App;
using Android.Bluetooth;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Widget;
using AndroidX.AppCompat.App;
using System;
using System.Globalization;
using System.IO;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Impressora
{

    [Activity(Label = "DEGUSTE EMPREEND. E PARTICIP. LTDA", Theme = "@style/AppTheme" )]
    // AppCompatActivity
    public class main_activity : Activity 
    {
        BluetoothAdapter _bluetoothAdapter;
        BluetoothSocket _socket;
        Stream _outputStream;

        Button btnBuscar;
        Button btnImprim;
        Button btnSair;
        EditText txtData ;

        string vencod ;
        string vennom ;

        Spinner spnResultado;
        TextView txtResultado;
        TextView lblVenCod;
        TextView lblVenNom;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            
            SetContentView(Resource.Layout.main_activity);

            vencod = Intent.GetStringExtra("VenCod");
            vennom = Intent.GetStringExtra("VenNom");

            lblVenCod = FindViewById<TextView>(Resource.Id.lblVenCod);
            lblVenNom = FindViewById<TextView>(Resource.Id.lblVenNom);

            lblVenCod.Text = "Codigo: " + vencod;
            lblVenNom.Text = "Nome: " + vennom;

            btnBuscar = FindViewById<Button>(Resource.Id.btnBuscar);
            btnImprim = FindViewById<Button>(Resource.Id.btnImprim);
            btnSair  = FindViewById<Button>(Resource.Id.btnSair);

            txtData = FindViewById<EditText>(Resource.Id.txtData);
            
            //btnBuscar.Click += btnBuscar_Click;

            btnImprim.Click += async (s, e) =>
            {
                await ConnectAndPrint("Leopardo"); // Nome do dispositivo emparelhado
            };

            btnBuscar.Click += async (s, e) =>
            {
                await Buscarnfe(); 
            };

            btnSair.Click += (s, e) =>
            {
                // Fecha todas as Activities
                FinishAffinity();

                // Força encerramento do processo
                Android.OS.Process.KillProcess(Android.OS.Process.MyPid());
                System.Environment.Exit(0);
            };

        }
        private void btnBuscar_Click(object sender, System.EventArgs e)
        {
  

        }
        private async Task Buscarnfe()
        {

            // Fix for CS1026 and CS1729 errors
            // string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "egb_impter.db3");
            // Correctly initialize SQLiteConnection using a valid constructor
            // var db = new SQLiteConnection(new SQLite.Net.Platform.XamarinAndroid.SQLitePlatformAndroid(), dbPath);
            //string MyFile = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "deguste_fical_relacao_nfe.pfx");
            string cData = txtData.Text;

            spnResultado = FindViewById<Spinner>(Resource.Id.spinnerItens);
            txtResultado = FindViewById<TextView>(Resource.Id.txtResultado);


            bool valido = DateTime.TryParseExact(cData,"dd/MM/yyyy",new CultureInfo("pt-BR"),DateTimeStyles.None,out DateTime dataValida);

            if (!valido) {

                txtResultado.Text = $"Data inválida ! " + cData;
                return;
            }

            var cCodVen = vencod.Trim();

            //string Url = "http://191.252.222.210/pronta-entrega/fis_nfe_relacao_api.php?xd="+cData+";"+cCodVen;
            string Url = "http://191.252.222.210/pronta-entrega/fis_nfe_relacao_api.php?xd=" + cData + ";" + cCodVen;

            //if (File.Exists(MyFile)){
            //    Toast.MakeText(this, "  VOCE PEDIU UMA LISTA ", ToastLength.Short).Show();
            //    return;
            // }
            //var cert = new X509Certificate2( MyFile , "egb592345");

            var handler = new HttpClientHandler();
            //var handler = new HttpClientHandler();
            //handler.ClientCertificates.Add(cert);

            // Opcional: aceitar autoassinado
            handler.ServerCertificateCustomValidationCallback = HttpClientHandler.DangerousAcceptAnyServerCertificateValidator;

            // Se você estiver usando certificado autoassinado
            handler.ServerCertificateCustomValidationCallback = (message, cert, chain, sslPolicyErrors) =>
            {
                // Aceita todos os certificados (somente para DEV!)
                return true;
            };

            string[] ls_pedidos = {" "};
            string content = "";
            using (var client = new HttpClient(handler))
            {
                try
                {
                    var response = await client.GetAsync(Url);

                     content = await response.Content.ReadAsStringAsync();

                    //opedido = JsonConvert.DeserializeObject<Pedido>(content);
                    // List<Item> lista = JsonSerializer.Deserialize<List<Item>>(content);
                    // List<Item> lista = <List<Item>>(content);
                     ls_pedidos = content.Split("}{");

                }
                catch (Exception ex)
                {
                    Console.WriteLine("Erro: " + ex.Message);
                }

                if (content.Length > 50)
                {
                    var Yadapter = new ArrayAdapter<string>(this, Android.Resource.Layout.SimpleSpinnerItem, ls_pedidos);
                    Yadapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);

                    spnResultado.Adapter = Yadapter;

                    spnResultado.ItemSelected += (s, e) =>
                    {
                        //if (e.Position > 0) // ignora "Selecione..."{
                        string escolhido = ls_pedidos[e.Position];
                        escolhido = escolhido.Substring(37, escolhido.Length - 37);
                        txtResultado.Text = $" {escolhido}";
                        // }
                    };
                } else {
                    txtResultado.Text = $"Não foi encontrado pedidos para o vendedor " + cCodVen + " na data " + cData;
                }

            }

        }

        private async Task ConnectAndPrint(string printerName)
        {

            try
            {
                _bluetoothAdapter = BluetoothAdapter.DefaultAdapter;

               // if (_bluetoothAdapter == null || !_bluetoothAdapter.IsEnabled)
               // {
               //     Toast.MakeText(this, "Bluetooth não disponível", ToastLength.Short).Show();
               //     return;
               // }

                // Buscar dispositivo pareado
                BluetoothDevice device = null;
                foreach (var bondedDevice in _bluetoothAdapter.BondedDevices)
                {
                    if (bondedDevice.Name.Contains(printerName))
                    {
                        device = bondedDevice;
                        break;
                    }
                }

                if (device == null)
                {
                    Toast.MakeText(this, "Impressora não encontrada", ToastLength.Short).Show();
                    return;
                }

                // if (!System.IO.File.Exists(filePath))
                // {
                //     Toast.MakeText(this, "Arquivo não encontrado.", ToastLength.Short).Show();
                //     return;
                // }


                string cNfe = txtResultado.Text;


                // Conectar via UUID SPP
                var uuid = Java.Util.UUID.FromString("00001101-0000-1000-8000-00805F9B34FB");
                _socket = device.CreateRfcommSocketToServiceRecord(uuid);
                await _socket.ConnectAsync();

                _outputStream = _socket.OutputStream;

                // ESC/POS básico
                // string text = "Teste de impressão\nLinha 2\n\n  O JEREMIAS E GAY MAS E MEU AMNIGO\n\nO JEREMIAS E GAY MAS E MEU AMNIGO\n\n ";

                //byte[] buffer = Encoding.UTF8.GetBytes(text);
                byte[] buffer = Encoding.UTF8.GetBytes(cNfe);

                _outputStream.Write(buffer, 0, buffer.Length);

                // Comando de corte ou feed extra
                _outputStream.Write(new byte[] { 0x0A, 0x0A, 0x0A }, 0, 3);

                Toast.MakeText(this, "Impresso com sucesso!", ToastLength.Long).Show();

                _outputStream.Close();
                _socket.Close();
            }
            catch (Exception ex)
            {
                Toast.MakeText(this, "Erro: " + ex.Message, ToastLength.Long).Show();
            }
        }
        
      
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

    }
    class Item
    {
        public string codigo { get; set; }
        public string xml { get; set; }
    }

}

