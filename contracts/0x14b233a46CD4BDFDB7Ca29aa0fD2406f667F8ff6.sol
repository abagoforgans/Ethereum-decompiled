contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 16
    stor1.length.field_8 = 'Acebusters Power' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'ABP' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 12
    stor0 = msg.sender
    return code.data[362 len 2436]
}



// =====================  Runtime code  =====================


const downtime = 0


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function powerUp(address arg1, uint256 arg2) {
    require owner == msg.sender
    emit Transfer(arg2, 0, arg1);
}

function slashPower(address arg1, uint256 arg2, bytes32 arg3) {
    require owner == msg.sender
    emit Slashing(arg2, arg3, arg1);
}

function totalSupply() {
    require ext_code.size(owner)
    call owner.powerTotalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function activeSupply() {
    require ext_code.size(owner)
    call owner.outstandingPower() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function downTick(address arg1) {
    require ext_code.size(owner)
    call owner.downTick(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), block.timestamp
    require ext_call.success
}

function balanceOf(address arg1) {
    require ext_code.size(owner)
    call owner.powerBalanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function downs(address arg1) {
    require ext_code.size(owner)
    call owner.0x45a40478 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function transfer(address arg1, uint256 arg2) {
    require not arg1
    require ext_code.size(owner)
    call owner.createDownRequest(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    emit Transfer(arg2, msg.sender, 0);
    return 1
}



}
