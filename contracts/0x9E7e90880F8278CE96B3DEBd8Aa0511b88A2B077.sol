contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;

function _fallback() {
    mem[96 len -466] = code.data[739 len -466]
    mem[64] = -370
    stor0 = msg.sender
    stor2.length = (2 * mem[mem[96] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor1 = 0
    return code.data[273 len 466]
}



// =====================  Runtime code  =====================


address stor0;
uint256 deposits;
array of uint256 greet;

function deposits() {
    return deposits
}

function greet() {
    return greet[0 len greet.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    deposits++
}



}
