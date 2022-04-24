contract main {


// =======================  Init code  ======================


array of address stor0;
address stor11;

function _fallback() {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = msg.sender
    stor11 = msg.sender
    return code.data[291 len 13136]
}



// =====================  Runtime code  =====================


#
#  - setPrices(uint256 arg1, uint256 arg2)
#  - sub_079d0629(?)
#  - sub_167c45ef(?)
#  - sub_240fda08(?)
#  - sub_393426cd(?)
#  - sub_4bb3c9cf(?)
#  - sub_4fc0a2ea(?)
#  - sub_5a11e52f(?)
#  - addCaller(address arg1)
#  - sub_8013db74(?)
#  - sub_ae663053(?)
#  - setFechaTax(uint256 arg1)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#
array of address callers;
address sub_b062a399Address;
address stor2;
address sub_4181831fAddress;
address stor4;
address sub_87306a0bAddress;
address stor6;
address sub_af8cd8ddAddress;
address stor8;
address sub_194f1f90Address;
address stor10;
address owner;

function sub_194f1f90(?) {
    return sub_194f1f90Address
}

function sub_4181831f(?) {
    return sub_4181831fAddress
}

function sub_87306a0b(?) {
    return sub_87306a0bAddress
}

function getOwner() {
    return owner
}

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function sub_af8cd8dd(?) {
    return sub_af8cd8ddAddress
}

function sub_b062a399(?) {
    return sub_b062a399Address
}

function _fallback() payable {
    revert
}

function getBalanceEth(address arg1) {
    return (eth.balance(arg1) / 10^15)
}

function getFechaTax() {
    require ext_code.size(stor2)
    call stor2.0xa993e180 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_493693b5(?) {
    require ext_code.size(stor2)
    call stor2.0x493693b5 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4b4a33c7(?) {
    require ext_code.size(stor8)
    call stor8.0x4b4a33c7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getNumeroCeldas() {
    require ext_code.size(stor4)
    call stor4.0xd088f50d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_d489b68f(?) {
    require ext_code.size(stor10)
    call stor10.0xd489b68f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getNumeroMensajes() {
    require ext_code.size(stor6)
    call stor6.0x7a457855 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function buy() payable {
    require ext_code.size(stor2)
    call stor2.buy(uint256 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args msg.value, msg.sender
    require ext_call.success
}

function sell(uint256 arg1) {
    require ext_code.size(stor2)
    call stor2.sell(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
}

function getBalance(address arg1) {
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_e2c606f6(?) {
    require ext_code.size(stor6)
    call stor6.0x8f7ae488 with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), arg1, arg2, arg3, arg4, arg5, arg6
    require ext_call.success
}

function sub_c3377d5e(?) {
    require ext_code.size(stor8)
    call stor8.0xc3377d5e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20], ext_call.return_data[32], ext_call.return_data[64]
}

function sub_bf3088e4(?) {
    require ext_code.size(stor4)
    call stor4.0xbf3088e4 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[96] <= 5
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96] << 248,
           bool(ext_call.return_data[128])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2._transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    require ext_code.size(stor10)
    call stor10.incluirUsuario(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_07532b15(?) {
    require ext_code.size(stor4)
    call stor4.0x7532b15 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192]
}

function crearCelda(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint8 arg6) {
    require ext_code.size(stor4)
    call stor4.0xaa4737b with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require arg6 <= 5
    require ext_code.size(stor4)
    call stor4.crearCelda(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint8 rg6) with:
         gas gas_remaining - 710 wei
        args 0, uint32(arg1), arg2, arg3, arg4, arg5, arg6
    require ext_call.success
}

function sub_04dfeb5f(?) {
    require ext_code.size(stor6)
    call stor6.0x4dfeb5f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[96] <= 2
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 672 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 64, 32)), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 64, 32)), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 64, 32)), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 64, 32)), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 800 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 128, 32)), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 128, 32)), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 128, 32)), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 128, 32)), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    if ext_call.return_data[96] <= 2:
        return address(ext_call.return_data[0]), 
               ext_call.return_data[32],
               160,
               ext_call.return_data[96] << 248,
               224,
               32,
               mem[672],
               32,
               mem[800]
    revert
}



}
