package shoppingApp;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import dao.AccountRegisterDao;
//import model.AccountBeans;

/**
 * Servlet implementation class AccountRegister
 */
@WebServlet("/AccountRegister")
public class AccountRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");

        // register.jspから受け取った値をビーンズにセット
        LoginUserBean bean = new LoginUserBean();
        bean.setName(name);
        bean.setAge(age);
        bean.setId(id);
        bean.setPass(pass);

        // アカウントをDBに登録
        try {
        	AccountRegisterDao ard = new AccountRegisterDao(bean);
        	} catch (SQLException e) {
        	// TODO 自動生成された catch ブロック
        	e.printStackTrace();
        	}

        // セッションにアカウント情報とログイン情報を保存
        HttpSession session = request.getSession();
        session.setAttribute("user_db", bean);
		session.setAttribute("login_db", "login");

        RequestDispatcher rd = request.getRequestDispatcher("./shoppingApp/registerSuccess_boot.jsp");
        rd.forward(request, response);

    }

}
