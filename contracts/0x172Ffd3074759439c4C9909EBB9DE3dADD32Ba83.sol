contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;

function _fallback() payable {
    stor1 = 0xd837acd68e7dd0a0a9f03d72623d5ce5180e3bb8
    bool(stor2.length) = 0
    stor2.length.field_1 = 0
    stor2.length.field_8 = mem[128 len 31]
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[273 len 1760]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
array of uint256 currentState;
array of address stor3;

function currentState() payable {
    return currentState[0 len currentState.length].field_0
}

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
    if msg.value <= 0:
        return ''
    if msg.value >= 51 * 10^15:
        return ''
    idx = 0
    while idx < msg.value:
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            s = sha3(3) + stor3.length + 1
            while sha3(3) + stor3.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        require stor3.length - 1 < stor3.length
        mem[0] = 3
        uint256(stor3[stor3.length]) = msg.sender or Mask(96, 160, uint256(stor3[stor3.length]))
        idx = idx + 1
        continue 
    if eth.balance(this.address) < 601 * 10^15:
        mem[256] = Mask(16, 120, 'Not a winner yet!') >> 120, mem[273 len 15]
        return Array(len=17, data=mem[256])
    require block.number % stor3.length < stor3.length
    call stor1 with:
       value 10^17 wei
         gas 0 wei
    if not ext_call.success:
        if address(stor3[block.number % stor3.length]) != msg.sender:
            mem[256] = Mask(16, 120, 'Not a winner yet!') >> 120, mem[273 len 15]
            return Array(len=17, data=mem[256])
        mem[256] = mem[280 len 8]
        return Array(len=8, data=mem[256])
    call address(stor3[block.number % stor3.length]) with:
       value 5 * 10^17 wei
         gas 0 wei
    bool(currentState.length) = 0
    uint255(currentState.length.field_1) = 7
    Mask(248, 0, currentState.length.field_8) = 'Winner!' / 256
    idx = 0
    while currentState.length + 31 / 32 > idx:
        currentState[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3.length = 0
    if not stor3.length <= 0:
        idx = 0
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    if address(stor3[block.number % stor3.length]) != msg.sender:
        mem[320] = Mask(16, 120, 'Not a winner yet!') >> 120, mem[337 len 15]
        return Array(len=17, data=mem[320])
    mem[320] = mem[344 len 8]
    return Array(len=8, data=mem[320])
}



}
