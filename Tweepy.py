from tkinter import *
root=Tk()
l1=Label(root,text="Enter Number 1:")
l1.pack()
t1=Entry(root,bd="3")
t1.pack()
l2=Label(root,text="Enter Number 2:")

l2.pack()
t2=Entry(root,bd="3")
t2.pack()

def addNumber():
    a=int(t1.get())
    b=int(t2.get())
    c=a+b
    print("Addition of two NOS:",c)

b1=Button(root,text="Addition",fg="red",bg="green",command=addNumber)
b1.pack()
root.mainloop()
