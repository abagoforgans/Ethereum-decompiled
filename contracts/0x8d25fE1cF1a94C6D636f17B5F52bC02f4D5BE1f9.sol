contract main {




// =====================  Runtime code  =====================


uint256 count;

function count() {
    return count
}

function _fallback() payable {
    revert
}

function increment() {
    count++
    return (count + 1)
}



}
