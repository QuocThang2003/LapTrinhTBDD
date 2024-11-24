import 'DienThoai.dart';

class HoaDon {
  // Thuộc tính private
  String _maHoaDon;
  DateTime _ngayBan;
  DienThoai _dienThoai;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _soDienThoaiKhach;

  // Constructor đầy đủ tham số
  HoaDon(this._maHoaDon, this._ngayBan, this._dienThoai, this._soLuongMua,
      this._giaBanThucTe, this._tenKhachHang, this._soDienThoaiKhach);

  // Getter/Setter với validation
  String get maHoaDon => _maHoaDon;
  set maHoaDon(String value) {
    if (value.isNotEmpty && RegExp(r'^HD-\d{3}$').hasMatch(value)) {
      _maHoaDon = value;
    } else {
      throw Exception('Mã hóa đơn không hợp lệ');
    }
  }

  DateTime get ngayBan => _ngayBan;
  set ngayBan(DateTime value) {
    if (value.isBefore(DateTime.now()) || value.isAtSameMomentAs(DateTime.now())) {
      _ngayBan = value;
    } else {
      throw Exception('Ngày bán không được sau ngày hiện tại');
    }
  }

  int get soLuongMua => _soLuongMua;
  set soLuongMua(int value) {
    if (value > 0 && value <= _dienThoai.soLuongTonKho) {
      _soLuongMua = value;
    } else {
      throw Exception('Số lượng mua không hợp lệ');
    }
  }

  double get giaBanThucTe => _giaBanThucTe;
  set giaBanThucTe(double value) {
    if (value > 0) {
      _giaBanThucTe = value;
    } else {
      throw Exception('Giá bán thực tế phải lớn hơn 0');
    }
  }

  // Phương thức tính tổng tiền
  double tinhTongTien() => _soLuongMua * _giaBanThucTe;

  // Phương thức tính lợi nhuận thực tế
  double tinhLoiNhuanThucTe() => _soLuongMua * (_giaBanThucTe - _dienThoai.giaNhap);

  // Phương thức hiển thị thông tin
  void hienThiThongTin() {
    print('Hóa đơn: $_maHoaDon, Ngày bán: $_ngayBan');
    print('Khách hàng: $_tenKhachHang, SĐT: $_soDienThoaiKhach');
    print('Điện thoại: ${_dienThoai.tenDienThoai}, Số lượng: $_soLuongMua');
    print('Tổng tiền: ${tinhTongTien()}, Lợi nhuận: ${tinhLoiNhuanThucTe()}');
  }
}
