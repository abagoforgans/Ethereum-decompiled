contract main {




// =====================  Runtime code  =====================


uint256 count;

function getCount() payable {
    return count
}

function _fallback() payable {
    revert
}

function incrementCounter() payable {
    count++
}

function decrementCounter() payable {
    count--
}



}
