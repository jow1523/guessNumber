<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<f:loadBundle basename="game.messages" var="msg"/>

<html>
 <head>
    <title>inputnumber.jsp</title>
 </head>
 <body>
     <f:view>
      <h:form id="inputNumbers">
       <p>
         <h:outputText value="#{msg.how_to_play}"/>
       </p>
       <p>
         <h:messages style="color: blue"/>
       </p>
       <p>
         <h:inputText value="#{numberBean.userNumber}" required="true">
           <f:validateLongRange minimum="0" maximum="20"/>
         </h:inputText>
         <h:commandButton value="#{msg.makeguess_button}" action="#{numberBean.checkGuess}"/>
       </p>
      </h:form>
    </f:view>
 </body>
</html>