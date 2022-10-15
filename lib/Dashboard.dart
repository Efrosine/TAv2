import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tugas_akhir_v2/Profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maliki News'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ));
              },
              icon: Icon(Icons.person,color: Colors.white,))
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: 300,
              enlargeCenterPage: true,
            ),
            items: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/news1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/news2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/news3.jpg',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48,vertical:24),
            child: Column(
              children: [
                Image.asset('assets/images/news1.jpg'),
                Text(
                    'HUMAS-Universitas Islam Negeri Maulana Malik Ibrahim Malang (UIN Maliki Malang) gelar Seminar Nasional tentang politik dan hukum. Acara yang diinisiasi oleh Dewan Eksekutif Mahasiswa(DEMA) UIN Maliki Malang ini mengambil tema Rekonstruksi Demokrasi Serta Pro Kontra Kampanye Pemilu Tahun 2024 di Lingkungan Sivitas')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48,vertical: 24),
            child: Column(
              children: [
                Image.asset('assets/images/news2.jpg'),
                Text(
                    'Acara yang berlangsung secara offline itu tidak hanya dihadiri oleh sivitas akademika UIN Maliki Malang saja namun juga para tamu undangan Mahasiswa dari berbagai Perguruan tinggi baik yang negeri maupun swasta di Malang Raya, khususnya bagi mereka yang sedang menempuh studi di bidang politik dan hukum. Sehingga tidak tanggung-tangung panitia penyelenggara pun menghadirkan dua tokoh yang cukup familiar, berkompeten dan ahli di bidang politik dan hukum sebagai narasumbernya, yakni Muhammad Arbayanto, SH.,M.H(Komisioner Komisi Pemilihan Umum Provinsi Jawa Timur) dan Prof. Saifullah, SH., M. Hum(Pakar Hukum Tata Negara sekaligus Guru besar UIN Maliki Malang).')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48,vertical: 24),
            child: Column(
              children: [
                Image.asset('assets/images/news3.jpg'),
                Text(
                    'Dalam sambutannya, mewakili pimpinan universitas yang dalam hal ini dihadiri oleh Kepala Biro Administrasi, Akademik, Kemahasiswaan dan Kerjasama (Kabiro AAKK) Dr. Barnoto, M. Pd.I menyampaikan selamat dan terima kasih atas terselenggaranya acara tersebut. Bahkan Pak Kabiro, begitu sapaan akrabnya ini juga memberikan kesan sekaligus mengapresiasinya. "Begitu pentingnya acara semacam ini karena memiliki banyak manfaat jadi tidak hanya berkumpul diskusi tanpa adanya outputnya yang jelas. Apalagi nanti berkaitan dengan adanya kampanye yang masuk di kampus pada pemilu tahun 2024 padahal itu tidak ada sebelumnya di pemilu tahun 2019 yang lalu, "ucapnya.')
              ],
            ),
          )
        ],
      ),
    );
  }
}
