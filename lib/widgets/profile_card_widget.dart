import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCardWidget extends StatelessWidget {
  final String studentName;
  final String studentId;
  final String department;

  final VoidCallback onViewDetails;
  final VoidCallback onMarkPresent;

  const ProfileCardWidget({
    super.key,
    required this.studentName,
    required this.studentId,
    required this.department,
    required this.onViewDetails,
    required this.onMarkPresent,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(20.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundColor:
                  Colors.indigo.shade100,
                  child: Icon(
                    Icons.person,
                    size: 45.sp,
                    color: Colors.indigo,
                  ),
                ),

                Positioned(
                  top: -4,
                  right: -4,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 3.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius:
                      BorderRadius.circular(
                        20.r,
                      ),
                    ),
                    child: Text(
                      "New",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.h),

            Text(
              studentName,
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),

            SizedBox(height: 10.h),

            Text(
              "ID: $studentId",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),

            SizedBox(height: 8.h),

            Text(
              department,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),

            SizedBox(height: 25.h),

            SizedBox(
              width: double.infinity,
              height: 45.h,
              child: ElevatedButton.icon(
                onPressed: onViewDetails,
                icon: Icon(
                  Icons.info_outline,
                  size: 16.sp,
                  color: Colors.white,
                ),
                label: Text(
                  "View Details",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
            ),

            SizedBox(height: 12.h),

            SizedBox(
              width: double.infinity,
              height: 45.h,
              child: OutlinedButton.icon(
                onPressed: onMarkPresent,
                icon: Icon(
                  Icons.check_circle_outline,
                  size: 16.sp,
                  color: Colors.green,
                ),
                label: Text(
                  "Mark Present",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.green,
                    width: 1,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}