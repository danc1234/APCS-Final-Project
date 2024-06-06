from pprint import pprint 
text = open('Rounds.csv').read().strip()

def make_lists(s):
    data = []
    s = s.split('\n')
    for x in s:
        data.append(x.split(','))
    return data


roundList = make_lists(text)
for i in roundList:
    i[1] = i[1].split('/')
for i in roundList:
    temp = []
    for j in i[1]:
        j = j.split(' ');
        for h in j:
            if h == '':
                j.remove(h)
        temp.append(j)
    i[1] = temp
        
rounds = "{"
counter = 0
while counter < 20:
    rounds += "{"
    for bloonList in roundList[counter][1]:
        if bloonList[1] == 'reds':
            a = 0
            while (a < int(bloonList[0])):
                rounds += 'new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png"), bloonDisplay, bloonCamoDisplay,bloonRegrowDisplay, bloonCamoRegrowDisplay),\n'
                a+=1       
        if bloonList[1] == 'blues':
            a = 0
            while (a < int(bloonList[0])):
                rounds += 'new Bloons(2, 4.6, 227.0, false, false, new Map("Map.png"), bloonDisplay, bloonCamoDisplay,bloonRegrowDisplay, bloonCamoRegrowDisplay),\n'
                a+=1        
        if bloonList[1] == 'greens':
            a = 0
            while (a < int(bloonList[0])):
                rounds += 'new Bloons(3, 4.6, 227.0, false, false, new Map("Map.png"), bloonDisplay, bloonCamoDisplay,bloonRegrowDisplay, bloonCamoRegrowDisplay),\n'
                a+=1
        if bloonList[1] == 'yellows':
            a = 0
            while (a < int(bloonList[0])):
                rounds += 'new Bloons(4, 4.6, 227.0, false, false, new Map("Map.png"), bloonDisplay, bloonCamoDisplay,bloonRegrowDisplay, bloonCamoRegrowDisplay),\n'
                a+=1
        if bloonList[1] == 'pinks':
            a = 0
            while (a < int(bloonList[0])):
                rounds += 'new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png"), bloonDisplay, bloonCamoDisplay,bloonRegrowDisplay, bloonCamoRegrowDisplay),\n'
                a+=1
    rounds+="},"
    counter+=1
rounds+="};"
         
rounds = rounds[0:len(rounds)-5] + rounds[len(rounds)-4:]

print(rounds)
