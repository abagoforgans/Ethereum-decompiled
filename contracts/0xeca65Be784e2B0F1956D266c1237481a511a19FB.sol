contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() {
    stor1 = 0
    return code.data[35 len 9218]
}



// =====================  Runtime code  =====================


#
#  - sub_228bf881(?)
#
array of address cards;
uint256 cardCount;

function Cards(uint256 arg1) {
    require arg1 < cards.length
    return cards[arg1]
}

function CardCount() {
    return cardCount
}

function _fallback() {
    revert 
}



}
