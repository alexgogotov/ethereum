// Версия solidity
pragma solidity ^0.4.16;

// Объявляем название библиотеки
library SimpleSearch {

    // Создаем функцию для просмотра массива
    function searchFor(uint[] storage self, uint _value) returns (uint){
        // Проходимся по массиву
        for (uint i = 0; i < self.length; i++){

            // Если нашли число - возвращаем его индекс
            if (self[i] == _value) return i;

        }
        // Если не нашли число, возвращаем uint(-1)
        return uint(-1);
    }

}
