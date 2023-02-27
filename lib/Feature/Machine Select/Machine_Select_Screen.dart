import 'package:flutter/material.dart';

import '../../Core/Animation/Fade_Animation.dart';
import '../../Core/Colors/Hex_Color.dart';
import '../../Feature/Machine Select/Devices.dart';
import '../../Models/Device_Model.dart';
import '../../Core/Colors/string_to_color.dart';

class MachineSelectScreen extends StatefulWidget {
  @override
  State<MachineSelectScreen> createState() => _MachineSelectScreenState();
}

class _MachineSelectScreenState extends State<MachineSelectScreen> {
  List<DeviceModel> devices = [
    DeviceModel(
        name: 'Frigo 1',
        isActive: true,
        color: "#336dff"),

    DeviceModel(
        name: 'abbattitore',
        isActive: true,
        color: "#336dff"),
    DeviceModel(
        name: 'Frigo 3',
        isActive: true,
        color: "#336dff"),
    DeviceModel(
        name: 'Sala 1',
        isActive: true,
        color: "#336dff"),
    DeviceModel(
        name: 'Stanza 2',
        isActive: true,
        color: "#336dff"),
    DeviceModel(
        name: 'Smart Sound',
        isActive: true,
        color: "#336dff"),
    DeviceModel(
        name: 'Smart Sound',
        isActive: true,
        color: "#336dff"),
    DeviceModel(
        name: 'Smart Sound',
        isActive: true,
        color: "#336dff"),
    DeviceModel(
        name: 'Smart Sound',
        isActive: true,
        color: "#336dff"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            stops: const [0.1, 0.4, 0.7, 1],
            colors: [
              HexColor("#336dff").withOpacity(0.8),
              HexColor("#f2f3ff"),
              HexColor("#f2f3ff"),
              HexColor("#f2f3ff")
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: SafeArea(
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Welcome back",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(
                      Icons.account_circle,
                    )
                  ]
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "You have a total of machines",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                  Text(
                                    "Room",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )
                                  )
                                ],
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                                size: 35,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: GridView.builder(
                              padding: const EdgeInsets.only(top:10, bottom: 20),
                              gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 3 / 4,
                                  crossAxisSpacing: 20,
                                  mainAxisExtent: 150),
                                itemCount: devices.length,
                              itemBuilder: (BuildContext ctx, index) {
                                return Devices(
                                  name: devices[index].name,
                                  color: devices[index].color.toColor(),
                                  isActive: devices[index].isActive,
                                  onChanged: (val) {
                                    setState(() {
                                      devices[index].isActive =
                                      !devices[index].isActive;
                                    });
                                  },
                                );
                              }
                            )
                          )
                        ]
                      )
                    )
                  ),
                )
              ]
            )
          )
        )
      ),
    );
  }
}