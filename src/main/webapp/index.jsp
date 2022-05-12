<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <title>
        Css e Form
    </title>
    <link rel="stylesheet" type="text/css" href="estilo.css"/>
</head>
<body class="body2">
<%
    out.print("@paulo veloso");

%>

<h1 class="texth1">
    Peso do Auxilio Brasil-Posto  Novo Mundo
    <div class="area">

        <form id="fo" action="Persitencia.jsp" method="get">
            <fieldset><legend id ="legenda">Cadastro</legend>
                <table border="2">
                    <tr border="1" class="tr1">
                        <td>NOME </td>
                        <td>CADSUS </td>
                        <td>DATANASC </td>
                        <td> MÃE</td>
                        <td>PESO </td>
                        <td>ALTURA </td>
                    </tr>

                    <tr border="1">
                        <td width="300"><input type="text" name="nome" size="30" required></td>
                        <td><input type="text" name="cadsus"size="16"></td>
                        <td><input type="text" name="datanasc"size="9"></td>
                        <td><input type="text" name="mae"size="30"></td>
                        <td><input type="text" name="altura"size="4"></td>
                        <td><input type="text" name="peso"size="4"></td>
                    </tr>
                </table>
                <input class="bt" type="submit">
            </fieldset>


        </form>
          <form action="Persitencia.jsp">
              <input type="submit" value="Ver Relação de Crianças " name="Ver Peso Feito" class="bt">
          </form>
    </div>
</h1>

</body>

</html>