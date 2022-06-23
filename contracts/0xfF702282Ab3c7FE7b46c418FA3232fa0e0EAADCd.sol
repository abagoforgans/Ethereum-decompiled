contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    address(stor0.field_0) = msg.sender
    return code.data[109 len 4087]
}



// =====================  Runtime code  =====================


const sub_2e667c4e(?) = 'token-transfer-proxy'


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
mapping of uint256 stor2;
array of struct stor3;

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg2), address(arg3), arg4
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_0a8f7b52(?) {
    require msg.sender == owner
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor3[stor3.length].field_0 = arg1
    stor2[address(arg1)] = stor3.length - 1
    emit Authorized('token-transfer-proxy', arg1);
}

function sub_94ae6e71(?) {
    require msg.sender == owner
    require stor1[address(arg1)]
    require stor3.length - 1 < stor3.length
    stor1[address(arg1)] = 0
    require stor2[address(arg1)] < stor3.length
    stor3[stor2[address(arg1)]].field_0 = stor3[stor3.length].field_0
    stor2[stor3[stor3.length].field_0] = stor2[address(arg1)]
    stor2[address(arg1)] = 0
    require stor3.length - 1 < stor3.length
    stor3[stor3.length].field_0 = 0
    stor3.length--
    if not stor3.length <= stor3.length - 1:
        idx = stor3.length - 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit AuthorizationRevoked('token-transfer-proxy', arg1);
}

function sub_9c200302(?) {
    if not stor3.length:
        mem[(32 * stor3.length) + 192] = 32
        mem[(32 * stor3.length) + 224] = stor3.length
        mem[(32 * stor3.length) + 256 len floor32(stor3.length)] = mem[192 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 192
           len (96 * stor3.length) + 64
    mem[192] = address(stor3.field_0)
    idx = 192
    s = 0
    while (32 * stor3.length) + 160 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 256 len floor32(stor3.length)] = mem[192 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[192 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 256 len (32 * stor3.length) - floor32(stor3.length)]), 
}



}
