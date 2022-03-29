contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 0x296ae1d2d9a8701e113ecdf6ce986a4a7d0a6dc5
    stor2 = 0xbc4343b11b7cfdd6dd635f61039b8a66af6e73bb
    stor4 = 90
    stor5 = 10
    stor6 = 100
    require not msg.value
    require stor4 + stor5 == stor6
    stor3 = code.data[4539 len 20]
    return code.data[328 len 4199]
}



// =====================  Runtime code  =====================


address stor0;
address DXAddress;
address DEVAddress;
address MULTISIGAddress;
uint256 sub_13c9a9ea;
uint256 sub_ce550d7d;
uint256 sub_d228cabb;

function sub_13c9a9ea(?) {
    return sub_13c9a9ea
}

function MULTISIG() {
    return MULTISIGAddress
}

function DEV() {
    return DEVAddress
}

function sub_ce550d7d(?) {
    return sub_ce550d7d
}

function DX() {
    return DXAddress
}

function sub_d228cabb(?) {
    return sub_d228cabb
}

function sub_a5f77914(?) {
    require msg.sender == MULTISIGAddress
    stor0 = arg1
}

function changeDX(address arg1) {
    require msg.sender == DXAddress
    DXAddress = arg1
}

function changeDev(address arg1) {
    require msg.sender == DEVAddress
    DEVAddress = arg1
}

function sub_7d346c8c(?) {
    require msg.sender == MULTISIGAddress
    MULTISIGAddress = arg1
}

function sub_69c4aa11(?) {
    require msg.sender == MULTISIGAddress
    require ext_code.size(stor0)
    call stor0.shareProfits() with:
         gas gas_remaining - 50 wei
    require ext_call.success
}

function sub_cc4324b9(?) {
    require msg.sender == MULTISIGAddress
    require ext_code.size(stor0)
    call stor0.startBlockjack() with:
         gas gas_remaining - 50 wei
    require ext_call.success
}

function sub_678efb0c(?) {
    require msg.sender == MULTISIGAddress
    require ext_code.size(stor0)
    call stor0.migrateBlockjack() with:
         gas gas_remaining - 50 wei
    require ext_call.success
}

function sub_f753cc02(?) {
    require msg.sender == MULTISIGAddress
    require ext_code.size(stor0)
    call stor0.0x173825d9 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function sub_eea20a92(?) {
    require msg.sender == MULTISIGAddress
    require ext_code.size(stor0)
    call stor0.registerOwner(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function sub_61913f0a(?) {
    require msg.sender == MULTISIGAddress
    require ext_code.size(stor0)
    call stor0.changeAdminContract(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function sub_676a2c57(?) {
    require msg.sender == MULTISIGAddress
    require ext_code.size(stor0)
    call stor0.setSettings(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args arg1, arg2, arg3
    require ext_call.success
}

function splitProfits() payable {
    require msg.sender == stor0
    require sub_d228cabb
    call DXAddress with:
       value msg.value * sub_13c9a9ea / sub_d228cabb wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require sub_d228cabb
    call DEVAddress with:
       value msg.value * sub_ce550d7d / sub_d228cabb wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 0
}

function _fallback() payable {
    if msg.value <= 0:
    emit 0xb677d0f1: msg.value
    require msg.sender == stor0
    require sub_d228cabb
    call DXAddress with:
       value msg.value * sub_13c9a9ea / sub_d228cabb wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require sub_d228cabb
    call DEVAddress with:
       value msg.value * sub_ce550d7d / sub_d228cabb wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
