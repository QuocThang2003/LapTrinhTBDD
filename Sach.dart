class Sach {
  // Thuộc tính
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool _daMuon;

  // Constructor
  Sach(this._maSach, this._tenSach, this._tacGia, [this._daMuon = false]);

  // Getter
  String get maSach => _maSach;
  String get tenSach => _tenSach;
  String get tacGia => _tacGia;
  bool get daMuon => _daMuon;

  // Setter
  set maSach(String maSach) {
    if (maSach.isNotEmpty) {
      _maSach = maSach;
    }
  }

  set tenSach(String tenSach) {
    if (tenSach.isNotEmpty) {
      _tenSach = tenSach;
    }
  }

  set tacGia(String tacGia) {
    if (tacGia.isNotEmpty) {
      _tacGia = tacGia;
    }
  }

  set daMuon(bool daMuon) {
    _daMuon = daMuon;
  }

  // Phương thức hiển thị thông tin
  void hienThiThongTin() {
    print('Mã sách: $_maSach');
    print('Tên sách: $_tenSach');
    print('Tác giả: $_tacGia');
    print('Trạng thái: ${_daMuon ? 'Đã mượn' : 'Chưa mượn'}');
  }
}

void main() {
  var sach = Sach('S001', 'Lập trình Dart', 'Nguyễn Văn A');
  sach.hienThiThongTin(); 
}
