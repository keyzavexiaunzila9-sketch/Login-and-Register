import 'package:flutter/material.dart';
import 'package:flutter_application_2/Login.dart';

// 1. Enum Gender
enum Gender { pria, wanita }

// 2. List Pendidikan
const List<String> list = <String>[
  'SD',
  'SMP',
  'SMA',
  'SMK',
];

// 3. StatefulWidget
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  // 4. Widget Radio
  Gender? _jenisKelamin = Gender.pria;

  // 5. Widget Dropdown
  String dropdownValue = list.first;

  // 6. Widget Slider
  double _currentSliderPrimaryValue = 20;

  // 7. Widget Switch
  bool _isSwitchOn = false;

  // 8. Widget Checkbox
  bool isChecked = false;

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBF0),

      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            padding: const EdgeInsets.all(20),

            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor:
                       const Color.fromARGB(255, 205, 239, 211),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color:  const Color.fromARGB(255, 74, 141, 79),
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Buat Akun Baru",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Text(
                  "Silakan lengkapi data untuk membuat akun",
                  style: TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 20),

                Card(
                  elevation: 3,
                  color: const Color.fromARGB(255, 224, 248, 222),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(20),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // 9. TextField Nama Lengkap
                        const Text("Nama Lengkap"),
                        const SizedBox(height: 5),

                        const TextField(
                          decoration: InputDecoration(
                            hintText: "Masukkan nama lengkap",
                            prefixIcon: Icon(Icons.person_outline),
                            border: OutlineInputBorder(),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // 10. TextField Email
                        const Text("Email"),
                        const SizedBox(height: 5),

                        const TextField(
                          decoration: InputDecoration(
                            hintText: "contoh@email.com",
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // 11. TextField Password
                        const Text("Password"),
                        const SizedBox(height: 5),

                        TextField(
                          obscureText: !isPasswordVisible,

                          decoration: InputDecoration(
                            hintText: "Masukkan password",
                            prefixIcon:
                                const Icon(Icons.lock_outline),
                            border:
                                const OutlineInputBorder(),

                            // 12. IconButton
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible =
                                      !isPasswordVisible;
                                });
                              },

                              icon: Icon(
                                isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // 13. Radio
                        const Text("Jenis Kelamin"),

                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile<Gender>(
                                value: Gender.pria,
                                groupValue: _jenisKelamin,
                                title: const Text("Laki-laki"),
                                activeColor:
                                   const Color.fromARGB(255, 74, 141, 79),

                                onChanged: (Gender? value) {
                                  setState(() {
                                    _jenisKelamin = value;
                                  });
                                },
                              ),
                            ),

                            Expanded(
                              child: RadioListTile<Gender>(
                                value: Gender.wanita,
                                groupValue: _jenisKelamin,
                                title: const Text("Perempuan"),
                                activeColor:
                                    const Color.fromARGB(255, 63, 114, 57),

                                onChanged: (Gender? value) {
                                  setState(() {
                                    _jenisKelamin = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        // 14. Dropdown
                        const Text("Pendidikan"),
                        const SizedBox(height: 5),

                        DropdownButton<String>(
                          value: dropdownValue,
                          isExpanded: true,

                          items: list.map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),

                          onChanged: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                        ),

                        const SizedBox(height: 15),

                        // 15. Slider
                        const Text("Tingkat Pengalaman"),

                        Slider(
                          activeColor:
                              const Color.fromARGB(255, 57, 95, 51),

                          min: 0,
                          max: 100,
                          value:
                              _currentSliderPrimaryValue,

                          label:
                              _currentSliderPrimaryValue
                                  .round()
                                  .toString(),

                          onChanged: (double value) {
                            setState(() {
                              _currentSliderPrimaryValue =
                                  value;
                            });
                          },
                        ),

                        // 16. Row Text
                        const Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pemula"),
                            Text("Ahli"),
                          ],
                        ),

                        const SizedBox(height: 15),

                        // 17. TextField Alamat
                        const Text("Alamat"),
                        const SizedBox(height: 5),

                        const TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            hintText:
                                "Masukkan alamat lengkap",
                            prefixIcon: Icon(Icons.home),
                            border: OutlineInputBorder(),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // 18. Switch
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Notifikasi",
                                  style: TextStyle(
                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),

                                Text(
                                  "Aktifkan notifikasi aplikasi",
                                ),
                              ],
                            ),

                            Switch(
                              activeColor:
                                  const Color.fromARGB(
                                255,
                                78,
                                88,
                                171,
                              ),

                              value: _isSwitchOn,

                              onChanged: (bool value) {
                                setState(() {
                                  _isSwitchOn = value;
                                });
                              },
                            ),
                          ],
                        ),

                        // 19. Checkbox
                        Container(
                          color: const Color.fromARGB(255, 249, 249, 250),

                          child: CheckboxListTile(
                            value: isChecked,

                            activeColor:
                                const Color.fromARGB(255, 83, 152, 90),

                            title: const Text(
                              "Saya menyetujui syarat dan ketentuan",
                            ),

                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ),

                        const SizedBox(height: 15),

                        // 20. ElevatedButton
                        SizedBox(
                          width: double.infinity,
                          height: 50,

                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 56, 187, 63),

                              shape:
                                  RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(
                                  30,
                                ),
                              ),
                            ),

                            onPressed: () {},

                            child: const Text(
                              "REGISTRASI",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        // 21. TextButton
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                                ),
                              );
                            },

                            child: const Text(
                              "Sudah memiliki akun? Login",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}