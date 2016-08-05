%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<a href='/new'>New Todo</a>
<p>The open items are as follows:</p>
<table border="1">
%for row in status1:
  <tr>
  %for col in row:
    <td>
	    %if isinstance(col, int):
	    	<a href='/edit/{{col}}'>{{col}}</a>
	    %else:
	    	{{col}}
	    %end
    </td>
  %end
  </tr>
%end
%for row in status2:
  <tr>
  %for col in row:
    <td>
	    %if isinstance(col, int):
	    	<a href='/edit/{{col}}'>{{col}}</a>
	    %else:
	    	<strike>{{col}}</strike>
	    %end
    </td>
  %end
  </tr>
%end
</table>