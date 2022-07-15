contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor1;
mapping of uint256 stor2;
uint128 stor5; offset 160

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = 10^6
    stor2[address(stor0.field_0)] = 10^6
    stor5 = 0
    return code.data[264 len 9498]
}



// =====================  Runtime code  =====================


const name = 'WBT_1_1'

const decimals = 1

const symbol = 'WBT_1_1'

const MAX_UINT = -1


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
mapping of uint8 stor4;
uint8 stor5; offset 160
uint128 stor5; offset 160
address upgradedAddress;

function deprecated() {
    return bool(uint8(stor5.field_160))
}

function upgradedAddress() {
    return upgradedAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function _totalSupply() {
    return _totalSupply
}

function getBlackListStatus(address arg1) {
    return bool(stor4[address(arg1)])
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function isBlackListed(address arg1) {
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function addBlackList(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
    emit AddedBlackList(arg1);
}

function removeBlackList(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
    emit RemovedBlackList(arg1);
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

function deprecate(address arg1) {
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = 1
    upgradedAddress = arg1
    emit Deprecate(arg1);
}

function redeem(uint256 arg1) {
    require msg.sender == owner
    require _totalSupply >= arg1
    require balances[address(stor0.field_0)] >= arg1
    _totalSupply -= arg1
    balances[address(stor0.field_0)] -= arg1
    emit Redeem(arg1);
}

function totalSupply() {
    if not uint8(stor5.field_160):
        return _totalSupply
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function issue(uint256 arg1) {
    require msg.sender == owner
    require _totalSupply + arg1 > _totalSupply
    require balances[address(stor0.field_0)] + arg1 > balances[address(stor0.field_0)]
    balances[address(stor0.field_0)] += arg1
    _totalSupply += arg1
    emit Issue(arg1);
}

function balanceOf(address arg1) {
    if not uint8(stor5.field_160):
        return balances[address(arg1)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    if not uint8(stor5.field_160):
        return allowed[address(arg1)][address(arg2)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if uint8(stor5.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.approveByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), arg2
        require ext_call.success
    else:
        require calldata.size >= 68
        if arg2:
            require not allowed[address(msg.sender)][address(arg1)]
        allowed[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
}

function destroyBlackFunds(address arg1) {
    require msg.sender == owner
    require stor4[address(arg1)]
    if not uint8(stor5.field_160):
        balances[address(arg1)] = 0
        _totalSupply -= balances[address(arg1)]
        emit DestroyedBlackFunds(address(arg1), balances[address(arg1)]);
    else:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        balances[address(arg1)] = 0
        _totalSupply -= ext_call.return_data[0]
        emit DestroyedBlackFunds(address(arg1), ext_call.return_data[0]);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require not stor4[address(msg.sender)]
    if uint8(stor5.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), arg2
        require ext_call.success
    else:
        require calldata.size >= 68
        require arg2 <= balances[address(msg.sender)]
        balances[address(msg.sender)] -= arg2
        require balances[address(arg1)] + arg2 >= balances[address(arg1)]
        balances[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require not stor4[address(arg1)]
    if uint8(stor5.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferFromByLegacy(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining - 710 wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        require ext_call.success
    else:
        require calldata.size >= 100
        if allowed[address(arg1)][address(msg.sender)] < -1:
            require arg3 <= allowed[address(arg1)][address(msg.sender)]
            allowed[address(arg1)][address(msg.sender)] -= arg3
        require arg3 <= balances[address(arg1)]
        balances[address(arg1)] -= arg3
        require balances[address(arg2)] + arg3 >= balances[address(arg2)]
        balances[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
}



}
