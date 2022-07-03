package connect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import object.Tien;

public class Dao {
	Connetct cn = new Connetct();
	Connection conn = cn.getConnection();
	Connetct2 cn1 = new Connetct2();
	Connection conn1 = cn1.getConnection();

	public void taoB(String a) {
		try {
			String sql8 = "DROP TABLE yy;";
			PreparedStatement stm = conn1.prepareStatement(sql8);
			stm = conn1.prepareStatement(sql8);
			stm.execute();
		} catch (SQLException e3) {
			// TODO Auto-generated catch block
			e3.printStackTrace();
		}

		try {
			String sql4 = "CREATE TABLE yy( l VARCHAR(100)) ENGINE = InnoDB";
			PreparedStatement stm = conn1.prepareStatement(sql4);
			stm = conn1.prepareStatement(sql4);
			stm.execute();
		} catch (SQLException e3) {
			// TODO Auto-generated catch block
			e3.printStackTrace();
		}
		try {
			String sql = "insert into yy(l) values(?)";
			PreparedStatement stm = conn1.prepareStatement(sql);
			stm.setString(1, a);
			stm.execute();
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
	}

	public String layUser() {
		String sql = "SELECT * from yy";
		String t = null;
		PreparedStatement stm;
		try {
			stm = conn1.prepareStatement(sql);
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				t = rs.getString(1);

			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return t;
	}

	public Vector checkLogin(String u, String p) throws SQLException {
		String query = " select taikhoan, matkhau, vaitro from nguoidung " + "where taikhoan=? and matkhau=?";
		try (

				Connection conn = cn.getConnection();
				PreparedStatement stm = conn.prepareStatement(query);) {
			stm.setString(1, u);
			stm.setString(2, p);
			try {
				ResultSet rs = stm.executeQuery();
				while (rs.next()) {
					Vector a = new Vector();
					a.add(rs.getString(1));
					a.add(rs.getString(2));
					a.add(rs.getString(3));
					return a;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	public Vector list() {
		Vector vD = new Vector();
		String sql = "SELECT hocvien.mahv, tenhv, tenkh, ngayvaohoc,sdt, thangnop, nopthang, sotien, image FROM nophocphi right join hocvien on nophocphi.mahv= hocvien.mahv"
				+ " inner join khoahoc on khoahoc.makh= hocvien.makh order by   mahv asc, nopthang asc";
		PreparedStatement stm;
		try {
			stm = conn.prepareStatement(sql);
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				Vector t1 = new Vector();
				t1.add(rs.getString(1));
				t1.add(rs.getString(2));
				t1.add(rs.getString(3));
				t1.add(rs.getString(4));
				t1.add(rs.getString(5));
				t1.add(rs.getString(6));
				t1.add(rs.getInt(7));
				t1.add(rs.getInt(8));
				t1.add(rs.getString(9));
				vD.add(t1);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vD;
	}

	public Vector danhSach(String a, String b, String c, String d, String e, String f, String g) {
		Vector vD = new Vector();
		String sql = "SELECT hocvien.mahv, tenhv, tenkh, ngayvaohoc,sdt, thangnop, nopthang, sotien, image "
				+ "FROM nophocphi right join hocvien on nophocphi.mahv= hocvien.mahv "
				+ "inner join khoahoc on khoahoc.makh= hocvien.makh WHERE hocvien.mahv like ? "
				+ "and tenhv like ? and tenkh like ? and ngayvaohoc like ? and sdt like ? and thangnop like ? and nopthang like ?";
		PreparedStatement stm;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, "%" + a + "%");
			stm.setString(2, "%" + b + "%");
			stm.setString(3, "%" + c + "%");
			stm.setString(4, "%" + d + "%");
			stm.setString(5, "%" + e + "%");
			stm.setString(6, "%" + f + "%");
			stm.setString(7, "%" + g + "%");
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				Vector t1 = new Vector();
				t1.add(rs.getString(1));
				t1.add(rs.getString(2));
				t1.add(rs.getString(3));
				t1.add(rs.getString(4));
				t1.add(rs.getString(5));
				t1.add(rs.getString(6));
				t1.add(rs.getInt(7));
				t1.add(rs.getInt(8));
				t1.add(rs.getString(9));
				vD.add(t1);
			}

		} catch (SQLException e22) {
			// TODO Auto-generated catch block
			e22.printStackTrace();
		}
		return vD;
	}

	public Vector listHV() {
		String sqly = "SELECT * FROM hocvien";
		PreparedStatement stmy;
		Vector vD2 = new Vector();
		try {
			stmy = conn.prepareStatement(sqly);
			ResultSet rs = stmy.executeQuery();
			while (rs.next()) {
				Vector t = new Vector();
				t.add(rs.getString(1));
				t.add(rs.getString(2));
				t.add(rs.getString(3));
				t.add(rs.getString(4));
				t.add(rs.getString(5));
				String sql4 = "SELECT sum(sotien) from nophocphi where mahv = '" + rs.getString(1) + "' ";
				PreparedStatement stm4;
				stm4 = conn.prepareStatement(sql4);
				ResultSet rs1 = stm4.executeQuery();
				if (rs1.next())
					t.add(rs1.getString(1));
				else
					t.add("0");

				vD2.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vD2;
	}

	public Vector hv(String u) {
		String sqly = "SELECT * FROM `hocvien` WHERE mahv=?";
		PreparedStatement stmy;
		Vector vD2 = new Vector();
		try {
			stmy = conn.prepareStatement(sqly);
			stmy.setString(1, u);
			ResultSet rs = stmy.executeQuery();
			if (rs.next()) {
				Vector t = new Vector();
				t.add(rs.getString(1));
				t.add(rs.getString(2));
				t.add(rs.getString(3));
				t.add(rs.getString(4));
				t.add(rs.getString(5));
				vD2.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vD2;
	}

	public void add(String a, String b, String c, String d, String e) {
		try {
			String sql = "insert into hocvien(mahv, tenhv, sdt, ngayvaohoc, makh) values(?,?,?,?,?)";
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, a);
			stm.setString(2, b);
			stm.setString(3, c);
			stm.setString(4, d);
			stm.setString(5, e);
			stm.execute();
			String sql2 = "insert into nguoidung(taikhoan, matkhau, vaitro) values(?,?,?)";
			PreparedStatement lll = conn.prepareStatement(sql2);
			lll.setString(1, a);
			lll.setString(2, a);
			lll.setString(3, "hocvien");
			lll.execute();
			System.out.println("da them");
		} catch (Exception e2) {
			// TODO: handle exception
		}

	}

	public Vector nopHocPhi(String u) {
		Vector vD = new Vector();
		String sql1 = "SELECT *  FROM nophocphi where mahv ='" + u + "'";
		PreparedStatement stm1;
		try {
			stm1 = conn.prepareStatement(sql1);
			ResultSet rs = stm1.executeQuery();
			while (rs.next()) {

				Vector t1 = new Vector();
				t1.add(rs.getString(1));
				t1.add(rs.getString(2));
				t1.add(rs.getInt(3));
				t1.add(rs.getInt(4));
				t1.add(rs.getString(5));
				vD.add(t1);

			}

		} catch (SQLException e9) {
			// TODO Auto-generated catch block
			e9.printStackTrace();
		}
		return vD;
	}

	public void luuNop(String u, String a, String b, String c) {
		try {
			String sql = "insert into nophocphi values(?,CURDATE(),?,?,?)";
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, u);
			stm.setInt(2, Integer.parseInt(a));
			stm.setInt(3, Integer.parseInt(b));
			stm.setString(4, c);
			stm.execute();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	public boolean delete(String a) {
		try {

			String sql = "DELETE FROM hocvien WHERE mahv =(?)";
			PreparedStatement stm = conn.prepareStatement(sql);

			stm.setString(1, a);

			System.out.println(a);
			stm.executeUpdate();
			String sql8 = "DELETE FROM nguoidung WHERE taikhoan =(?)";
			PreparedStatement stm8 = conn.prepareStatement(sql8);

			stm8.setString(1, a);
			stm8.executeUpdate();
			System.out.println("Đã xóa.");
			return true;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			// JOptionPane.showMessageDialog(null, e1.getMessage(),"Lỗi",
			// JOptionPane.ERROR_MESSAGE);
		}
		return false;
	}

	public boolean Update(String a, String b, String c, String d, String e) {
		String query = "update hocvien set mahv = ?, tenhv=?, sdt=?, ngayvaohoc=?," + " makh=?  where mahv = '" + a
				+ "'";
		PreparedStatement stm1;
		try {
			stm1 = conn.prepareStatement(query);
			stm1.setString(1, a);
			stm1.setString(2, b);
			stm1.setString(3, c);
			stm1.setString(4, d);
			stm1.setString(5, e);
			stm1.executeUpdate();
			return true;
		} catch (SQLException e9) {
			// TODO Auto-generated catch block
			e9.printStackTrace();
		}
		return false;
	}

	public Vector hvcnhp() {
		String sql = "SELECT * from hocvien where mahv not in (SELECT mahv from nophocphi)";
		PreparedStatement stm;
		Vector vD1 = new Vector();
		try {
			stm = conn.prepareStatement(sql);
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				Vector t1 = new Vector();
				t1.add(rs.getString(1));
				t1.add(rs.getString(2));
				t1.add(rs.getString(3));
				t1.add(rs.getString(4));
				t1.add(rs.getString(5));
				String sql4 = "SELECT sum(sotien) from nophocphi where mahv = '" + rs.getString(1) + "' ";
				PreparedStatement stm4;
				stm4 = conn.prepareStatement(sql4);
				ResultSet rs1 = stm4.executeQuery();
				if (rs1.next())
					t1.add(rs1.getString(1));
				else
					t1.add("0");
				String sql5 = "SELECT mail from phuhuynh where mahv = '" + rs.getString(1) + "' ";
				PreparedStatement stm5;
				stm5 = conn.prepareStatement(sql5);
				ResultSet rs2 = stm5.executeQuery();
				if (rs2.next())
					t1.add(rs2.getString(1));
				else
					t1.add("0");
				vD1.add(t1);
			}
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		return vD1;
	}

	public int layTien(String u) {
		String sqlq = "SELECT hocphi from khoahoc inner join hocvien on hocvien.makh=khoahoc.makh where mahv = '" + u
				+ "'";
		PreparedStatement stmq;
		int q = 0;
		Tien t = new Tien();
		try {
			stmq = conn.prepareStatement(sqlq);
			ResultSet rs = stmq.executeQuery();
			while (rs.next()) {
				q = rs.getInt(1);

			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return q;

	}

	public Vector tong(String a, String b) {
		String sql = "SELECT khoahoc.makh, tenkh, sum(sotien) FROM nophocphi "
				+ "right join hocvien on nophocphi.mahv= hocvien.mahv inner join khoahoc on khoahoc.makh= hocvien.makh "
				+ "WHERE thangnop>=? and thangnop<=? GROUP BY khoahoc.makh, tenkh";
		PreparedStatement stm;
		Vector vD1 = new Vector();
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, a);
			stm.setString(2, b);
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				Vector t1 = new Vector();
				t1.add(rs.getString(1));
				t1.add(rs.getString(2));
				t1.add(rs.getString(3));
				vD1.add(t1);
			}
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		return vD1;
	}

	public long total(String a, String b) {
		int t = 0;
		String sql4 = "SELECT sum(sotien) FROM `nophocphi` WHERE thangnop>=? and thangnop<=?";
		PreparedStatement stm4;
		try {
			stm4 = conn.prepareStatement(sql4);
			stm4.setString(1, a);
			stm4.setString(2, b);
			ResultSet rs = stm4.executeQuery();
			while (rs.next()) {

				t = rs.getInt(1);
			}
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		return t;
	}
//	SELECT hocvien.mahv, tenhv, tenkh, ngayvaohoc,sdt, thangnop, 
//	nopthang, sotien, image FROM nophocphi right join hocvien on nophocphi.mahv=
//			hocvien.mahv inner join khoahoc on khoahoc.makh= hocvien.makh WHERE hocvien.mahv like '%a%' and sdt like '%9%'
}
