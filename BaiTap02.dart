// BaiTap02.dart
// Giai pt bac 2 ax^2+bx+c= 0;
import 'dart:io';
import 'dart:math';

void main() {
  double a = 0, b = 0, c = 0; // Khởi tạo giá trị ban đầu cho a, b, c

  // Kiểm tra giá trị của a
  do {
    print("Nhập hệ số a (a ≠ 0):");
    String? inputA = stdin.readLineSync();
    try {
      a = double.parse(inputA!); // Chuyển chuỗi thành số
      if (a == 0) {
        print("Hệ số a phải khác 0. Vui lòng nhập lại.");
      }
    } catch (e) {
      print("Vui lòng nhập một số hợp lệ cho hệ số a.");
      continue; // Tiếp tục vòng lặp nếu nhập sai
    }
  } while (a == 0);

  // Kiểm tra giá trị của b
  do {
    print("Nhập hệ số b:");
    String? inputB = stdin.readLineSync();
    try {
      b = double.parse(inputB!);
      break; // Nếu nhập đúng, thoát khỏi vòng lặp
    } catch (e) {
      print("Vui lòng nhập một số hợp lệ cho hệ số b.");
    }
  } while (true);

  // Kiểm tra giá trị của c
  do {
    print("Nhập hệ số c:");
    String? inputC = stdin.readLineSync();
    try {
      c = double.parse(inputC!);
      break; // Nếu nhập đúng, thoát khỏi vòng lặp
    } catch (e) {
      print("Vui lòng nhập một số hợp lệ cho hệ số c.");
    }
  } while (true);

  // Tính delta
  double delta = b * b - 4 * a * c;

  // Xử lý nghiệm phương trình
  if (delta < 0) {
    print("Phương trình vô nghiệm.");
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print("Phương trình có nghiệm kép: x = $x");
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print("Phương trình có hai nghiệm phân biệt:");
    print("x1 = $x1");
    print("x2 = $x2");
  }
}
