# pip install pyttsx3
# pip install PyPDF2

import pyttsx3
import PyPDF2

pdf_book = open("python.pdf", "rb")
reading_pdf = PyPDF2.PdfReader(pdf_book)
pdf_pages = reading_pdf.numPages

pdf_speaker = pyttsx3.init()
choose_page = reading_pdf.getPage(0)
pdf_text = choose_page.extractText()
pdf_speaker.say(pdf_text)
pdf_speaker.runAndWait()