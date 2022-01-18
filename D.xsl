<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"></link>
		<link rel="stylesheet" href="style.css"/>
	    </head>
		<body>
		<head>
			<h1 style="text-align:center"></h1>
		</head>
		<h1>Employee Management System</h1>
		<table border="2" align="center" class="table">
		<thead class="thead-dark">
		<tr>
		<th>Emp-ID</th>
		<th>Emp-name</th>
		<th>Emp-age</th>
		<th>Emp-salary</th>
		<th>Emp-emailid</th>
		<th>Emp-Phonenum</th>
		<th>Emp-designation</th>
		<th>Promotion</th>
		</tr>
		</thead>
		<xsl:for-each select="Company/Employee">
		<xsl:sort select="Emp-ID"></xsl:sort>
		<tr>
		<td>
		<xsl:value-of select="Emp-ID"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-age"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-salary"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-emailid"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-Phonenum"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp-designation"></xsl:value-of>
		</td>
		<xsl:if test="Emp-age>=50">
			<td>Associate Project Manager</td>
		</xsl:if>
		<xsl:if test="Emp-age &lt; 40">
			<td>Developer</td>
		</xsl:if>
		<xsl:if test="(Emp-age>=40) and (Emp-age &lt;= 49)">
			<td>Team Leader</td>
		</xsl:if>
		</tr>
		</xsl:for-each>
		</table>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>