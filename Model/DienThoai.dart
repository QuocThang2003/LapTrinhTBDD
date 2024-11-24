class DienThoai {
  // Thuộc tính private
  String _maDienThoai;
  String _tenDienThoai;
  String _hangSanXuat;
  double _giaNhap;
  double _giaBan;
  int _soLuongTonKho;
  bool _trangThai;

  // Constructor đầy đủ tham số
  DienThoai(this._maDienThoai, this._tenDienThoai, this._hangSanXuat,
      this._giaNhap, this._giaBan, this._soLuongTonKho, this._trangThai);

  // Getter/Setter với validation
  String get maDienThoai => _maDienThoai;
  set maDienThoai(String value) {
    if (value.isNotEmpty && RegExp(r'^DT-\d{3}$').hasMatch(value)) {
      _maDienThoai = value;
    } else {
      throw Exception('Mã điện thoại không hợp lệ');
    }
  }

  String get tenDienThoai => _tenDienThoai;
  set tenDienThoai(String value) {
    if (value.isNotEmpty) {
      _tenDienThoai = value;
    } else {
      throw Exception('Tên điện thoại không được rỗng');
    }
  }

  String get hangSanXuat => _hangSanXuat;
  set hangSanXuat(String value) {
    if (value.isNotEmpty) {
      _hangSanXuat = value;
    } else {
      throw Exception('Hãng sản xuất không được rỗng');
    }
  }

  double get giaNhap => _giaNhap;
  set giaNhap(double value) {
    if (value > 0) {
      _giaNhap = value;
    } else {
      throw Exception('Giá nhập phải lớn hơn 0');
    }
  }

  double get giaBan => _giaBan;
  set giaBan(double value) {
    if (value > _giaNhap) {
      _giaBan = value;
    } else {
      throw Exception('Giá bán phải lớn hơn giá nhập');
    }
  }

  int get soLuongTonKho => _soLuongTonKho;
  set soLuongTonKho(int value) {
    if (value >= 0) {
      _soLuongTonKho = value;
    } else {
      throw Exception('Số lượng tồn kho không được âm');
    }
  }

  bool get trangThai => _trangThai;
  set trangThai(bool value) => _trangThai = value;

  // Phương thức tính lợi nhuận dự kiến
  double tinhLoiNhuanDuKien() => _giaBan - _giaNhap;

  // Phương thức kiểm tra có thể bán
  bool coTheBan() => _soLuongTonKho > 0 && _trangThai;

  // Phương thức hiển thị thông tin
  void hienThiThongTin() {
    print('Mã: $_maDienThoai, Tên: $_tenDienThoai, Hãng: $_hangSanXuat');
    print('Giá nhập: $_giaNhap, Giá bán: $_giaBan, Tồn kho: $_soLuongTonKho');
    print('Trạng thái: ${_trangThai ? "Còn kinh doanh" : "Ngừng kinh doanh"}');
    print('Lợi nhuận dự kiến: ${tinhLoiNhuanDuKien()}');
  }
}
