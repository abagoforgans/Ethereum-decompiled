contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 leggiBlockChain;

function leggiBlockChain(uint256 arg1) {
    return leggiBlockChain[arg1][0 len leggiBlockChain[arg1].length]
}

function _fallback() payable {
    revert
}

function InserisciDati(string arg1) {
    if msg.sender == stor0:
        leggiBlockChain.length++
        leggiBlockChain[leggiBlockChain.length][] = Array(len=arg1.length, data=arg1[all])
}



}
