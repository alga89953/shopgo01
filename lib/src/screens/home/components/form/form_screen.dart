import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopgo/config/routes/app_route.gr.dart';
import 'package:shopgo/src/services/firebase/firestore/firestore_service.dart';

@RoutePage()
class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({
    super.key,
  });

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  TextEditingController nameController = TextEditingController(text: "");
  TextEditingController descripcionController = TextEditingController(text: "");
  //TextEditingController direccionController = TextEditingController(text: "");
  //TextEditingController priceController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Servicio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Name",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
                onChanged: (String name) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextFormField(
                controller: descripcionController,
                decoration: const InputDecoration(
                  labelText: "Descripcion",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
                onChanged: (String name) {},
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextField(
                controller: direccionController,
                decoration: const InputDecoration(
                  labelText: "Dirección",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
                onChanged: (String name) {},
              ),
            ),*/
            /*
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: numController,
                decoration: const InputDecoration(
                  labelText: "Numero Motorista",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
                onChanged: (String name) {},
              ),
            ),
            */
            /*Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: priceController,
                decoration: const InputDecoration(
                  labelText: "Precio",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
                onChanged: (String name) {},
              ),
            ),*/
            /*Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextField(
                keyboardType: TextInputType.datetime,
                controller: fechServicioController,
                decoration: const InputDecoration(
                  labelText: "Fecha",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
                onChanged: (String name) {},
              ),
            ),*/
            /*
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: TextField(
                controller: urlController,
                decoration: const InputDecoration(
                  labelText: "Url",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
                onChanged: (String name) {},
              ),
            ),
            */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                      onPressed: () async {
                        //int.parse
                        //DateTime.parse

                        //var numMotorista = int.parse(numController.text);
                        //var fechServicio =
                        //DateTime.parse(fechServicioController.text);

                        await addCategoria(
                          nameController.text,
                          descripcionController.text,
                          //direccionController.text,
                          //fechServicio,
                          //numMotorista,
                          //priceController.text,
                          //urlController.text
                        ).then((_) => {
                              AutoRouter.of(context)
                                  .push(const HomeCustomerRoute())
                            });
                        //2018-11-29T19:41:26-08:00
                      },
                      child: const Text('Guardar')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
