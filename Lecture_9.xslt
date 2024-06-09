<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Profile</title>
                <!-- Add your awesome CSS styles here -->
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                        margin: 0;
                        padding: 0;
                    }
                    .profile {
                        max-width: 600px;
                        margin: 20px auto;
                        background-color: #fff;
                        padding: 20px;
                        border-radius: 5px;
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                    }
                    h1, h2 {
                        color: #333;
                    }
                    .bio {
                        margin-top: 10px;
                    }
                    .skills {
                        margin-top: 10px;
                    }
                    .skills ul {
                        list-style-type: none;
                        padding: 0;
                    }
                    .skills ul li {
                        display: inline-block;
                        margin-right: 10px;
                        background-color: #007bff;
                        color: #fff;
                        padding: 5px 10px;
                        border-radius: 5px;
                    }
                </style>
            </head>
            <body>
                <div class="profile">
                    <h1><xsl:value-of select="profile/name"/></h1>
                    <h2>Age: <xsl:value-of select="profile/age"/></h2>
                    <div class="bio">
                        <p><xsl:value-of select="profile/bio"/></p>
                    </div>
                    <div class="skills">
                        <h2>Skills:</h2>
                        <ul>
                            <xsl:for-each select="profile/skills/skill">
                                <li><xsl:value-of select="."/></li>
                            </xsl:for-each>
                        </ul>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
