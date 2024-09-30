
class LepsiList(list):

    def __getitem__(self, key):

        ind = key % len(self) if key >= 0 else (len(self) - ((-key) % len(self))) % len(self)

        return super().__getitem__(ind)

    def __setitem__(self, key, new_val):

        ind = key % len(self) if key >= 0 else len(self) - ((-key) % len(self))

        super().__setitem__(ind, new_val)


if __name__ == "__main__":
    a = LepsiList(i for i in range(10))

    a[22] = 123

    print(a[22])

    print(a)
