contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 _totalSupply;
mapping of uint256 stor2;
uint256 basisPointsRate;
uint256 maximumFee;
mapping of uint256 stor5;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor9; offset 160
uint128 stor9; offset 160
address upgradedAddress;

function name() {
    return name[0 len name.length]
}

function deprecated() {
    return bool(uint8(stor9.field_160))
}

function upgradedAddress() {
    return upgradedAddress
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

function paused() {
    return bool(uint8(stor0.field_160))
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

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function deprecate(address arg1) {
    require msg.sender == owner
    Mask(96, 0, stor9.field_160) = 1
    upgradedAddress = arg1
    emit Deprecate(arg1);
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
    return 1
}

function redeem(uint256 arg1) {
    require msg.sender == owner
    require _totalSupply >= arg1
    require stor2[address(stor0.field_0)] >= arg1
    _totalSupply -= arg1
    stor2[address(stor0.field_0)] -= arg1
    emit Redeem(arg1);
}

function issue(uint256 arg1) {
    require msg.sender == owner
    require _totalSupply + arg1 >= _totalSupply
    require stor2[address(stor0.field_0)] + arg1 >= stor2[address(stor0.field_0)]
    stor2[address(stor0.field_0)] += arg1
    _totalSupply += arg1
    emit Issue(arg1);
}

function setParams(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 <= 20
    require arg2 <= 50
    basisPointsRate = arg1
    if arg2:
        require arg2
        require arg2 * 10^decimals / arg2 == 10^decimals
    maximumFee = arg2 * 10^decimals
    emit Params(basisPointsRate, maximumFee);
}

function totalSupply() {
    if not uint8(stor9.field_160):
        return _totalSupply
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    if not uint8(stor9.field_160):
        return stor2[address(arg1)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    if not uint8(stor9.field_160):
        return stor5[address(arg1)][address(arg2)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if uint8(stor9.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.approveByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require calldata.size >= 68
        if arg2:
            require not stor5[address(msg.sender)][address(arg1)]
        stor5[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    if uint8(stor9.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require calldata.size >= 68
        if arg2:
            require arg2
            require arg2 * basisPointsRate / arg2 == basisPointsRate
        if arg2 * basisPointsRate / 10000 <= maximumFee:
            require arg2 * basisPointsRate / 10000 <= arg2
            require arg2 <= stor2[address(msg.sender)]
            stor2[address(msg.sender)] -= arg2
            require stor2[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000) >= stor2[address(arg1)]
            stor2[address(arg1)] = stor2[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000)
            require stor2[address(stor0.field_0)] + (arg2 * basisPointsRate / 10000) >= stor2[address(stor0.field_0)]
            stor2[address(stor0.field_0)] += arg2 * basisPointsRate / 10000
            emit Transfer((arg2 - (arg2 * basisPointsRate / 10000)), msg.sender, arg1);
            emit Transfer((arg2 * basisPointsRate / 10000), msg.sender, owner);
        else:
            require maximumFee <= arg2
            require arg2 <= stor2[address(msg.sender)]
            stor2[address(msg.sender)] -= arg2
            require stor2[address(arg1)] + arg2 - maximumFee >= stor2[address(arg1)]
            stor2[address(arg1)] = stor2[address(arg1)] + arg2 - maximumFee
            require stor2[address(stor0.field_0)] + maximumFee >= stor2[address(stor0.field_0)]
            stor2[address(stor0.field_0)] += maximumFee
            emit Transfer((arg2 - maximumFee), msg.sender, arg1);
            emit Transfer(maximumFee, msg.sender, owner);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    if uint8(stor9.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferFromByLegacy(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require calldata.size >= 100
        if arg3:
            require arg3
            require arg3 * basisPointsRate / arg3 == basisPointsRate
        if arg3 * basisPointsRate / 10000 <= maximumFee:
            require arg3 * basisPointsRate / 10000 <= arg3
            require stor2[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000) >= stor2[address(arg2)]
            stor2[address(arg2)] = stor2[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000)
            require stor2[address(stor0.field_0)] + (arg3 * basisPointsRate / 10000) >= stor2[address(stor0.field_0)]
            stor2[address(stor0.field_0)] += arg3 * basisPointsRate / 10000
            require arg3 <= stor2[address(arg1)]
            stor2[address(arg1)] -= arg3
            if stor5[address(arg1)][address(msg.sender)] < -1:
                require arg3 <= stor5[address(arg1)][address(msg.sender)]
                stor5[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer((arg3 - (arg3 * basisPointsRate / 10000)), arg1, arg2);
            emit Transfer((arg3 * basisPointsRate / 10000), arg1, owner);
        else:
            require maximumFee <= arg3
            require stor2[address(arg2)] + arg3 - maximumFee >= stor2[address(arg2)]
            stor2[address(arg2)] = stor2[address(arg2)] + arg3 - maximumFee
            require stor2[address(stor0.field_0)] + maximumFee >= stor2[address(stor0.field_0)]
            stor2[address(stor0.field_0)] += maximumFee
            require arg3 <= stor2[address(arg1)]
            stor2[address(arg1)] -= arg3
            if stor5[address(arg1)][address(msg.sender)] < -1:
                require arg3 <= stor5[address(arg1)][address(msg.sender)]
                stor5[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer((arg3 - maximumFee), arg1, arg2);
            emit Transfer(maximumFee, arg1, owner);
}



}
