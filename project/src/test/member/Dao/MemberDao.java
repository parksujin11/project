package test.member.Dao;

public class MemberDao {
	private static MemberDao dao;
	
	private MemberDao() {}
	
	public static MemberDao getInstance() {
		if(dao==null) {
			dao=new MemberDao();
		}
		return dao;
	}
}
