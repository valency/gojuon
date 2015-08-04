using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Gojuon {
    public partial class Form1 : Form {
        Timer timer = new Timer();
        string[] romaji = { "a", "i", "u", "e", "o", "ka", "ki", "ku", "ke", "ko", "sa", "shi", "su", "se", "so", "ta", "chi", "tsu", "te", "to", "na", "ni", "nu", "ne", "no", "ha", "hi", "fu", "he", "ho", "ma", "mi", "mu", "me", "mo", "ya", "yu", "yo", "ra", "ri", "ru", "re", "ro", "wa", "n", "wo" };
        string[] hiragana = { "あ", "い", "う", "え", "お", "か", "き", "く", "け", "こ", "さ", "し", "す", "せ", "そ", "た", "ち", "つ", "て", "と", "な", "に", "ぬ", "ね", "の", "は", "ひ", "ふ", "へ", "ほ", "ま", "み", "む", "め", "も", "や", "ゆ", "よ", "ら", "り", "る", "れ", "ろ", "わ", "ん", "を" };
        string[] katakana = { "ア", "イ", "ウ", "エ", "オ", "カ", "キ", "ク", "ケ", "コ", "サ", "シ", "ス", "セ", "ソ", "タ", "チ", "ツ", "テ", "ト", "ナ", "ニ", "ヌ", "ネ", "ノ", "ハ", "ヒ", "フ", "ヘ", "ホ", "マ", "ミ", "ム", "メ", "モ", "ヤ", "ユ", "ヨ", "ラ", "リ", "ル", "レ", "ロ", "ワ", "ン", "ヲ" };
        public Form1() {
            InitializeComponent();
            timer.Tick += new EventHandler(TimeTickHandler);
            timer.Interval = (1000) * (30);
            timer.Enabled = true;
            timer.Start();
        }

        void TimeTickHandler(object sender, EventArgs e) {
            if (romaji.Length != hiragana.Length || romaji.Length != katakana.Length) MessageBox.Show("Database is not correct!");
            Random ro = new Random();
            int imax = romaji.Length;
            int imin = 0;
            int i = ro.Next(imin, imax);
            label2.Text = romaji[i];
            label1.Text = hiragana[i];
            label3.Text = katakana[i];
        }
    }
}
