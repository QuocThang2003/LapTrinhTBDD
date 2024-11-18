import './Sach.dart';

class DocGia {
  String maDocGia;
  String tenDocGia;
  List<Sach> danhSachMuon = []; //

  DocGia(this.maDocGia, this.tenDocGia);

  void hienThiThongTin() {
    print('Mã độc giả: $maDocGia');
    print('Tên độc giả: $tenDocGia');
    if (danhSachMuon.isEmpty) {
      print('Chưa mượn sách nào.');
      return; // Thoát phương thức sớm nếu không có sách mượn
    }
    
    print('Danh sách sách đã mượn:');
    for (var sach in danhSachMuon) {
      print('- ${sach.tenSach} (${sach.maSach})');
    }
  }

  void muonSach(Sach sach) {
    if (sach.daMuon) {
      print('Sách "${sach.tenSach}" đã được mượn bởi người khác.');
      return; // Thoát phương thức sớm nếu sách đã mượn
    }
    
    danhSachMuon.add(sach);
    sach.daMuon = true;
    print('$tenDocGia đã mượn sách "${sach.tenSach}".');
  }

  void traSach(Sach sach) {
    if (!danhSachMuon.contains(sach)) {
      print('$tenDocGia không mượn sách này.');
      return; // Thoát phương thức sớm nếu không mượn sách
    }

    danhSachMuon.remove(sach);
    sach.daMuon = false;
    print('$tenDocGia đã trả sách "${sach.tenSach}".');
  }
}
void main() {
  // Tạo một số sách mẫu
  var sach1 = Sach('S001', 'Lập trình Dart', 'Nguyễn Văn A');
  var sach2 = Sach('S002', 'Lập trình Flutter', 'Trần Thị B');
  
  // Tạo  độc giả
  var docGia = DocGia('DG001', 'Nguyễn Văn C');


  // Hiển thị thông tin độc giả
  docGia.hienThiThongTin();

  // Độc giả mượn sách
  docGia.muonSach(sach1); 
  docGia.muonSach(sach2);

  // Hiển thị thông tin  khi mượn sách
  docGia.hienThiThongTin();

  // Độc giả trả sách
  docGia.traSach(sach1); 

  // Hiển thị thông tin  khi trả sách
  docGia.hienThiThongTin();
}
