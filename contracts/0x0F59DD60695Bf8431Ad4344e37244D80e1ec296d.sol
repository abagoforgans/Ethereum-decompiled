contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor1;
mapping of uint256 stor2;
uint256 stor3;
uint256 stor4;
array of uint256 stor7;
array of uint256 stor8;
uint8 stor9;
uint128 stor9; offset 168

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor3 = 0
    stor4 = 0
    require not msg.value
    mem[96 len -11451] = code.data[12040 len -11451]
    mem[64] = -11355
    address(stor0.field_0) = msg.sender
    stor1 = mem[96]
    stor7[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor8[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    uint8(stor9.field_0) = mem[223 len 1]
    stor2[address(stor0.field_0)] = mem[96]
    Mask(88, 0, stor9.field_168) = 0
    return code.data[589 len 11451]
}



// =====================  Runtime code  =====================


const MAX_UINT = -1


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 _totalSupply;
mapping of uint256 balances;
uint256 basisPointsRate;
uint256 maximumFee;
mapping of uint256 allowed;
mapping of uint8 stor6;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor9; offset 168
uint128 stor9; offset 168
address upgradedAddress; offset 8

function name() {
    return name[0 len name.length]
}

function deprecated() {
    return bool(uint8(stor9.field_168))
}

function upgradedAddress() {
    return upgradedAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function maximumFee() {
    return maximumFee
}

function _totalSupply() {
    return _totalSupply
}

function getBlackListStatus(address arg1) {
    return bool(stor6[address(arg1)])
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

function symbol() {
    return symbol[0 len symbol.length]
}

function basisPointsRate() {
    return basisPointsRate
}

function isBlackListed(address arg1) {
    return bool(stor6[arg1])
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
    stor6[address(arg1)] = 1
    emit AddedBlackList(arg1);
}

function removeBlackList(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
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
    Mask(88, 0, stor9.field_168) = 1
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
    if not uint8(stor9.field_168):
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
    if not uint8(stor9.field_168):
        return balances[address(arg1)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    if not uint8(stor9.field_168):
        return allowed[address(arg1)][address(arg2)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function setParams(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 < 20
    require arg2 < 50
    basisPointsRate = arg1
    if not arg2:
        maximumFee = 0
    else:
        require arg2
        require arg2 * 10^decimals / arg2 == 10^decimals
        maximumFee = arg2 * 10^decimals
    emit Params(basisPointsRate, maximumFee);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if uint8(stor9.field_168):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.approveByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), arg2
        require ext_call.success
        return bool(ext_call.return_data[0])
    require calldata.size >= 68
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function destroyBlackFunds(address arg1) {
    require msg.sender == owner
    require stor6[address(arg1)]
    if not uint8(stor9.field_168):
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
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    if uint8(stor9.field_168):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), arg2
        require ext_call.success
        return bool(ext_call.return_data[0])
    require calldata.size >= 68
    if not arg2:
        if 0 <= maximumFee:
            require 0 <= arg2
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            require balances[address(arg1)] + arg2 >= balances[address(arg1)]
            balances[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require maximumFee <= arg2
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            require balances[address(arg1)] + arg2 - maximumFee >= balances[address(arg1)]
            balances[address(arg1)] = balances[address(arg1)] + arg2 - maximumFee
            if maximumFee > 0:
                require balances[address(stor0.field_0)] + maximumFee >= balances[address(stor0.field_0)]
                balances[address(stor0.field_0)] += maximumFee
                emit Transfer(maximumFee, msg.sender, owner);
            emit Transfer((arg2 - maximumFee), msg.sender, arg1);
    else:
        require arg2
        require arg2 * basisPointsRate / arg2 == basisPointsRate
        if arg2 * basisPointsRate / 10000 <= maximumFee:
            require arg2 * basisPointsRate / 10000 <= arg2
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            require balances[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000) >= balances[address(arg1)]
            balances[address(arg1)] = balances[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000)
            if arg2 * basisPointsRate / 10000 > 0:
                require balances[address(stor0.field_0)] + (arg2 * basisPointsRate / 10000) >= balances[address(stor0.field_0)]
                balances[address(stor0.field_0)] += arg2 * basisPointsRate / 10000
                emit Transfer((arg2 * basisPointsRate / 10000), msg.sender, owner);
            emit Transfer((arg2 - (arg2 * basisPointsRate / 10000)), msg.sender, arg1);
        else:
            require maximumFee <= arg2
            require arg2 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= arg2
            require balances[address(arg1)] + arg2 - maximumFee >= balances[address(arg1)]
            balances[address(arg1)] = balances[address(arg1)] + arg2 - maximumFee
            if maximumFee > 0:
                require balances[address(stor0.field_0)] + maximumFee >= balances[address(stor0.field_0)]
                balances[address(stor0.field_0)] += maximumFee
                emit Transfer(maximumFee, msg.sender, owner);
            emit Transfer((arg2 - maximumFee), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require not stor6[address(arg1)]
    require not stor6[address(arg2)]
    if uint8(stor9.field_168):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferFromByLegacy(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining - 710 wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        require ext_call.success
        return bool(ext_call.return_data[0])
    require calldata.size >= 100
    if not arg3:
        if allowed[address(arg1)][address(msg.sender)] < -1:
            require arg3 <= allowed[address(arg1)][address(msg.sender)]
            allowed[address(arg1)][address(msg.sender)] -= arg3
        if 0 <= maximumFee:
            require 0 <= arg3
            require arg3 <= balances[address(arg1)]
            balances[address(arg1)] -= arg3
            require balances[address(arg2)] + arg3 >= balances[address(arg2)]
            balances[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            require maximumFee <= arg3
            require arg3 <= balances[address(arg1)]
            balances[address(arg1)] -= arg3
            require balances[address(arg2)] + arg3 - maximumFee >= balances[address(arg2)]
            balances[address(arg2)] = balances[address(arg2)] + arg3 - maximumFee
            if maximumFee > 0:
                require balances[address(stor0.field_0)] + maximumFee >= balances[address(stor0.field_0)]
                balances[address(stor0.field_0)] += maximumFee
                emit Transfer(maximumFee, arg1, owner);
            emit Transfer((arg3 - maximumFee), arg1, arg2);
    else:
        require arg3
        require arg3 * basisPointsRate / arg3 == basisPointsRate
        if allowed[address(arg1)][address(msg.sender)] < -1:
            require arg3 <= allowed[address(arg1)][address(msg.sender)]
            allowed[address(arg1)][address(msg.sender)] -= arg3
        if arg3 * basisPointsRate / 10000 <= maximumFee:
            require arg3 * basisPointsRate / 10000 <= arg3
            require arg3 <= balances[address(arg1)]
            balances[address(arg1)] -= arg3
            require balances[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000) >= balances[address(arg2)]
            balances[address(arg2)] = balances[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000)
            if arg3 * basisPointsRate / 10000 > 0:
                require balances[address(stor0.field_0)] + (arg3 * basisPointsRate / 10000) >= balances[address(stor0.field_0)]
                balances[address(stor0.field_0)] += arg3 * basisPointsRate / 10000
                emit Transfer((arg3 * basisPointsRate / 10000), arg1, owner);
            emit Transfer((arg3 - (arg3 * basisPointsRate / 10000)), arg1, arg2);
        else:
            require maximumFee <= arg3
            require arg3 <= balances[address(arg1)]
            balances[address(arg1)] -= arg3
            require balances[address(arg2)] + arg3 - maximumFee >= balances[address(arg2)]
            balances[address(arg2)] = balances[address(arg2)] + arg3 - maximumFee
            if maximumFee > 0:
                require balances[address(stor0.field_0)] + maximumFee >= balances[address(stor0.field_0)]
                balances[address(stor0.field_0)] += maximumFee
                emit Transfer(maximumFee, arg1, owner);
            emit Transfer((arg3 - maximumFee), arg1, arg2);
    return 1
}



}
