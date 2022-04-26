contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = 'hello world'
    require not msg.value
    stor1 = msg.sender
    return code.data[137 len 395]
}



// =====================  Runtime code  =====================


uint256 word;
address stor1;

function getWord() {
    return word
}

function _fallback() payable {
    revert
}

function sub_332445f3(?) {
    require stor1 == msg.sender
    word = arg1
    return 'Successfully changed word!'
}



}
