contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 645]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint8 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function destroy() payable {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function getBets() payable {
    mem[64] = 96
    require stor0 == msg.sender
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        mem[mem[64]] = stor1[idx].field_0
        mem[mem[64] + 32] = storB10E[idx]
        mem[mem[64] + 64] = storB10E[idx]
        emit GetBet(stor1[idx].field_0, storB10E[idx], storB10E[idx]);
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
    stor1[stor1.length].field_256 = block.number
    stor1[stor1.length].field_512 = 0 == bool(block.number) or Mask(248, 8, stor1[stor1.length].field_512)
    if bool(block.number) != 0:
        return 1
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    return 1
}



}
