contract main {




// =====================  Runtime code  =====================


array of uint256 hash;
address stor1;

function getHash(uint256 arg1) {
    return hash[arg1][0 len hash[arg1].length]
}

function _fallback() payable {
    revert
}

function setHash(uint256 arg1, string arg2) {
    require msg.sender == stor1
    hash[arg1][] = Array(len=arg2.length, data=arg2[all])
}



}
