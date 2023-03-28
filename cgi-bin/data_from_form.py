#!/usr/bin/python3
# -*- coding: UTF-8 -*-
 
# enable debugging
import cgitb
cgitb.enable()
 
import sys
import codecs
import cgi
form = cgi.FieldStorage()
 
sys.stdout = codecs.getwriter("utf-8")(sys.stdout.detach())
 
print("Content-Type: text/html; charset=utf-8")
print()
f_name=form["f_name"].value
s_name=form["s_name"].value
sex=form["myradio"].value
job=form["job"].value


print('<br>First name: ',f_name)
print('<br>Second name: ',s_name)
print('<br>Sex: ',sex)
print('<br>Your job is: ',job)