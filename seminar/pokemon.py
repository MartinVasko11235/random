class Pokemon:

        def __init__(self, name : str, type1 : str, type2 : str, hp : int, attack : int, defence : 49, sp_attack : int, 
                    sp_defence : int, speed : int, generation : int, is_legendary : bool):

            self.name = name
            self.type1 = type1
            self.type2 = type2
            self.hp = hp 
            self.attack = attack
            self.defence = defence
            self.sp_attack = sp_attack
            self.sp_defence = sp_defence
            self.speed = speed
            self.generation = generation
            self.is_legendary = is_legendary





class Pokemons:


    class Pokemon:

        def __init__(self, name : str, type1 : str, type2 : str, hp : int, attack : int, defence : 49, sp_attack : int, 
                    sp_defence : int, speed : int, generation : int, is_legendary : bool):

            self.name = name
            self.type1 = type1
            self.type2 = type2
            self.hp = int(hp) 
            self.attack = int(attack)
            self.defence = int(defence)
            self.sp_attack = int(sp_attack)
            self.sp_defence = int(sp_defence)
            self.speed = int(speed)
            self.generation = int(generation)
            self.is_legendary = bool(is_legendary)

    def __init__(self, path : str) -> None:
        
        file = open(path, 'r')

        self.data = []

        for line in file.readlines()[1:]:

            self.data.append(Pokemon(*tuple(line.split(';'))))

    def max_attack(self):
         
        max_att = 0
        best_pokemon = ''

        for pokemon in self.data:
             
             if pokemon.attack > max_att:
                  max_att = pokemon.attack
                  best_pokemon = pokemon.name

        return best_pokemon
    
    def max_sum(self):
         
        max_sum = 0
        best_pokemon = ''

        for pokemon in self.data:
             
             if pokemon.attack + pokemon.hp + pokemon.defence + pokemon.speed > max_sum:
                  max_sum = pokemon.attack + pokemon.hp + pokemon.defence + pokemon.speed
                  best_pokemon = pokemon.name

        return best_pokemon
    
    def max_hp_fire(self):
         
        max_hp = 0
        best_pokemon = ''

        for pokemon in self.data:
             
             if pokemon.hp > max_hp and (pokemon.type1 == 'Fire' or pokemon.type2 == 'Fire'):
                  max_hp = pokemon.hp
                  best_pokemon = pokemon.name

        return best_pokemon
    
    def speed_less_than_50(self):
         
        count = 0
        for pokemon in self.data:
           if pokemon.speed < 50:
               count += 1

        return count
    

    def max_hp_vs_grass(self):
        max_hp = 0
        best_pokemon = ''

        for pokemon in self.data:
             
             if pokemon.hp > max_hp and \
                ((pokemon.type1 in ['Bug', 'Dragon', 'Flying', 'Fire', 'Grass', 'Poison'] and (not pokemon.type2 in ['Rock', 'Ground', 'Water']))\
                or (pokemon.type2 in ['Bug', 'Dragon', 'Flying', 'Fire', 'Grass', 'Poison'] and (not pokemon.type1 in ['Rock', 'Ground', 'Water']))):
                  max_hp = pokemon.hp
                  best_pokemon = pokemon.name

        return best_pokemon

   


