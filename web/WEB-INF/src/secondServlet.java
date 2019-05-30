import entity.account;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class secondServlet extends HttpServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("GBK");
        response.setContentType("text/html;charset=utf-8");

        String name = request.getParameter("name");
        PrintStream stream = new PrintStream(response.getOutputStream());
        stream.println("<html>");
        stream.println("<head>");
        stream.println("<title>secondServlet</title>");
        stream.println("</head>");
        stream.println("<body>");
        stream.println("yong hu ming:" + name);
        stream.println("<body>");
        stream.println("<html>");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        account account = new account();
        String username, password, sex, email;
        Date date;
        String[] inst;
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日");
        try {
            username = request.getParameter("username");
            password = request.getParameter("password");
            sex = request.getParameter("sex");
            email = request.getParameter("email");
            date = dateFormat.parse(request.getParameter("date"));
            inst = request.getParameterValues("inst");
            account.setUsername(username);
            account.setPassword(password);
            account.setSex(sex);
            account.setEmail(email);
            account.setDate(date);
            account.setInst(inst);

            //把注册信息保存在session中
//            request.getSession().getAttribute()
            // 页面跳转
            request.getRequestDispatcher("../index.jsp").forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
