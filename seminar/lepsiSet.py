
class LepsiSet(set):

    def __init__(self):

        self.sum = 0

    def add(self, elem):
        if elem in self:
            return
        
        self.sum += elem

        super().add(elem)

    def remove(self, elem):

        if elem not in self:
            return
        
        self.sum -= elem

        super().remove(elem)


    def get_sum(self):
        return self.sum
         
if __name__ == "__main__":

    a = LepsiSet()

    a.add(3)
    a.add(5)

    print(a.get_sum())

    a.remove(5)

    print(a.get_sum())

