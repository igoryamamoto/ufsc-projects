''' Projeto Python - Disciplina de Introdução à informática para Automação
    Ígor Assis Rocha Yamamoto, Turma 01220B
    Florianópolis, Maio de 2014.'''
from turtle import *
from random import randint, shuffle,choice
from time import sleep
title('Slot Machine')
bgpic('fundo.gif')
tracer(1,0)
speed(0)

'''Imagens'''
roda1, roda2, roda3 = [], [], []
n = 5 #Número de imagens diferentes usadas(criado para facilmente mudar o número desejado)
total = 10 # Número de tartarugas criada no total em cada roda
for i in range(n):
    register_shape('img%s.gif'%i) #registra as n imagens 
for i in range(total): #adiciona tartarugas às rodas, para posteriormente aumentar a probabilidade de sairem as combinaçoes
    roda1.append(Turtle())
    roda2.append(Turtle())
    roda3.append(Turtle())
rodas = [roda1,roda2,roda3]

'''Setas/botao/tartarugas auxiliares
Aqui sao registrados as shapes do botao e
das setas, e sao criadas as tartarugas encarregadas de escrever
os dados no painel do jogo'''
register_shape('botao1.gif'), register_shape('botao2.gif')
register_shape('seta1.gif'), register_shape('seta2.gif')
s1,s2,s3 = Turtle(),Turtle(),Turtle()
s = [s1,s2,s3]
botao = Turtle()
botao.shape('botao1.gif'),botao.up(), botao.setx(250)
s1.shape('seta1.gif'), s2.shape('seta2.gif'), s3.shape('seta1.gif')
for j in range(len(s)):
    s[j].up()
    s[j].turtlesize(4)
    s[j].goto(-250, 100 - 100*j)
tart_cred = Turtle()
tart_aposta = Turtle()
tart_ganho = Turtle()
tc, ta, tg = tart_cred, tart_aposta, tart_ganho
tc.color('green'),ta.color('green'),tg.color('green')

'''Função que cria as rodas, associando as figuras registradas às tartarugas
da lista criada anteriormente.
Esta função é muito importante para definir as probabilidades'''
def reel(x,r):
    r[0].shape('img0.gif')     
    for i,t in enumerate(r):
        t.up(), t.ht(), t.setx(x), t.lt(90)
        if i in range(0,1):
            t.shape('img0.gif')
        elif i in range(1,3):
            t.shape('img1.gif')
        elif i in range(3,5):
            t.shape('img2.gif')
        elif i in range(5,7):
            t.shape('img3.gif')
        elif i in range(7,10):
            t.shape('img4.gif')
        elif i in range(10,13):
            t.shape('img5.gif')
        t.st()
    shuffle(r)
    for i,t in enumerate(r):
        t.sety(-100*i+200)
        y = t.ycor()
        if y>110 or y<-110:
            t.ht()
        
'''Regras do Jogo'''
ganho = 0
cred = 500
def checar_acerto(a1,a2,a3,b1,b2,b3,c1,c2,c3):
    global cred
    global ganho
    ganho = 0
    if s1.shape() == 'seta2.gif' and s3.shape() == 'seta2.gif':
        fator = 0.2
        cred -= 20
    elif s1.shape() == 'seta2.gif' or s3.shape() == 'seta2.gif':
        fator = 0.6
        cred -= 15
    else:
        fator = 1
        cred -= 10
    if a2 == b2 and b2 == c2:
        checar_pont(a2,fator)
    if s1.shape() == 'seta2.gif' and a1 == b1 and b1 == c1:
        checar_pont(a1,fator)
    if s3.shape() == 'seta2.gif' and a3 == b3 and b3 == c3:
        checar_pont(a3,fator)    
    if (a2=='img1.gif' and b2=='img1.gif' and c2=='img3.gif') or (a2=='img1.gif' and b2=='img3.gif' and c2=='img1.gif') or\
       (a2=='img3.gif' and b2=='img1.gif' and c2=='img1.gif') or (a2=='img3.gif' and b2=='img3.gif' and c2=='img1.gif') or\
       (a2=='img3.gif' and b2=='img1.gif' and c2=='img3.gif') or (a2=='img1.gif' and b2=='img3.gif' and c2=='img3.gif'):
        write('Combo Jama Cury',False,'center',('PixelBreack',30,'normal'))
        sleep(2), clear()
        ganho += int(25*fator)
    if (a1=='img1.gif' and b1=='img1.gif' and c1=='img3.gif') or (a1=='img1.gif' and b1=='img3.gif' and c1=='img1.gif') or\
       (a1=='img3.gif' and b1=='img1.gif' and c1=='img1.gif') or (a1=='img3.gif' and b1=='img3.gif' and c1=='img1.gif') or\
       (a1=='img3.gif' and b1=='img1.gif' and c1=='img3.gif') or (a1=='img1.gif' and b1=='img3.gif' and c1=='img3.gif'):
        write('Combo Jama Cury',False,'center',('PixelBreack',30,'normal'))
        sleep(2), clear()
        ganho += int(25*fator)
    if (a2=='img1.gif' and b3=='img1.gif' and c3=='img3.gif') or (a3=='img1.gif' and b3=='img3.gif' and c3=='img1.gif') or\
       (a2=='img3.gif' and b3=='img1.gif' and c3=='img1.gif') or (a3=='img3.gif' and b3=='img3.gif' and c3=='img1.gif') or\
       (a2=='img3.gif' and b3=='img1.gif' and c3=='img3.gif') or (a3=='img1.gif' and b3=='img3.gif' and c3=='img3.gif'):
        write('Combo Jama Cury',False,'center',('PixelBreack',30,'normal'))
        sleep(2), clear()
        ganho += int(25*fator)
    cred += ganho
    atualizar_ganho(ganho)
    atualizar_creditos()
    
