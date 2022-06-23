contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = code.data[9701 len 20]
    stor2 = code.data[9733 len 20]
    stor3 = code.data[9765 len 20]
    stor4 = code.data[9797 len 20]
    return code.data[439 len 9250]
}



// =====================  Runtime code  =====================


const sub_2e667c4e(?) = 'collateralizer'

const SECONDS_IN_DAY = (24 * 3600)


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address sub_007eb667Address;
address debtRegistryAddress;
address tokenRegistryAddress;
address tokenTransferProxyAddress;
mapping of address sub_e4b67a4c;
mapping of uint8 stor6;
mapping of uint256 stor7;
array of struct stor8;

function sub_007eb667(?) {
    return sub_007eb667Address
}

function tokenTransferProxy() {
    return tokenTransferProxyAddress
}

function debtRegistry() {
    return debtRegistryAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function tokenRegistry() {
    return tokenRegistryAddress
}

function sub_e4b67a4c(?) {
    return sub_e4b67a4c[arg1]
}

function _fallback() payable {
    revert
}

function sub_ca062647(?) {
    return arg1 << 248, Mask(92, 8, arg1) << 156, arg1
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

function sub_4bbf7a67(?) {
    require 24 * 3600 * arg1 / 24 * 3600 == arg1
    require 24 * 3600 * arg1 <= block.timestamp
    return (block.timestamp - (24 * 3600 * arg1))
}

function sub_ae72c6ef(?) {
    require msg.sender == owner
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[stor8.length].field_0 = arg1
    stor7[address(arg1)] = stor8.length - 1
    emit Authorized('collateralizer', arg1);
}

function sub_9ae1c1f3(?) {
    require msg.sender == owner
    require stor6[address(arg1)]
    require stor8.length - 1 < stor8.length
    stor6[address(arg1)] = 0
    require stor7[address(arg1)] < stor8.length
    stor8[stor7[address(arg1)]].field_0 = stor8[stor8.length].field_0
    stor7[stor8[stor8.length].field_0] = stor7[address(arg1)]
    stor7[address(arg1)] = 0
    require stor8.length - 1 < stor8.length
    stor8[stor8.length].field_0 = 0
    stor8.length--
    if not stor8.length <= stor8.length - 1:
        idx = stor8.length - 1
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit AuthorizationRevoked('collateralizer', arg1);
}

function sub_f466f42e(?) {
    if not stor8.length:
        mem[(32 * stor8.length) + 192] = 32
        mem[(32 * stor8.length) + 224] = stor8.length
        mem[(32 * stor8.length) + 256 len floor32(stor8.length)] = mem[192 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 192
           len (96 * stor8.length) + 64
    mem[192] = address(stor8.field_0)
    idx = 192
    s = 0
    while (32 * stor8.length) + 160 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 256 len floor32(stor8.length)] = mem[192 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[192 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 256 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function sub_44c4ea95(?) {
    require not uint8(stor0.field_160)
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0x6be39bda with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.getTokenAddressByIndex(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (Mask(8, 100, ext_call.return_data[32]) >> 100)
    require ext_call.success
    require Mask(92, 8, ext_call.return_data[32]) >> 8 > 0
    require ext_call.return_data[12 len 20]
    require sub_e4b67a4c[arg1]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3a896a1 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2762dd8c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x99114d84 with:
         gas gas_remaining - 710 wei
        args arg1, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    sub_e4b67a4c[arg1] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args sub_e4b67a4c[arg1], Mask(92, 8, ext_call.return_data[32]) >> 8
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x2621540e: address(ext_call.return_data[0]), Mask(92, 8, ext_call.return_data[32]) >> 8, arg1, sub_e4b67a4c[arg1]
}

function sub_649404bd(?) {
    require stor6[address(msg.sender)]
    require not uint8(stor0.field_160)
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0x6be39bda with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.getTokenAddressByIndex(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (Mask(8, 100, ext_call.return_data[32]) >> 100)
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require Mask(92, 8, ext_call.return_data[32]) >> 8 > 0
    require ext_call.return_data[12 len 20]
    require not sub_e4b67a4c[arg1]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0] >= Mask(92, 8, ext_call.return_data[32]) >> 8
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg2), tokenTransferProxyAddress
    require ext_call.success
    require ext_call.return_data[0] >= Mask(92, 8, ext_call.return_data[32]) >> 8
    sub_e4b67a4c[arg1] = arg2
    require ext_code.size(tokenTransferProxyAddress)
    call tokenTransferProxyAddress.0x15dacbea with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg2), address(this.address), Mask(92, 8, ext_call.return_data[32]) >> 8
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x38f12634: (Mask(92, 8, ext_call.return_data[32]) >> 8), arg1, address(ext_call.return_data[0])
    return 1
}

function sub_ed8e52bd(?) {
    require not uint8(stor0.field_160)
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0x6be39bda with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.getTokenAddressByIndex(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (Mask(8, 100, ext_call.return_data[32]) >> 100)
    require ext_call.success
    require Mask(92, 8, ext_call.return_data[32]) >> 8 > 0
    require ext_call.return_data[12 len 20]
    require sub_e4b67a4c[arg1]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3a896a1 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require 24 * 3600 * uint8(ext_call.return_data[32]) / 24 * 3600 == uint8(ext_call.return_data[32])
    require 24 * 3600 * uint8(ext_call.return_data[32]) <= block.timestamp
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x99114d84 with:
         gas gas_remaining - 710 wei
        args arg1, block.timestamp - (24 * 3600 * uint8(ext_call.return_data[32]))
    require ext_call.success
    require ext_call.return_data[0] > ext_call.return_data[0]
    sub_e4b67a4c[arg1] = 0
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0xba20dda4 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), Mask(92, 8, ext_call.return_data[32]) >> 8
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x50d195a4: address(ext_call.return_data[0]), Mask(92, 8, ext_call.return_data[32]) >> 8, arg1, address(ext_call.return_data[0])
}



}
