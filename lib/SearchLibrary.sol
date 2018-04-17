// Версия solidity
pragma solidity ^0.4.16;

// Объявляем название библиотеки
library SimpleSearch {

    // Создаем функцию для просмотра массива
    function searchFor(address[] storage _voterAccts, mapping (address => bool) _voters, address _voterAddress) returns (bool){
        // Проходимся по массиву
        for (uint i = 0; i < _voterAccts.length; i++){

            // Если нашли адрес - возвращаем его значение из маппинга
            if (_voterAccts[i] == _voterAddress) return _voters[_voterAddress];

        }
        // Если не нашли адрес, возвращаем ложь
        return false;
    }
}
