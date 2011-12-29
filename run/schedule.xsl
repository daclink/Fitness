<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table border="1">
				<tr>
					<th>week</th>
					<th>Monday</th>
					<th>Tuesday</th>
					<th>Wednesday</th>
					<th>Thurday</th>
					<th>Friday</th>
					<th>Saturday</th>
					<th>Sunday</th>
					<th>Week</th>
				 </tr>
				<xsl:for-each select="schedule/week">
					<xsl:variable
						name="weekNum"
						select="@id"/>
					<tr>
						<xsl:attribute name="id">
							<xsl:text>week</xsl:text>
							<xsl:value-of select="$weekNum"/>
						</xsl:attribute>
						<td><xsl:value-of select="$weekNum"/></td>
						<xsl:for-each select="day">
							<xsl:variable
								name="dayNum"
								select="number" />
							<td>
								<xsl:attribute name="id">
									<xsl:value-of select="$weekNum"/>
									<xsl:value-of select="$dayNum"/>
								</xsl:attribute>
								<xsl:value-of select="activity"/>
							</td>
						</xsl:for-each>
					<td><xsl:value-of select="@id"/></td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>