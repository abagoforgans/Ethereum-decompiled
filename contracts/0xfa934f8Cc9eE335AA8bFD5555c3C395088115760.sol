contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[128] = 'not checked'
    stor1.length = 11
    s = 0
    idx = 128
    while 139 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor1.length + 31 / 32 > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[240 len 945]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getContractOrNormal(address arg1) payable {
    if stor1.length:
        mem[160] = uint256(stor1.field_0)
        idx = 160
        s = 0
        while stor1.length + 128 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len stor1.length])
}

function testContractOrNormal(address arg1) payable {
    call arg1 with:
         gas gas_remaining - 25050 wei
    if not ext_call.success:
        mem[128] = 'contract'
        stor1.length = 8
        s = 0
        idx = 128
        while 136 > idx:
            stor1[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while stor1.length + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        mem[128] = 'normal'
        stor1.length = 6
        s = 0
        idx = 128
        while 134 > idx:
            stor1[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while stor1.length + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
}



}
