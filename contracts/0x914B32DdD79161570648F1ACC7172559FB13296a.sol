contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor1;
array of address stor2;

function _fallback() payable {
    stor0 = 2
    require not msg.value
    mem[96 len -1366] = code.data[1796 len -1366]
    mem[64] = -1270
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require not stor1[mem[(32 * idx) + mem[96] + 140 len 20]]
        require idx < mem[mem[96] + 96]
        require mem[(32 * idx) + mem[96] + 140 len 20]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor2.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        s = sha3(2)
        while sha3(2) + stor2.length > mem[mem[96] + 96]:
            stor[mem[mem[96] + 96]] = 0
            s = mem[mem[96] + 96] + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor2[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    return code.data[430 len 1366]
}



// =====================  Runtime code  =====================


uint256 VERSION;
mapping of uint8 stor1;
array of struct owners;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function isOwner(address arg1) {
    return bool(stor1[arg1])
}

function VERSION() {
    return VERSION
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 160] = 32
        mem[(32 * owners.length) + 192] = owners.length
        mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 160
           len (96 * owners.length) + 64
    mem[160] = address(owners.field_0)
    idx = 160
    s = 0
    while (32 * owners.length) + 128 > idx:
        mem[idx + 32] = owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[160 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 224 len (32 * owners.length) - floor32(owners.length)]), 
}

function sub_40404e3c(?) {
    require stor1[address(msg.sender)]
    mem[116] = arg2
    mem[148 len arg4.length] = arg4[all]
    mem[arg4.length + 148] = arg3
    mem[128 len arg5.length] = arg5[all]
    if mem[192 len 1] >= 27:
        signer = erecover(sha3(arg1, arg2, arg4[all], arg3), mem[161] << 248, mem[128], mem[160]) 
    else:
        if uint8(mem[192 len 1] + 27) != 27:
            require 28 == uint8(mem[192 len 1] + 27)
        signer = erecover(sha3(arg1, arg2, arg4[all], arg3), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    require erecover.result
    require address(signer) != msg.sender
    require stor1[address(signer)]
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args arg4[all]
    require ext_call.success
    emit 0x96da1dce: arg2, address(arg1), Array(len=arg4.length, data=arg4[all])
}



}
