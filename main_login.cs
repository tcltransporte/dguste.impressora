
using Android.App;
using Android.OS;
using Android.Widget;
using Android.Content;
using System.Threading.Tasks;
using System;
using System.Text;
using System.Net.Http;
using System.Security.Cryptography;

namespace Impressora
{


    [Activity(Label = "DEGUSTE EMPREEND. E PARTICIP. LTDA", Theme = "@style/AppTheme", MainLauncher = true)]
    //, Icon = "@mipmap/ic_launcher"
    public class main_login : Activity
    {
        TextView lblLogNom;
        EditText txtLogNom;
        TextView lblLogPas;
        EditText txtLogPas;
        Button btnLogin;
        TextView lblLogMen;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.main_login);
            // Recuperar parâmetros
            // Exibir no layout
            TextView txtMensagem = FindViewById<TextView>(Resource.Id.lblLogMen);



            btnLogin = FindViewById<Button>(Resource.Id.btnLogin);

            txtMensagem.Text = "Bem-vindo à DEGUSTE!";
            btnLogin.Click += async (s, e) =>
            {
                await Fazer_autenticacao();

            };

        }
        private async Task Fazer_autenticacao()
        {

            txtLogNom = FindViewById<EditText>(Resource.Id.txtLogNom);
            txtLogPas = FindViewById<EditText>(Resource.Id.txtLogPas);
            lblLogMen = FindViewById<TextView>(Resource.Id.lblLogMen);

            string cUsu = txtLogNom.Text;
            string cSen = txtLogPas.Text;

            string chave = "J1e2R3e4M5i6A7s8"; // 16 bytes (AES-128)
            string chaiv = "8s7A6i5M4e3R2e1J"; // 16 bytes

            string cParam = Encrypt( cUsu + ";" + cSen, chave, chaiv );

            //string Url = "https://192.168.1.20/deguste/fis_nfe_login_api.php?xd=" + cParam;
            string Url = "http://191.252.222.210/pronta-entrega/fis_nfe_login_api.php?xd=" + cParam;

            var handler = new HttpClientHandler();

            // Opcional: aceitar autoassinado
            handler.ServerCertificateCustomValidationCallback = HttpClientHandler.DangerousAcceptAnyServerCertificateValidator;

            // Se você estiver usando certificado autoassinado
            handler.ServerCertificateCustomValidationCallback = (message, cert, chain, sslPolicyErrors) =>
            {
                // Aceita todos os certificados (somente para DEV!)
                return true;
            };

            string[] ls_usuario = { " " };
            string content="";

            using (var client = new HttpClient(handler))
            {
                try
                {
                    var response = await client.GetAsync(Url);
                    content = await response.Content.ReadAsStringAsync();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Erro: " + ex.Message);
                }

            }

            if (content.IndexOf("}{") < 0)
            {
                lblLogMen.Text = content;
            }
            else { 
                ls_usuario = content.Split("}{");
                var intent = new Intent(this, typeof(main_activity));
                intent.PutExtra("VenCod", ls_usuario[0]);
                intent.PutExtra("VenNom", ls_usuario[1]);
                StartActivity(intent);
            }


        }
        public static string Encrypt(string plainText, string key, string iv)
        {
            using (Aes aesAlg = Aes.Create())
            {
                aesAlg.Key = Encoding.UTF8.GetBytes(key);
                aesAlg.IV = Encoding.UTF8.GetBytes(iv);

                ICryptoTransform encryptor = aesAlg.CreateEncryptor(aesAlg.Key, aesAlg.IV);

                byte[] plainBytes = Encoding.UTF8.GetBytes(plainText);
                byte[] encrypted = encryptor.TransformFinalBlock(plainBytes, 0, plainBytes.Length);

                return Convert.ToBase64String(encrypted);
            }
        }

    }
}

