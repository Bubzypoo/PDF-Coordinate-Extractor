Run Pdfextractor.exe

Choose folder where PDFs are located

Choose where you would like to save excel and the name of the excel

Run 

Depending on amount of PDFs the process can take 5 - 10 minutes

Once complete the excel should contain the PDF file and the coordinate UP/DOWN values copied from them.


NOTE:
Save crops function -
If selected the crops made of the PDF fields that are being made will be saved into the /Temp/ folder in the install directory.
This is only used for debugging purposes if the coordinates are failing to be gathered. Leave off to save disk space.


KNOWN ISSUES:
Extractor will only extract data from A3 V1 - V5 IDS title block.
If the A3 PDF is also printed to the incorrect size it will also fail.
Extractor works by cropping the UP and DOWN location into an image then reading the data from those images.