import 'Model/CuaHang.dart';  // Import lớp CuaHang
import 'Model/DienThoai.dart';// Import lớp DienThoai
import 'Model/HoaDon.dart';   // Import lớp HoaDon

void main() {
  // Tạo đối tượng DienThoai
  var dienThoai1 = DienThoai('DT-001', 'iPhone 14', 'Apple', 1000, 1200, 50, true);
  var dienThoai2 = DienThoai('DT-002', 'Samsung Galaxy S22', 'Samsung', 800, 1000, 30, true);

  // Tạo đối tượng CuaHang
  var cuaHang = CuaHang('Cửa Hàng Điện Thoại ABC', '123 Đường ABC');

  // Thêm các điện thoại vào cửa hàng
  cuaHang.themDienThoai(dienThoai1);
  cuaHang.themDienThoai(dienThoai2);

  // Hiển thị danh sách điện thoại trong cửa hàng
  cuaHang.hienThiDanhSachDienThoai();

  // Tạo hóa đơn
  var hoaDon1 = HoaDon('HD-001', DateTime.now(), dienThoai1, 2, 1200, 'Nguyễn Văn A', '0901234567');
  var hoaDon2 = HoaDon('HD-002', DateTime.now(), dienThoai2, 1, 1000, 'Lê Thị B', '0909876543');

  // Thêm hóa đơn vào cửa hàng (sử dụng getter)
  cuaHang.danhSachHoaDon.add(hoaDon1);
  cuaHang.danhSachHoaDon.add(hoaDon2);

  // Hiển thị thông tin hóa đơn
  hoaDon1.hienThiThongTin();
  hoaDon2.hienThiThongTin();

  // Thống kê doanh thu trong khoảng thời gian
  DateTime tuNgay = DateTime(2024, 11, 1);
  DateTime denNgay = DateTime(2024, 11, 30);
  double doanhThu = cuaHang.tinhTongDoanhThu(tuNgay, denNgay);
  print('Doanh thu từ $tuNgay đến $denNgay: $doanhThu');
}
