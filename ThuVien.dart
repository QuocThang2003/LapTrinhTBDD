import './Sach.dart';
import './DocGia.dart';

class ThuVien {
  List<Sach> _danhSachSach = []; // Danh sách sách trong thư viện
  List<DocGia> _danhSachDocGia = []; // Danh sách độc giả trong thư viện

  // Getter cho danh sách sách và độc giả
  List<Sach> get danhSachSach => _danhSachSach;
  List<DocGia> get danhSachDocGia => _danhSachDocGia;

  // Phương thức thêm sách vào thư viện
  void themSach(Sach sach) {
    _danhSachSach.add(sach);
    print('Sách "${sach.tenSach}" đã được thêm vào thư viện.');
  }

  // Phương thức thêm độc giả vào thư viện
  void themDocGia(DocGia docGia) {
    _danhSachDocGia.add(docGia);
    print('Độc giả "${docGia.tenDocGia}" đã được thêm vào thư viện.');
  }

  // Phương thức hiển thị danh sách sách trong thư viện
  void hienThiDanhSachSach() {
    print('Danh sách sách trong thư viện:');
    if (_danhSachSach.isEmpty) {
      print('Thư viện hiện không có sách nào.');
    } else {
      for (var sach in _danhSachSach) {
        sach.hienThiThongTin();
      }
    }
  }
}
void main() {
  // Tạo các đối tượng sách
  var sach1 = Sach('S001', 'Lập trình Dart', 'Nguyễn Văn A');
  var sach2 = Sach('S002', 'Lập trình Flutter', 'Trần Thị B');
  var sach3 = Sach('S003', 'Lập trình Web với HTML, CSS', 'Lê Văn C');

  // Tạo các đối tượng độc giả
  var docGia1 = DocGia('DG001', 'Nguyễn Văn D');
  var docGia2 = DocGia('DG002', 'Trần Thị E');

  // Tạo đối tượng thư viện
  var thuVien = ThuVien();

  // Thêm sách vào thư viện
  thuVien.themSach(sach1);
  thuVien.themSach(sach2);
  thuVien.themSach(sach3);

  // Thêm độc giả vào thư viện
  thuVien.themDocGia(docGia1);
  thuVien.themDocGia(docGia2);

  // Hiển thị danh sách sách trong thư viện
  thuVien.hienThiDanhSachSach();
  
  // Độc giả mượn sách
  docGia1.muonSach(sach1);
  docGia2.muonSach(sach2);

  // Hiển thị thông tin sau khi mượn sách
  docGia1.hienThiThongTin();
  docGia2.hienThiThongTin();
}
