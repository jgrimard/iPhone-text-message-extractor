# iPhone-text-message-extractor
Extract text messages to CSV from an unencrypted iPhone backup

This is a small tool/script I created for a friend.  I figured I should share it if anyone else needs this.

## Usage
sqlite3.exe can be downloaded from here or directly from https://www.sqlite.org/download.html

1. Find the file named 3d0d7e5fb2ce288813306e4d4636395e047a3d28.db in your unencrypted iPhone backup folder and copy to the folder with sql.sql, extract.bat and sqlite3.exe  
2. Run extract.bat
3. A file named export.csv will be created will all text messages, sorted by chat id.

### If you want to open the CSV file in Excel with correct formatting and emojis:
1. Open Excel from the start menu and create a new file
2. Click Data - From Text/CSV
3. Find the export.csv file you created above.
4. Change the "File Origin" setting to 65001: Unicode (UTF-8)
5. Click Load
6. Turn on wrap text on the message_text column
