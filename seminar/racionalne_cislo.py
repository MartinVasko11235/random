import math



class RacionalneCislo:

    def __init__(self, citatel, menovatel) -> None:

        gcd = math.gcd(self.citatel, self.menovatel)
        
        self.citatel = citatel // gcd
        self.menovatel = menovatel // gcd

    def __str__(self) -> str:
        return f'{self.citatel}/{self.menovatel}'

    def __repr__(self) -> str:
        return f'{self.citatel}/{self.menovatel}'
    
    def na_zakladny_tvar(self):
        gcd = math.gcd(self.citatel, self.menovatel)
        self.citatel //= gcd
        self.menovatel //= gcd

    def prevrateny(self):

        return RacionalneCislo(self.menovatel, self.citatel)
    
    def to_float(self):

        return self.citatel / self.menovatel
    
    
    

