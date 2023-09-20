import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../utils/utils.dart';
import '../../../widgets/buttonwidget.dart';
import 'add_image.dart';


class ListingMapAdd extends StatefulWidget {
  const ListingMapAdd({super.key});

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(40.7911222, 72.2804086),
    zoom: 14.4746,
  );

  @override
  State<ListingMapAdd> createState() => _ListingMapAddState();
}

class _ListingMapAddState extends State<ListingMapAdd> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Row(
          children: [
            SizedBox(
              width: 6,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F4F8),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Color(0xFF252B5C),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          'Add Listing',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24 * w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30 * h),
            Text(
              'Where is the location?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25 * h,
                fontWeight: FontWeight.w500,
                height: 1.60,
                letterSpacing: 0.75,
              ),
            ),
            SizedBox(height: 30 * h),
            Row(
              children: [
                Container(
                  width: 50 * w,
                  height: 50 * h,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F4F8),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 24 * h,
                    ),
                  ),
                ),
                SizedBox(width: 15 * w),
                Expanded(
                  child: Text(
                    'Jl. Cisangkuy, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115',
                    style: TextStyle(
                      color: Color(0xFF53577A),
                      fontSize: 12 * h,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      height: 1.67,
                      letterSpacing: 0.36,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25 * h),
            Container(
              width: 330 * w,
              height: 355 * h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: ListingMapAdd._kGooglePlex,
                    mapType: MapType.hybrid,
                    markers: {
                      Marker(
                        markerId: MarkerId("myMarker"),
                        position: LatLng(40.7911222, 72.2804086),
                      ),
                    },
                    onMapCreated: (GoogleMapController controller) {
                      // Do something with the controller if needed
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
          ButtonWidgetSh(text: 'Next', onTap: (){Navigator.push(context, MaterialPageRoute(builder: (builder){
            return ListingImageAdd();
          }));},expand: true,),
          SizedBox(height:  20*h,)
          ],
        ),
      ),
    );
  }
}
