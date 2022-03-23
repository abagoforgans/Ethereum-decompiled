contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 614]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
array of uint8 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function destroy() payable {
    if stor0 == msg.sender:
        selfdestruct(stor0)
    else:
        return 0
}

function _fallback() payable {
  stop
}

function getBets() payable {
    mem[64] = 96
    if stor0 != msg.sender:
        return 0
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        mem[mem[64]] = stor1[idx].field_0
        mem[mem[64] + 32] = storB10E[idx]
        mem[mem[64] + 64] = storB10E[idx]
        emit 0x76e93572: stor1[idx].field_0, storB10E[idx], storB10E[idx]
        idx = idx + 1
        continue 
    return 1
}

function makeBet() payable {
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = (3 * stor1.length) + 3
        while 3 * stor1.length > idx:
            stor1[idx].field_0 = 0
            stor1[idx].field_256 = 0
            stor1[idx].field_512 = 0
            idx = idx + 1
            continue 
    stor1[stor1.length].field_0 = msg.value
    stor1[stor1.length].field_256 = 1
    stor1[stor1.length].field_512 = msg.value / 2
    stor1[stor1.length].field_767 = 0
    if msg.value > 0:
        call msg.sender with:
           value msg.value / 2 wei
             gas 0 wei
    return 1
}



}
