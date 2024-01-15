<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>DS khách hàng</title>
                <style>
                    table{
                    width: 100%;
                    }
                    .title-heading td{
                    padding: 20px;
                    }
                    .title-heading{
                    background: lightblue;
                    }
                </style>
            </head>
            <body>
                <table border="1px" cellspacing="0" cellpadding="10">
                    <tr class="title-heading">
                        <td>Employee_id</td>
                        <td>First_name</td>
                        <td>Last_name</td>
                        <td>Email</td>
                        <td>Phone_number</td>
                        <td>Date</td>
                        <td>Job_id</td>
                        <td>Salary</td>
                        <td>Manager_id</td>
                    </tr>
                    <xsl:for-each select="Employees/Employee">
                        <xsl:if test="Salary &gt; 2500">
                            <tr style="background:#ebebeb">
                                <td><xsl:value-of select="EmployeeId"/></td>
                                <td><xsl:value-of select="FirstName"/></td>
                                <td><xsl:value-of select="LastName"/></td>
                                <td><xsl:value-of select="Email"/></td>
                                <td><xsl:value-of select="PhoneNumber"/></td>
                                <td><xsl:value-of select="Date"/></td>
                                <td><xsl:value-of select="JobId"/></td>
                                <td><xsl:value-of select="Salary"/></td>
                                <td><xsl:value-of select="ManagerId"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>