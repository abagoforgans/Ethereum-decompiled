contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
    mem[96 len -1330] = code.data[1568 len -1330]
    mem[64] = -1234
    stor0 = msg.sender or Mask(96, 160, stor0)
    idx = 0
    while idx < mem[mem[96] + 96]:
        stor2++
        if not stor2 <= stor2 + 1:
            s = stor2 + code.data[1536 len 32] + 1
            while code.data[1536 len 32] + stor2 > s:
                stor[s] = 0
                s = s + 1
                continue 
        require idx < mem[mem[96] + 96]
        require idx < stor2
        mem[0] = 2
        stor[code.data[1536 len 32] + idx] = mem[(32 * idx) + mem[96] + 128]
        idx = idx + 1
        continue 
    return code.data[238 len 1298]
}



// =====================  Runtime code  =====================


address stor0;
array of address stor1;
array of address stor2;
address stor3;
uint256 stor4;

function _fallback() payable {
  stop
}

function clearGame() payable {
    require msg.value <= 0
    require stor0 == msg.sender
    stor1.length = 0
    if not stor1.length <= 0:
        idx = 0
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_d4ddc588(?) payable {
    require msg.value <= 0
    require msg.sender == stor0
    stor2.length = 0
    if not stor2.length <= 0:
        idx = 0
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
}

function delGame(address arg1) payable {
    require msg.value <= 0
    require stor0 == msg.sender
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor1[idx]) != arg1:
            idx = idx + 1
            continue 
        require idx < stor1.length
        address(stor1[idx]) = 0
}

function sub_9db33244(?) payable {
    require msg.value <= 0
    require msg.sender == stor0
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    require stor2.length < stor2.length
    uint256(stor2[stor2.length]) = arg1 or Mask(96, 160, uint256(stor2[stor2.length]))
}

function addGame(address arg1) payable {
    require msg.value <= 0
    require stor0 == msg.sender
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor1[idx]) != arg1:
            idx = idx + 1
            continue 
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    require stor1.length < stor1.length
    uint256(stor1[stor1.length]) = arg1 or Mask(96, 160, uint256(stor1[stor1.length]))
}

function getRandom() payable {
    mem[64] = 96
    require msg.sender != tx.origin
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor1[idx]) != msg.sender:
            idx = idx + 1
            continue 
        stor4++
        mem[96] = eth.balance(tx.origin)
        mem[128] = stor4 + 1
        mem[160] = stor3
        idx = 0
        s = sha3(mem[mem[64] len -mem[64] + 180])
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64]] = s
            mem[mem[64] + 32] = eth.balance(address(stor2[idx]))
            mem[mem[64] + 64] = stor4
            mem[mem[64] + 96] = stor3
            idx = idx + 1
            s = sha3(s, eth.balance(address(stor2[idx])), stor4, stor3)
            continue 
        mem[mem[64]] = sha3(mem[mem[64] len -mem[64] + 180]) + (_42 * stor2.length)
        return memory
          from mem[64]
           len 32
    revert 
}



}