def checar_pont(img,fator):
    global ganho
    global cred
    if img == 'img0.gif':
        write('Becker',False,'center',('PixelBreack',47,'normal'))
        sleep(2), clear()
        if fator == 1:
            ganho += 1000
        elif fator == 0.6:
            ganho += 800
        elif fator == 0.2:
            ganho += 600
    elif img == 'img1.gif':
        color('red')
        write('GAME OVER',False,'center',('PixelBreack',47,'normal'))
        sleep(2), clear()
        cred = 0
    elif img == 'img2.gif':
        write('Braga',False,'center',('PixelBreack',47,'normal'))
        sleep(2), clear()
        ganho += int(125*fator)
    elif img == 'img3.gif':
        write('Cury',False,'center',('PixelBreack',47,'normal'))
        sleep(2), clear()
        ganho += int(randint(100,500)*fator)
    elif img == 'img4.gif':
        write('Mericles',False,'center',('PixelBreack',47,'normal'))
        sleep(2), clear()
        ganho += int(50*fator)
    elif img == 'img5.gif':
        write('Sara',False,'center',('PixelBreack',47,'normal'))
        sleep(2), clear()
        ganho += int(10*fator)
        
def atualizar_creditos():
    tc.up(),tc.ht(), tc.goto(-125,-250)
    tc.clear(),tc.write('%i'%cred,True,'center',('PixelBreack',30,'normal'))

def atualizar_ganho(ganho):
    tg.up(),tg.ht(), tg.goto(125,-250)
    tg.clear(),tg.write('%i'%ganho,True,'center',('PixelBreack',30,'normal'))
    
def checar_aposta():
    if s1.shape() == 'seta2.gif' and s3.shape() == 'seta2.gif':
        aposta = 20
    elif s1.shape() == 'seta2.gif' or s3.shape() == 'seta2.gif':
        aposta = 15
    else:
        aposta = 10
    ta.up(),ta.ht(), ta.goto(0,-250)
    ta.clear(),ta.write('%i'%aposta,True,'center',('PixelBreack',30,'normal'))
    
'''Movimento das Rodas
movroda usa como parametro uma das rodas, definindo seu movimento que se
dá pela mudança da posiçao da primeira tartaruga da lista para a ultima posiçao,
trazendo as outras para frente.'''
def movroda(r):
    shuffle(r)
    tracer(1,0)
    for i in range(randint(1,total)*5):
        r.append(r.pop(0))
        for t in range(total):
            r[t].sety(-100*t+200)
            y = r[t].ycor()
            if y>110 or y<-110:
                r[t].ht()
            else:
                r[t].st()
    
def mov():
    ht(), up(), goto(0,200), color('green')
    if (cred < 30 and s1.shape() == 'seta2.gif' and s3.shape() == 'seta2.gif') or\
       (cred < 20 and(s1.shape() == 'seta2.gif' or s3.shape() == 'seta2.gif')) or\
       (cred < 10 and(s1.shape() != 'seta2.gif' or s3.shape() != 'seta2.gif')):
        write('Voce nao tem creditos!',True,'center',('PixelBreack',28,'normal'))
        botao.shape('botao1.gif')
    else:
        movroda(roda1), movroda(roda2), movroda(roda3)
        final_shapes = []
        fs = final_shapes
        for r in rodas:
            for i in range(1,4):
                fs.append(r[i].shape())

        checar_acerto(fs[0],fs[1],fs[2],fs[3],fs[4],fs[5],fs[6],fs[7],fs[8])
        botao.shape('botao1.gif')
    
'''Controle por clique/tecla
O jogo se inicia pressionando-se o botao start ou teclando enter'''
def start_click(x,y):
    botao.shape('botao2.gif')
    mov()
def start_key():
    botao.shape('botao2.gif')
    mov()
def ativar_setas3(x,y):      
    if s3.shape() != 'seta2.gif' and botao.shape() == 'botao1.gif':
        s3.shape('seta2.gif')
    elif s3.shape() == 'seta2.gif' and botao.shape() == 'botao1.gif':
        s3.shape('seta1.gif')
    checar_aposta()
def ativar_setas1(x,y):
    if s1.shape() != 'seta2.gif' and botao.shape() == 'botao1.gif':
        s1.shape('seta2.gif')
    elif s1.shape() == 'seta2.gif' and botao.shape() == 'botao1.gif':
        s1.shape('seta1.gif')
    checar_aposta()


reel(-125,roda1), reel(0,roda2), reel(125,roda3)
atualizar_ganho(0)
atualizar_creditos()
checar_aposta()
listen()
onkey(start_key,'Return')
botao.onclick(start_click)
s3.onclick(ativar_setas3)
s1.onclick(ativar_setas1)
mainloop()
