import sys
import json

def generate_html(form):

        f = open("test.html","w+")

        # Opening the HTML tag
        f.write("<HTML> \r\n")

        # Creating the heading
        f.write("<h2> %s </h2> \r\n" % (form['caption']))
        f.write("<form> \r\n\n")

        combinedlist = []
        combinedlist = form['elements']

        for x in combinedlist:
            print(x['etype'])
            if x['etype'] == 'textbox':
                #print('yes')
                f.write(" <label for=%s> %s </label> \n <input type='text' id='%s' name='%s' maxlength='%s' size='%s'><br><br> \n\n" % (x['ename'] , x['caption'],x['ename'],x['ename'],(x['maxlength']),x['size']))
        
        # Closing the HTML tag
        f.write("</form> \r\n")
        f.write("</HTML> \r\n")
           
  
def generate_js(form):
	pass

def generate_sql(form):
	pass

def generate_py(form):
	pass

def generate_display_html(form):
	pass

def main():
  with open(sys.argv[1],'r') as fp:
    form = json.load(fp)
  generate_html(form)
  generate_sql(form)
  generate_js(form)
  generate_py(form)
  generate_display_html(form)

main()