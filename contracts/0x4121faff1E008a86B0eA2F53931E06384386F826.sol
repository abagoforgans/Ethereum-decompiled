contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -732] = code.data[946 len -732]
    mem[64] = -636
    stor0 = tx.origin or Mask(96, 160, stor0)
    stor1.length = mem[mem[96] + 96]
    mem[0] = 1
    if not mem[mem[96] + 96]:
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + mem[mem[96] + 96] + 128 > idx:
            stor1[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, mem[mem[96] + 96] + 31) >> 5
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    return code.data[214 len 732]
}



// =====================  Runtime code  =====================


address merchantAddress;
array of struct stor1;

function getMerchant() payable {
    return merchantAddress
}

function _fallback() payable {
  stop
}

function sub_a79af2ce(?) payable {
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

function sub_4dfc1abc(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if tx.origin == merchantAddress:
        stor1.length = arg1.length
        if not arg1.length:
            idx = 0
            while stor1.length + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while arg1.length + 128 > idx:
                stor1[s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor1.length + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
}



}
