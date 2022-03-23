contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = 0xa8ca03e8ba138769384745456c99fb86c3de17d9
    return code.data[81 len 878]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;

function kill() payable {
    if address(stor0) != msg.sender:
    selfdestruct(address(stor0))
}

function _fallback() payable {
  stop
}

function mortal() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function placeWager() payable {
    if msg.value < 0:
        return ''
    if msg.value >= 256 * 10^15:
        return ''
    if eth.balance(this.address) <= 65 * 10^17:
        mem[320] = mem[345 len 7]
        return Array(len=39, data='Not a winner, sorry! - Try again', ' later.', mem[320])
    call msg.sender with:
       value 5 * 10^18 wei
         gas 0 wei
    if bool(ext_call.success) != 1:
        return ''
    call stor1 with:
       value 10^18 wei
         gas 0 wei
    mem[256] = mem[280 len 8]
    return Array(len=8, data=mem[256])
}



}
