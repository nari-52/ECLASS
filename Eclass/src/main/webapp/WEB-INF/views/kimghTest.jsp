<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
김건ㅈㄷㄱㅈㄷㅈㄷ


@RunWith(SpringJUnit4ClassRunner.class)

public class DataSourceTest {



@Autowired

private DataSource dataSource;



@Test

public void testQuery() throws Exception {

try(Connection conn = dataSource.getConnection()) {

PreparedStatement pstmt = conn.prepareStatement("select to_char(sysdate,'yyyy-mm-dd hh24:mi:ss'), username from user_users");

ResultSet rs = pstmt.executeQuery();

rs.next();

System.out.println("현재시각 : "+rs.getString(1));

System.out.println("사용자명 : "+rs.getString(2));

} catch(Exception e) {

e.printStackTrace();

}

}

}