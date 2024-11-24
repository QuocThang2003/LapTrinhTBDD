import 'DienThoai.dart';
import 'HoaDon.dart';

class CuaHang {
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];

  // Constructor
  CuaHang(this._tenCuaHang, this._diaChi);

  // Getter for danhSachHoaDon
  List<HoaDon> get danhSachHoaDon => _danhSachHoaDon;

  // Phương thức thêm điện thoại
  void themDienThoai(DienThoai dienThoai) => _danhSachDienThoai.add(dienThoai);

  // Phương thức hiển thị danh sách điện thoại
  void hienThiDanhSachDienThoai() {
    print('Danh sách điện thoại:');
    for (var dt in _danhSachDienThoai) {
      dt.hienThiThongTin();
    }
  }

  // Thống kê doanh thu theo thời gian
  double tinhTongDoanhThu(DateTime tuNgay, DateTime denNgay) {
    return _danhSachHoaDon
        .where((hd) => hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay))
        .map((hd) => hd.tinhTongTien())
        .reduce((a, b) => a + b);
  }

  // Phương thức hiển thị tên cửa hàng
  void hienThiTenCuaHang() {
    print('Tên cửa hàng: $_tenCuaHang');
  }

  // Phương thức hiển thị địa chỉ cửa hàng
  void hienThiDiaChi() {
    print('Địa chỉ cửa hàng: $_diaChi');
  }
}
