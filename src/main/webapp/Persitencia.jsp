<%@ page contentType="text/html;charset=UTF-8" language="java"

%>

<%@page language="java"
        import="com.example.Conexao.conecta.Conectabd"
%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Persitencia de Dados</title>
    <link rel="stylesheet"type="text/css" href="estilo.css"/>
</head>
<body class="corpo1">
<div class="divisao1">
 <form action="index.jsp">
     <input type="submit" value="Voltar Para o Cadastro" class="bt">
 </form>


    <%
        String nome = request.getParameter("nome");
        String cadsus = request.getParameter("cadsus");
        String datanasc = request.getParameter("datanasc");
        String mae = request.getParameter("mae");
        String peso = request.getParameter("peso");
        String altura = request.getParameter("altura");
        PreparedStatement stm = null;
        try {
            Connection con = Conectabd.getConnection();
            String sql = "insert into cad values (?,?,?,?,?,?)";
            stm = con.prepareStatement(sql);

            stm.setString(1, nome);
            stm.setString(2, cadsus);
            stm.setString(3, datanasc);
            stm.setString(4, mae);
            stm.setString(5, peso);
            stm.setString(6, altura);
            stm.execute();
            out.print("<br>");
            out.print("@copyrightPauloVeloso");
        } catch (SQLException e1) {

            out.print("Erro de Conexao" + e1);
        }

        %>

    <%



        String sql2 = "select * from cad order by nome asc ";

        ResultSet rs = stm.executeQuery(sql2);

    %>



    </div>

  <div class="area">




      <fieldset class="pgdoisw"><legend id ="legenda"><h1>Crianças no Cadastro</h1></legend>
          <table border="2" width="1260px" height="400px">
              <tr border="1" class="tr1">
                  <td>NOME </td>
                  <td>CADSUS </td>
                  <td>DATANASC </td>
                  <td> MÃE</td>
                  <td>PESO </td>
                  <td>ALTURA </td>
              </tr>
             <%
                  try {
                      while (rs.next()) {

                          out.print("<tr class =\"fon\">");
                          out.print("<td>" + rs.getString(1) + "</td>");
                          out.print("<td>" + rs.getString(2) + "</td>");
                          out.print("<td>" + rs.getString(3) + "</td>");
                          out.print("<td>" + rs.getString(4) + "</td>");
                          out.print("<td>" + rs.getString(5) + "</td>");
                          out.print("<td>" + rs.getString(6) + "</td>");
                          out.print("</tr>");
                      }
                      rs.close();
                      stm.close();
                  }catch (SQLException e) {
                      e.printStackTrace();
                  }

             %>

          </table>
      </fieldset>
  </div>


</body>
</html>
