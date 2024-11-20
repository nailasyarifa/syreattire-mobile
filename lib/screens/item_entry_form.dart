import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:syreattire/screens/menu.dart';
import 'package:syreattire/widgets/left_drawer.dart';

class ItemEntryFormPage extends StatefulWidget {
  const ItemEntryFormPage({super.key});

  @override
  State<ItemEntryFormPage> createState() => _ItemEntryFormPageState();
}

class _ItemEntryFormPageState extends State<ItemEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _category = "";
  String _size = "";
  String _color = "";
  double _price = 0.0;

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
        title: const Text("Form Tambah Item"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Field Name
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nama Item",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) => setState(() => _name = value),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Nama Item tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),

              // Field Category
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kategori",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) => setState(() => _category = value),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Kategori tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),

              // Field Size
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Ukuran",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) => setState(() => _size = value),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Ukuran tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),

              // Field Color
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Warna",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) => setState(() => _color = value),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Warna tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),

              // Field Price
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Harga",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) =>
                      setState(() => _price = double.tryParse(value) ?? 0.0),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Harga tidak boleh kosong!";
                    }
                    if (double.tryParse(value) == null) {
                      return "Harga harus berupa angka!";
                    }
                    return null;
                  },
                ),
              ),

              // Submit Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final response = await request.postJson(
                        "http://127.0.0.1:8000/add-items-entry-ajax/",
                        jsonEncode({
                          'name': _name,
                          'category': _category,
                          'size': _size,
                          'color': _color,
                          'price': _price.toString(),
                        }),
                      );

                      if (response['status'] == 'success') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Item berhasil disimpan!"),
                          ),
                        );
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()), 
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Gagal menyimpan item!"),
                          ),
                        );
                      }
                    }
                  },
                  child: const Text("Simpan"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
