contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 544]
}



// =====================  Runtime code  =====================


address bankAddress;
uint256 pot;

function pot() {
    return pot
}

function bank() {
    return bankAddress
}

function _fallback() payable {
    revert
}

function play() payable {
    require msg.value == 10
    pot += msg.value
    if not mulmod(block.hash(block.number) + block.timestamp + block.difficulty + block.number, 1, 2):
        call bankAddress with:
           value 1 wei
             gas 0 wei
        require ext_call.success
        call msg.sender with:
           value pot - 1 wei
             gas 2300 * is_zero(value) wei
        pot = 0
}



}
