from pdf2docx import Converter

pdf_file = './policy-procedure-service-termination.pdf'
docx_file = './policy-procedure-service-termination.docx'

# convert pdf to docx
cv = Converter(pdf_file)
cv.convert(docx_file, start=0, end=None)
cv.close()
