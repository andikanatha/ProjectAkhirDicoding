import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FORM',
          style: TextStyle(
              fontSize: 17, color: Colors.black, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Title(text: 'Nama Pelapor'),
                          TextFormField(
                            controller: _nameController,
                            decoration: const InputDecoration(
                              hintText: 'Masukkan nama anda',
                              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ),
                          const SizedBox(height: 16,),
                          const Title(text: 'Telepon Pelapor'),
                          TextFormField(
                            controller: _phoneController,
                            decoration: const InputDecoration(
                              hintText: 'Masukkan telepon anda',
                              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ),
                          const SizedBox(height: 16,),
                          const Title(text: 'Lokasi Kejadian'),
                          TextFormField(
                            controller: _locationController,
                            decoration: const InputDecoration(
                              hintText: 'Masukkan lokasi kejadian',
                              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ),
                          const SizedBox(height: 16,),
                          const Title(text: 'Tanggal Kejadian'),
                          TextFormField(
                            controller: _dateController,
                            decoration: const InputDecoration(
                              hintText: 'Masukkan tanggal',
                              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ),
                          const SizedBox(height: 16,),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _submitReport,
                    child: const Text('KIRIM LAPORAN'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    ),
    );
  }

  // function button
  void _submitReport() {
    setState(() {
      _nameController.clear();
      _phoneController.clear();
      _locationController.clear();
      _dateController.clear();
    });
  }
}
class Title extends StatelessWidget {
  final String text;
  const Title({required this.text});

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}