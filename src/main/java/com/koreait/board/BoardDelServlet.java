package com.koreait.board;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/del")
public class BoardDelServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String strIboard = req.getParameter("iboard");
        int ibaord = Integer.parseInt(strIboard);

        BoardVO param = new BoardVO();

        param.setIboard(ibaord);

        int result = BoardDAO.delBoard(param);

        switch (result) {
            case 1:
                res.sendRedirect("list");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }
}
