import turtle
import datetime
turtle.setup()
turtle.speed(20)
turtle.left(60)
turtle.penup()
for i in range(1, 13):
    turtle.forward(150)
    turtle.write(i, align="center", font=('Arial', 20, 'normal'))
    turtle.right(180)
    turtle.forward(150)
    turtle.right(210)

# środek zegara
turtle.goto(0, 15)
turtle.pendown()
turtle.left(30)
strzalkaGodzina = turtle.Turtle()
strzalkaGodzina.left(90)
strzalkaGodzina.goto(0, 15)
strzalkaGodzina.shape("arrow")
strzalkaGodzina.shapesize(stretch_wid=0.4, stretch_len=6)
strzalkaMinuta = turtle.Turtle()
strzalkaMinuta.left(90)
strzalkaMinuta.goto(0, 15)
strzalkaMinuta.shape("arrow")
strzalkaMinuta.shapesize(stretch_wid=0.4, stretch_len=10)
strzalkaSekunda = turtle.Turtle()
strzalkaSekunda.left(90)
strzalkaSekunda.goto(0, 15)
strzalkaSekunda.shape("arrow")
strzalkaSekunda.color("red")
strzalkaSekunda.shapesize(stretch_wid=0.4, stretch_len=12)
while True:
    godzina = datetime.datetime.now().hour
    minuta = datetime.datetime.now().minute
    sekunda = datetime.datetime.now().second
    strzalkaGodzina.setheading(90 - godzina * 30 - 0.5 * minuta)
    strzalkaMinuta.setheading(90 - minuta * 6)
    strzalkaSekunda.setheading(90 - sekunda * 6)
turtle.done()
