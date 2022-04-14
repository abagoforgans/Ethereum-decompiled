contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
mapping of uint256 stor2;
uint256 stor3;
uint256 stor4;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor8;
uint8 stor9; offset 160

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor3 = 0
    stor4 = 0
    require not msg.value
    mem[96 len -5037] = code.data[5453 len -5037]
    mem[64] = -4941
    address(stor0.field_0) = msg.sender
    stor1 = mem[96]
    stor6[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor7[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor8 = mem[192]
    stor2[address(stor0.field_0)] = mem[96]
    stor9 = 0
    return code.data[416 len 5037]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
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
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
    return 1
}

function deprecate(address arg1) {
    require owner == msg.sender
    upgradedAddress = arg1
    Mask(96, 0, stor9.field_160) = 0
    uint8(stor9.field_160) = 1
    emit Deprecate(arg1);
}

function redeem(uint256 arg1) {
    require owner == msg.sender
    require _totalSupply >= arg1
    require stor2[address(stor0.field_0)] >= arg1
    _totalSupply -= arg1
    stor2[address(stor0.field_0)] -= arg1
    emit Redeem(arg1);
}

function totalSupply() {
    if not uint8(stor9.field_160):
        return _totalSupply
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function issue(uint256 arg1) {
    require owner == msg.sender
    require _totalSupply + arg1 >= _totalSupply
    require stor2[address(stor0.field_0)] + arg1 >= stor2[address(stor0.field_0)]
    stor2[address(stor0.field_0)] += arg1
    _totalSupply += arg1
    emit Issue(arg1);
}

function balanceOf(address arg1) {
    if not uint8(stor9.field_160):
        return stor2[address(arg1)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function setParams(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1 <= 20
    require arg2 <= 50
    basisPointsRate = arg1
    if arg2:
        require arg2
        require 10^decimals * arg2 / arg2 == 10^decimals
    maximumFee = 10^decimals * arg2
    emit Params(basisPointsRate, decimals);
}

function allowance(address arg1, address arg2) {
    if not uint8(stor9.field_160):
        return stor5[address(arg1)][address(arg2)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if uint8(stor9.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2
        require ext_call.success
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
        call upgradedAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2
        require ext_call.success
    else:
        require calldata.size >= 68
        if arg2:
            require arg2
            require basisPointsRate * arg2 / arg2 == basisPointsRate
        if basisPointsRate * arg2 / 10000 <= maximumFee:
            require basisPointsRate * arg2 / 10000 <= arg2
            require arg2 <= stor2[address(msg.sender)]
            stor2[address(msg.sender)] -= arg2
            require arg2 - (basisPointsRate * arg2 / 10000) + stor2[arg1] >= stor2[arg1]
            stor2[address(arg1)] = arg2 - (basisPointsRate * arg2 / 10000) + stor2[arg1]
            require (basisPointsRate * arg2 / 10000) + stor2[address(stor0.field_0)] >= stor2[address(stor0.field_0)]
            stor2[address(stor0.field_0)] += basisPointsRate * arg2 / 10000
            emit Transfer((arg2 - (basisPointsRate * arg2 / 10000)), msg.sender, arg1);
        else:
            require maximumFee <= arg2
            require arg2 <= stor2[address(msg.sender)]
            stor2[address(msg.sender)] -= arg2
            require arg2 - maximumFee + stor2[arg1] >= stor2[arg1]
            stor2[address(arg1)] = arg2 - maximumFee + stor2[arg1]
            require maximumFee + stor2[address(stor0.field_0)] >= stor2[address(stor0.field_0)]
            stor2[address(stor0.field_0)] += maximumFee
            emit Transfer((arg2 - maximumFee), msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    if uint8(stor9.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(arg1), address(arg2), arg3
        require ext_call.success
    else:
        require calldata.size >= 100
        if arg3:
            require arg3
            require basisPointsRate * arg3 / arg3 == basisPointsRate
        if basisPointsRate * arg3 / 10000 <= maximumFee:
            require basisPointsRate * arg3 / 10000 <= arg3
            require arg3 - (basisPointsRate * arg3 / 10000) + stor2[address(arg2)] >= stor2[address(arg2)]
            stor2[address(arg2)] = arg3 - (basisPointsRate * arg3 / 10000) + stor2[address(arg2)]
            require (basisPointsRate * arg3 / 10000) + stor2[address(stor0.field_0)] >= stor2[address(stor0.field_0)]
            stor2[address(stor0.field_0)] += basisPointsRate * arg3 / 10000
            require arg3 <= stor2[arg1]
            stor2[address(arg1)] = stor2[arg1] - arg3
            if stor5[address(arg1)][address(msg.sender)] < -1:
                require arg3 <= stor5[address(arg1)][address(msg.sender)]
                stor5[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer((arg3 - (basisPointsRate * arg3 / 10000)), arg1, arg2);
        else:
            require maximumFee <= arg3
            require arg3 - maximumFee + stor2[address(arg2)] >= stor2[address(arg2)]
            stor2[address(arg2)] = arg3 - maximumFee + stor2[address(arg2)]
            require maximumFee + stor2[address(stor0.field_0)] >= stor2[address(stor0.field_0)]
            stor2[address(stor0.field_0)] += maximumFee
            require arg3 <= stor2[arg1]
            stor2[address(arg1)] = stor2[arg1] - arg3
            if stor5[address(arg1)][address(msg.sender)] < -1:
                require arg3 <= stor5[address(arg1)][address(msg.sender)]
                stor5[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer((arg3 - maximumFee), arg1, arg2);
}



}
