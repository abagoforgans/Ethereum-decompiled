contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint8 stor11;
uint8 stor11; offset 168
address stor11; offset 8
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 7
    stor4.length.field_8 = 'MMT_0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor11.field_168) = 0
    stor13 = 0
    stor14 = 1008 * 24 * 3600
    stor15 = 8
    require not msg.value
    stor0 = msg.sender
    address(stor11.field_8) = address(code.data[8660 len 32])
    bool(stor1.length) = 0
    stor1.length.field_1 = 16
    stor1.length.field_8 = 'Swarm Fund Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'SWM' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 0
    uint8(stor11.field_0) = 1
    stor7 = block.number
    return code.data[666 len 7994]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - mint(address arg1, uint256 arg2)
#  - transfer(address arg1, uint256 arg2)
#
address controllerAddress;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address parentTokenAddress;
uint256 parentSnapShotBlock;
uint256 creationBlock;
array of struct stor8;
mapping of uint256 allowance;
array of struct stor10;
uint8 stor11;
uint8 stor11; offset 168
address tokenFactoryAddress; offset 8
mapping of uint256 stor12;
uint256 vestingStartTime;
uint256 vestingPeriodTime;
uint256 vestingTotalPeriods;

function mintingFinished() {
    return bool(uint8(stor11.field_168))
}

function name() {
    return name[0 len name.length]
}

function creationBlock() {
    return creationBlock
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function parentToken() {
    return parentTokenAddress
}

function vestingTotalPeriods() {
    return vestingTotalPeriods
}

function symbol() {
    return symbol[0 len symbol.length]
}

function vestingStartTime() {
    return vestingStartTime
}

function vestingPeriodTime() {
    return vestingPeriodTime
}

function transfersEnabled() {
    return bool(uint8(stor11.field_0))
}

function parentSnapShotBlock() {
    return parentSnapShotBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenFactory() {
    return tokenFactoryAddress
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function enableTransfers(bool arg1) {
    require controllerAddress == msg.sender
    uint8(stor11.field_0) = uint8(arg1)
}

function getVestingPeriodsCompleted(uint256 arg1, uint256 arg2) {
    require arg1 <= arg2
    require vestingPeriodTime
    return (arg2 - arg1 / vestingPeriodTime)
}

function setVestingParams(uint256 arg1, uint256 arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    vestingStartTime = arg1
    vestingTotalPeriods = arg2
    vestingPeriodTime = arg3
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor11.field_0)
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require controllerAddress == msg.sender
    require not uint8(stor11.field_168)
    vestingStartTime = block.timestamp
    require controllerAddress == msg.sender
    require not uint8(stor11.field_168)
    uint8(stor11.field_168) = 1
    emit MintFinished()
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require uint8(stor11.field_0)
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function claimTokens(address arg1) {
    require controllerAddress == msg.sender
    if not arg1:
        call controllerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args controllerAddress, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, controllerAddress);
}

function totalSupplyAt(uint256 arg1) {
    if not stor10.length:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if arg1 < parentSnapShotBlock:
            call parentTokenAddress.0x981b24d0 with:
                 gas gas_remaining - 710 wei
                args arg1
        else:
            call parentTokenAddress.0x981b24d0 with:
                 gas gas_remaining - 710 wei
                args parentSnapShotBlock
        require ext_call.success
        return ext_call.return_data[0]
    require 0 < stor10.length
    if uint128(stor10.field_0) > arg1:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if arg1 < parentSnapShotBlock:
            call parentTokenAddress.0x981b24d0 with:
                 gas gas_remaining - 710 wei
                args arg1
        else:
            call parentTokenAddress.0x981b24d0 with:
                 gas gas_remaining - 710 wei
                args parentSnapShotBlock
        require ext_call.success
        return ext_call.return_data[0]
    if 0 == stor10.length:
        return 0
    require stor10.length - 1 < stor10.length
    if arg1 >= stor10[stor10.length].field_0:
        if stor10.length - 1 < stor10.length:
            return stor10[stor10.length].field_0
    else:
        if 0 < stor10.length:
            if arg1 < uint128(stor10.field_0):
                return 0
            s = 0
            idx = 0
            while stor10.length - 1 > idx:
                require idx + stor10.length / 2 < stor10.length
                mem[0] = 10
                if stor10[0.5 / idx + stor10.length].field_0 > arg1:
                    s = idx + stor10.length / 2
                    idx = idx
                    continue 
                s = idx + stor10.length / 2
                idx = idx + stor10.length / 2
                continue 
            if idx < stor10.length:
                return stor10[idx].field_128
    revert
}

function totalSupply() {
    if not stor10.length:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if block.number < parentSnapShotBlock:
            call parentTokenAddress.0x981b24d0 with:
                 gas gas_remaining - 710 wei
                args block.number
        else:
            call parentTokenAddress.0x981b24d0 with:
                 gas gas_remaining - 710 wei
                args parentSnapShotBlock
        require ext_call.success
        return ext_call.return_data[0]
    require 0 < stor10.length
    if uint128(stor10.field_0) > block.number:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if block.number < parentSnapShotBlock:
            call parentTokenAddress.0x981b24d0 with:
                 gas gas_remaining - 710 wei
                args block.number
        else:
            call parentTokenAddress.0x981b24d0 with:
                 gas gas_remaining - 710 wei
                args parentSnapShotBlock
        require ext_call.success
        return ext_call.return_data[0]
    if 0 == stor10.length:
        return 0
    require stor10.length - 1 < stor10.length
    if block.number >= stor10[stor10.length].field_0:
        if stor10.length - 1 < stor10.length:
            return stor10[stor10.length].field_0
    else:
        if 0 < stor10.length:
            if block.number < uint128(stor10.field_0):
                return 0
            s = 0
            idx = 0
            while stor10.length - 1 > idx:
                require idx + stor10.length / 2 < stor10.length
                mem[0] = 10
                if stor10[0.5 / idx + stor10.length].field_0 > block.number:
                    s = idx + stor10.length / 2
                    idx = idx
                    continue 
                s = idx + stor10.length / 2
                idx = idx + stor10.length / 2
                continue 
            if idx < stor10.length:
                return stor10[idx].field_128
    revert
}

function balanceOfAt(address arg1, uint256 arg2) {
    if not stor8[address(arg1)].field_0:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if arg2 < parentSnapShotBlock:
            call parentTokenAddress.0x4ee2cd7e with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2
        else:
            call parentTokenAddress.0x4ee2cd7e with:
                 gas gas_remaining - 710 wei
                args address(arg1), parentSnapShotBlock
        require ext_call.success
        return ext_call.return_data[0]
    require 0 < stor8[address(arg1)].field_0
    if stor8[address(arg1)].field_0 > arg2:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if arg2 < parentSnapShotBlock:
            call parentTokenAddress.0x4ee2cd7e with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2
        else:
            call parentTokenAddress.0x4ee2cd7e with:
                 gas gas_remaining - 710 wei
                args address(arg1), parentSnapShotBlock
        require ext_call.success
        return ext_call.return_data[0]
    if 0 == stor8[address(arg1)].field_0:
        return 0
    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
    if arg2 >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
        if stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0:
            return stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
    else:
        if 0 < stor8[address(arg1)].field_0:
            if arg2 < stor8[address(arg1)].field_0:
                return 0
            s = 0
            idx = 0
            while stor8[address(arg1)].field_0 - 1 > idx:
                require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 8)
                if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > arg2:
                    s = idx + stor8[address(arg1)].field_0 / 2
                    idx = idx
                    continue 
                s = idx + stor8[address(arg1)].field_0 / 2
                idx = idx + stor8[address(arg1)].field_0 / 2
                continue 
            if idx < stor8[address(arg1)].field_0:
                return stor8[address(arg1)][idx].field_128
    revert
}

function balanceOf(address arg1) {
    if not stor8[address(arg1)].field_0:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if block.number < parentSnapShotBlock:
            call parentTokenAddress.0x4ee2cd7e with:
                 gas gas_remaining - 710 wei
                args address(arg1), block.number
        else:
            call parentTokenAddress.0x4ee2cd7e with:
                 gas gas_remaining - 710 wei
                args address(arg1), parentSnapShotBlock
        require ext_call.success
        return ext_call.return_data[0]
    require 0 < stor8[address(arg1)].field_0
    if stor8[address(arg1)].field_0 > block.number:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if block.number < parentSnapShotBlock:
            call parentTokenAddress.0x4ee2cd7e with:
                 gas gas_remaining - 710 wei
                args address(arg1), block.number
        else:
            call parentTokenAddress.0x4ee2cd7e with:
                 gas gas_remaining - 710 wei
                args address(arg1), parentSnapShotBlock
        require ext_call.success
        return ext_call.return_data[0]
    if 0 == stor8[address(arg1)].field_0:
        return 0
    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
    if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
        if stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0:
            return stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
    else:
        if 0 < stor8[address(arg1)].field_0:
            if block.number < stor8[address(arg1)].field_0:
                return 0
            s = 0
            idx = 0
            while stor8[address(arg1)].field_0 - 1 > idx:
                require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 8)
                if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                    s = idx + stor8[address(arg1)].field_0 / 2
                    idx = idx
                    continue 
                s = idx + stor8[address(arg1)].field_0 / 2
                idx = idx + stor8[address(arg1)].field_0 / 2
                continue 
            if idx < stor8[address(arg1)].field_0:
                return stor8[address(arg1)][idx].field_128
    revert
}

function getVestedBalance(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if arg4 < arg3:
        return 0
    if not vestingPeriodTime:
        if (vestingTotalPeriods * vestingPeriodTime) + arg3 >= arg3:
            if arg4 >= (vestingTotalPeriods * vestingPeriodTime) + arg3:
                return arg2
            if arg3 <= arg4:
                if vestingPeriodTime:
                    if arg4 - arg3 / vestingPeriodTime <= vestingTotalPeriods:
                        if not arg1:
                            if vestingTotalPeriods:
                                if (vestingTotalPeriods * arg1) - (arg4 - arg3 / vestingPeriodTime * arg1) / vestingTotalPeriods <= arg2:
                                    return (arg2 - ((vestingTotalPeriods * arg1) - (arg4 - arg3 / vestingPeriodTime * arg1) / vestingTotalPeriods))
                        else:
                            if arg1:
                                if (vestingTotalPeriods * arg1) - (arg4 - arg3 / vestingPeriodTime * arg1) / arg1 == vestingTotalPeriods - (arg4 - arg3 / vestingPeriodTime):
                                    if vestingTotalPeriods:
                                        if (vestingTotalPeriods * arg1) - (arg4 - arg3 / vestingPeriodTime * arg1) / vestingTotalPeriods <= arg2:
                                            return (arg2 - ((vestingTotalPeriods * arg1) - (arg4 - arg3 / vestingPeriodTime * arg1) / vestingTotalPeriods))
    else:
        if vestingPeriodTime:
            if vestingTotalPeriods * vestingPeriodTime / vestingPeriodTime == vestingTotalPeriods:
                if (vestingTotalPeriods * vestingPeriodTime) + arg3 >= arg3:
                    if arg4 >= (vestingTotalPeriods * vestingPeriodTime) + arg3:
                        return arg2
                    if arg3 <= arg4:
                        if vestingPeriodTime:
                            if arg4 - arg3 / vestingPeriodTime <= vestingTotalPeriods:
                                if not arg1:
                                    if vestingTotalPeriods:
                                        if (vestingTotalPeriods * arg1) - (arg4 - arg3 / vestingPeriodTime * arg1) / vestingTotalPeriods <= arg2:
                                            return (arg2 - ((vestingTotalPeriods * arg1) - (arg4 - arg3 / vestingPeriodTime * arg1) / vestingTotalPeriods))
                                else:
                                    if arg1:
                                        if (vestingTotalPeriods * arg1) - (arg4 - arg3 / vestingPeriodTime * arg1) / arg1 == vestingTotalPeriods - (arg4 - arg3 / vestingPeriodTime):
                                            if vestingTotalPeriods:
                                                if (vestingTotalPeriods * arg1) - (arg4 - arg3 / vestingPeriodTime * arg1) / vestingTotalPeriods <= arg2:
                                                    return (arg2 - ((vestingTotalPeriods * arg1) - (arg4 - arg3 / vestingPeriodTime * arg1) / vestingTotalPeriods))
    revert
}

function createCloneToken(string arg1, uint8 arg2, string arg3, uint256 arg4, bool arg5) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = 0x5b7b72c100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 388 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 388] = arg3.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 420 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if arg4:
        if not arg3.length % 32:
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.0x5b7b72c1 with:
                 gas gas_remaining - 710 wei
                args address(this.address), arg4, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg3.length) + 388 len arg3.length + arg1.length + -ceil32(arg1.length) + 32]), arg2 << 248, arg1.length + 224, arg5
        else:
            mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.0x5b7b72c1 with:
                 gas gas_remaining - 710 wei
                args address(this.address), arg4, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg3.length) + 388 len floor32(arg3.length) + arg1.length + -ceil32(arg1.length) + 64]), arg2 << 248, arg1.length + 224, arg5
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x3cebb823 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        emit NewCloneToken(arg4, address(ext_call.return_data[0]));
    else:
        if not arg3.length % 32:
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.0x5b7b72c1 with:
                 gas gas_remaining - 710 wei
                args address(this.address), block.number, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg3.length) + 388 len arg3.length + arg1.length + -ceil32(arg1.length) + 32]), arg2 << 248, arg1.length + 224, arg5
        else:
            mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.0x5b7b72c1 with:
                 gas gas_remaining - 710 wei
                args address(this.address), block.number, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg3.length) + 388 len floor32(arg3.length) + arg1.length + -ceil32(arg1.length) + 64]), arg2 << 248, arg1.length + 224, arg5
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x3cebb823 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        emit NewCloneToken(block.number, address(ext_call.return_data[0]));
    return address(ext_call.return_data[0])
}

function vestedBalanceOf(address arg1) {
    if not stor8[address(arg1)].field_0:
        if not parentTokenAddress:
            if block.timestamp < vestingStartTime:
                return 0
            if not vestingPeriodTime:
                if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                    if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                        return 0
                    if vestingStartTime <= block.timestamp:
                        if vestingPeriodTime:
                            if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                if not stor12[address(arg1)]:
                                    if vestingTotalPeriods:
                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                            return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                                else:
                                    if stor12[address(arg1)]:
                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                            if vestingTotalPeriods:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                    return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
            else:
                if vestingPeriodTime:
                    if vestingTotalPeriods * vestingPeriodTime / vestingPeriodTime == vestingTotalPeriods:
                        if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                            if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                return 0
                            if vestingStartTime <= block.timestamp:
                                if vestingPeriodTime:
                                    if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                        if not stor12[address(arg1)]:
                                            if vestingTotalPeriods:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                    return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                                        else:
                                            if stor12[address(arg1)]:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                    if vestingTotalPeriods:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                            return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
        else:
            require ext_code.size(parentTokenAddress)
            if block.number < parentSnapShotBlock:
                call parentTokenAddress.0x4ee2cd7e with:
                     gas gas_remaining - 710 wei
                    args address(arg1), block.number
            else:
                call parentTokenAddress.0x4ee2cd7e with:
                     gas gas_remaining - 710 wei
                    args address(arg1), parentSnapShotBlock
            require ext_call.success
            if block.timestamp < vestingStartTime:
                return 0
            if not vestingPeriodTime:
                if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                    if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                        return ext_call.return_data[0]
                    if vestingStartTime <= block.timestamp:
                        if vestingPeriodTime:
                            if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                if not stor12[address(arg1)]:
                                    if vestingTotalPeriods:
                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= ext_call.return_data[0]:
                                            return (ext_call.return_data[0] - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                                else:
                                    if stor12[address(arg1)]:
                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                            if vestingTotalPeriods:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
            else:
                if vestingPeriodTime:
                    if vestingTotalPeriods * vestingPeriodTime / vestingPeriodTime == vestingTotalPeriods:
                        if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                            if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                return ext_call.return_data[0]
                            if vestingStartTime <= block.timestamp:
                                if vestingPeriodTime:
                                    if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                        if not stor12[address(arg1)]:
                                            if vestingTotalPeriods:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                                        else:
                                            if stor12[address(arg1)]:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                    if vestingTotalPeriods:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= ext_call.return_data[0]:
                                                            return (ext_call.return_data[0] - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
    else:
        if 0 < stor8[address(arg1)].field_0:
            if stor8[address(arg1)].field_0 > block.number:
                if not parentTokenAddress:
                    if block.timestamp < vestingStartTime:
                        return 0
                    if not vestingPeriodTime:
                        if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                            if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                return 0
                            if vestingStartTime <= block.timestamp:
                                if vestingPeriodTime:
                                    if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                        if not stor12[address(arg1)]:
                                            if vestingTotalPeriods:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                    return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                                        else:
                                            if stor12[address(arg1)]:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                    if vestingTotalPeriods:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                            return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                    else:
                        if vestingPeriodTime:
                            if vestingTotalPeriods * vestingPeriodTime / vestingPeriodTime == vestingTotalPeriods:
                                if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                                    if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                        return 0
                                    if vestingStartTime <= block.timestamp:
                                        if vestingPeriodTime:
                                            if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                                if not stor12[address(arg1)]:
                                                    if vestingTotalPeriods:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                            return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                                                else:
                                                    if stor12[address(arg1)]:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                            if vestingTotalPeriods:
                                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                                    return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), block.number
                    else:
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), parentSnapShotBlock
                    require ext_call.success
                    if block.timestamp < vestingStartTime:
                        return 0
                    if not vestingPeriodTime:
                        if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                            if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                return ext_call.return_data[0]
                            if vestingStartTime <= block.timestamp:
                                if vestingPeriodTime:
                                    if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                        if not stor12[address(arg1)]:
                                            if vestingTotalPeriods:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                                        else:
                                            if stor12[address(arg1)]:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                    if vestingTotalPeriods:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= ext_call.return_data[0]:
                                                            return (ext_call.return_data[0] - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                    else:
                        if vestingPeriodTime:
                            if vestingTotalPeriods * vestingPeriodTime / vestingPeriodTime == vestingTotalPeriods:
                                if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                                    if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                        return ext_call.return_data[0]
                                    if vestingStartTime <= block.timestamp:
                                        if vestingPeriodTime:
                                            if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                                if not stor12[address(arg1)]:
                                                    if vestingTotalPeriods:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= ext_call.return_data[0]:
                                                            return (ext_call.return_data[0] - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                                                else:
                                                    if stor12[address(arg1)]:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                            if vestingTotalPeriods:
                                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= ext_call.return_data[0]:
                                                                    return (ext_call.return_data[0] - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
            else:
                if 0 == stor8[address(arg1)].field_0:
                    if block.timestamp < vestingStartTime:
                        return 0
                    if not vestingPeriodTime:
                        if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                            if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                return 0
                            if vestingStartTime <= block.timestamp:
                                if vestingPeriodTime:
                                    if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                        if not stor12[address(arg1)]:
                                            if vestingTotalPeriods:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                    return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                                        else:
                                            if stor12[address(arg1)]:
                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                    if vestingTotalPeriods:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                            return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                    else:
                        if vestingPeriodTime:
                            if vestingTotalPeriods * vestingPeriodTime / vestingPeriodTime == vestingTotalPeriods:
                                if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                                    if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                        return 0
                                    if vestingStartTime <= block.timestamp:
                                        if vestingPeriodTime:
                                            if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                                if not stor12[address(arg1)]:
                                                    if vestingTotalPeriods:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                            return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                                                else:
                                                    if stor12[address(arg1)]:
                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                            if vestingTotalPeriods:
                                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                                    return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                else:
                    if stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0:
                        if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                            if stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0:
                                if block.timestamp < vestingStartTime:
                                    return 0
                                if not vestingPeriodTime:
                                    if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                                        if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                            return stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                                        if vestingStartTime <= block.timestamp:
                                            if vestingPeriodTime:
                                                if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                                    if not stor12[address(arg1)]:
                                                        if vestingTotalPeriods:
                                                            if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                                                return (stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                                                    else:
                                                        if stor12[address(arg1)]:
                                                            if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                                if vestingTotalPeriods:
                                                                    if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                                                        return (stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                                else:
                                    if vestingPeriodTime:
                                        if vestingTotalPeriods * vestingPeriodTime / vestingPeriodTime == vestingTotalPeriods:
                                            if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                                                if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                                    return stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                                                if vestingStartTime <= block.timestamp:
                                                    if vestingPeriodTime:
                                                        if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                                            if not stor12[address(arg1)]:
                                                                if vestingTotalPeriods:
                                                                    if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                                                        return (stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                                                            else:
                                                                if stor12[address(arg1)]:
                                                                    if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                                        if vestingTotalPeriods:
                                                                            if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                                                                return (stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                        else:
                            if 0 < stor8[address(arg1)].field_0:
                                if block.number < stor8[address(arg1)].field_0:
                                    if block.timestamp < vestingStartTime:
                                        return 0
                                    if not vestingPeriodTime:
                                        if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                                            if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                                return 0
                                            if vestingStartTime <= block.timestamp:
                                                if vestingPeriodTime:
                                                    if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                                        if not stor12[address(arg1)]:
                                                            if vestingTotalPeriods:
                                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                                    return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                                                        else:
                                                            if stor12[address(arg1)]:
                                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                                    if vestingTotalPeriods:
                                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                                            return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                                    else:
                                        if vestingPeriodTime:
                                            if vestingTotalPeriods * vestingPeriodTime / vestingPeriodTime == vestingTotalPeriods:
                                                if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                                                    if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                                        return 0
                                                    if vestingStartTime <= block.timestamp:
                                                        if vestingPeriodTime:
                                                            if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                                                if not stor12[address(arg1)]:
                                                                    if vestingTotalPeriods:
                                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                                            return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                                                                else:
                                                                    if stor12[address(arg1)]:
                                                                        if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                                            if vestingTotalPeriods:
                                                                                if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= 0:
                                                                                    return -((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor8[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
                                        if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                            s = idx + stor8[address(arg1)].field_0 / 2
                                            idx = idx
                                            continue 
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx + stor8[address(arg1)].field_0 / 2
                                        continue 
                                    if idx < stor8[address(arg1)].field_0:
                                        if block.timestamp < vestingStartTime:
                                            return 0
                                        if not vestingPeriodTime:
                                            if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                                                if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                                    return stor8[address(arg1)][idx].field_128
                                                if vestingStartTime <= block.timestamp:
                                                    if vestingPeriodTime:
                                                        if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                                            if not stor12[address(arg1)]:
                                                                if vestingTotalPeriods:
                                                                    if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= stor8[address(arg1)][idx].field_128:
                                                                        return (stor8[address(arg1)][idx].field_128 - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                                                            else:
                                                                if stor12[address(arg1)]:
                                                                    if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                                        if vestingTotalPeriods:
                                                                            if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= stor8[address(arg1)][idx].field_128:
                                                                                return (stor8[address(arg1)][idx].field_128 - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                                        else:
                                            if vestingPeriodTime:
                                                if vestingTotalPeriods * vestingPeriodTime / vestingPeriodTime == vestingTotalPeriods:
                                                    if (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime >= vestingStartTime:
                                                        if block.timestamp >= (vestingTotalPeriods * vestingPeriodTime) + vestingStartTime:
                                                            return stor8[address(arg1)][idx].field_128
                                                        if vestingStartTime <= block.timestamp:
                                                            if vestingPeriodTime:
                                                                if block.timestamp - vestingStartTime / vestingPeriodTime <= vestingTotalPeriods:
                                                                    if not stor12[address(arg1)]:
                                                                        if vestingTotalPeriods:
                                                                            if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= stor8[address(arg1)][idx].field_128:
                                                                                return (stor8[address(arg1)][idx].field_128 - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
                                                                    else:
                                                                        if stor12[address(arg1)]:
                                                                            if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / stor12[address(arg1)] == vestingTotalPeriods - (block.timestamp - vestingStartTime / vestingPeriodTime):
                                                                                if vestingTotalPeriods:
                                                                                    if (vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods <= stor8[address(arg1)][idx].field_128:
                                                                                        return (stor8[address(arg1)][idx].field_128 - ((vestingTotalPeriods * stor12[address(arg1)]) - (block.timestamp - vestingStartTime / vestingPeriodTime * stor12[address(arg1)]) / vestingTotalPeriods))
    revert
}

function destroyTokens(address arg1, uint256 arg2) {
    require controllerAddress == msg.sender
    if not stor10.length:
        if not parentTokenAddress:
            require 0 >= arg2
            if not stor8[address(arg1)].field_0:
                if not parentTokenAddress:
                    require 0 >= arg2
                    if not stor10.length:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                stor10[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(-arg2)
                    else:
                        require stor10.length - 1 < stor10.length
                        if stor10[stor10.length].field_0 >= block.number:
                            require stor10.length - 1 < stor10.length
                            stor10[stor10.length].field_0 = uint128(-arg2)
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(-arg2)
                    if not stor8[address(arg1)].field_0:
                        stor8[address(arg1)].field_0++
                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                            idx = stor8[address(arg1)].field_0 + 1
                            while stor8[address(arg1)].field_0 > idx:
                                stor8[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), block.number
                    else:
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), parentSnapShotBlock
                    require ext_call.success
                    require ext_call.return_data[0] >= arg2
                    if not stor10.length:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                stor10[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(-arg2)
                    else:
                        require stor10.length - 1 < stor10.length
                        if stor10[stor10.length].field_0 >= block.number:
                            require stor10.length - 1 < stor10.length
                            stor10[stor10.length].field_0 = uint128(-arg2)
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(-arg2)
                    if not stor8[address(arg1)].field_0:
                        stor8[address(arg1)].field_0++
                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                            idx = stor8[address(arg1)].field_0 + 1
                            while stor8[address(arg1)].field_0 > idx:
                                stor8[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
            else:
                require 0 < stor8[address(arg1)].field_0
                if stor8[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(-arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(-arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), block.number
                        else:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), parentSnapShotBlock
                        require ext_call.success
                        require ext_call.return_data[0] >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(-arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(-arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    if 0 == stor8[address(arg1)].field_0:
                        require 0 >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(-arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(-arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(-arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                        else:
                            require 0 < stor8[address(arg1)].field_0
                            if block.number < stor8[address(arg1)].field_0:
                                require 0 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(-arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                s = 0
                                idx = 0
                                while stor8[address(arg1)].field_0 - 1 > idx:
                                    require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 8)
                                    if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx
                                        continue 
                                    s = idx + stor8[address(arg1)].field_0 / 2
                                    idx = idx + stor8[address(arg1)].field_0 / 2
                                    continue 
                                require idx < stor8[address(arg1)].field_0
                                require stor8[address(arg1)][idx].field_128 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        s = stor10.length + 1
                                        while stor10.length > s:
                                            stor10[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(-arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        s = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > s:
                                            stor8[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            s = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > s:
                                                stor8[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
        else:
            require ext_code.size(parentTokenAddress)
            if block.number < parentSnapShotBlock:
                call parentTokenAddress.0x981b24d0 with:
                     gas gas_remaining - 710 wei
                    args block.number
            else:
                call parentTokenAddress.0x981b24d0 with:
                     gas gas_remaining - 710 wei
                    args parentSnapShotBlock
            require ext_call.success
            require ext_call.return_data[0] >= arg2
            if not stor8[address(arg1)].field_0:
                if not parentTokenAddress:
                    require 0 >= arg2
                    if not stor10.length:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                stor10[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor10.length - 1 < stor10.length
                        if stor10[stor10.length].field_0 >= block.number:
                            require stor10.length - 1 < stor10.length
                            stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    if not stor8[address(arg1)].field_0:
                        stor8[address(arg1)].field_0++
                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                            idx = stor8[address(arg1)].field_0 + 1
                            while stor8[address(arg1)].field_0 > idx:
                                stor8[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), block.number
                    else:
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), parentSnapShotBlock
                    require ext_call.success
                    require ext_call.return_data[0] >= arg2
                    if not stor10.length:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                stor10[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor10.length - 1 < stor10.length
                        if stor10[stor10.length].field_0 >= block.number:
                            require stor10.length - 1 < stor10.length
                            stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    if not stor8[address(arg1)].field_0:
                        stor8[address(arg1)].field_0++
                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                            idx = stor8[address(arg1)].field_0 + 1
                            while stor8[address(arg1)].field_0 > idx:
                                stor8[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
            else:
                require 0 < stor8[address(arg1)].field_0
                if stor8[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), block.number
                        else:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), parentSnapShotBlock
                        require ext_call.success
                        require ext_call.return_data[0] >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    if 0 == stor8[address(arg1)].field_0:
                        require 0 >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                        else:
                            require 0 < stor8[address(arg1)].field_0
                            if block.number < stor8[address(arg1)].field_0:
                                require 0 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                s = 0
                                idx = 0
                                while stor8[address(arg1)].field_0 - 1 > idx:
                                    require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 8)
                                    if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx
                                        continue 
                                    s = idx + stor8[address(arg1)].field_0 / 2
                                    idx = idx + stor8[address(arg1)].field_0 / 2
                                    continue 
                                require idx < stor8[address(arg1)].field_0
                                require stor8[address(arg1)][idx].field_128 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        s = stor10.length + 1
                                        while stor10.length > s:
                                            stor10[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        s = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > s:
                                            stor8[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            s = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > s:
                                                stor8[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
    else:
        require 0 < stor10.length
        if uint128(stor10.field_0) > block.number:
            if not parentTokenAddress:
                require 0 >= arg2
                if not stor8[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(-arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(-arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), block.number
                        else:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), parentSnapShotBlock
                        require ext_call.success
                        require ext_call.return_data[0] >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(-arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(-arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require 0 < stor8[address(arg1)].field_0
                    if stor8[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(-arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), block.number
                            else:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), parentSnapShotBlock
                            require ext_call.success
                            require ext_call.return_data[0] >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(-arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if 0 == stor8[address(arg1)].field_0:
                            require 0 >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(-arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(-arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor8[address(arg1)].field_0
                                if block.number < stor8[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(-arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(-arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor8[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
                                        if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                            s = idx + stor8[address(arg1)].field_0 / 2
                                            idx = idx
                                            continue 
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx + stor8[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor8[address(arg1)].field_0
                                    require stor8[address(arg1)][idx].field_128 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(-arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(-arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            s = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > s:
                                                stor8[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                s = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > s:
                                                    stor8[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
            else:
                require ext_code.size(parentTokenAddress)
                if block.number < parentSnapShotBlock:
                    call parentTokenAddress.0x981b24d0 with:
                         gas gas_remaining - 710 wei
                        args block.number
                else:
                    call parentTokenAddress.0x981b24d0 with:
                         gas gas_remaining - 710 wei
                        args parentSnapShotBlock
                require ext_call.success
                require ext_call.return_data[0] >= arg2
                if not stor8[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), block.number
                        else:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), parentSnapShotBlock
                        require ext_call.success
                        require ext_call.return_data[0] >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require 0 < stor8[address(arg1)].field_0
                    if stor8[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), block.number
                            else:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), parentSnapShotBlock
                            require ext_call.success
                            require ext_call.return_data[0] >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if 0 == stor8[address(arg1)].field_0:
                            require 0 >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor8[address(arg1)].field_0
                                if block.number < stor8[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor8[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
                                        if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                            s = idx + stor8[address(arg1)].field_0 / 2
                                            idx = idx
                                            continue 
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx + stor8[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor8[address(arg1)].field_0
                                    require stor8[address(arg1)][idx].field_128 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            s = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > s:
                                                stor8[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                s = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > s:
                                                    stor8[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
        else:
            if 0 == stor10.length:
                require 0 >= arg2
                if not stor8[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(-arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(-arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), block.number
                        else:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), parentSnapShotBlock
                        require ext_call.success
                        require ext_call.return_data[0] >= arg2
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(-arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(-arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require 0 < stor8[address(arg1)].field_0
                    if stor8[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(-arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), block.number
                            else:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), parentSnapShotBlock
                            require ext_call.success
                            require ext_call.return_data[0] >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(-arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if 0 == stor8[address(arg1)].field_0:
                            require 0 >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(-arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(-arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(-arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor8[address(arg1)].field_0
                                if block.number < stor8[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(-arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(-arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor8[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
                                        if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                            s = idx + stor8[address(arg1)].field_0 / 2
                                            idx = idx
                                            continue 
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx + stor8[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor8[address(arg1)].field_0
                                    require stor8[address(arg1)][idx].field_128 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(-arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(-arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            s = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > s:
                                                stor8[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                s = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > s:
                                                    stor8[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
            else:
                require stor10.length - 1 < stor10.length
                if block.number >= stor10[stor10.length].field_0:
                    require stor10.length - 1 < stor10.length
                    require stor10[stor10.length].field_0 >= arg2
                    if not stor8[address(arg1)].field_0:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 - arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), block.number
                            else:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), parentSnapShotBlock
                            require ext_call.success
                            require ext_call.return_data[0] >= arg2
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 - arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require 0 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)].field_0 > block.number:
                            if not parentTokenAddress:
                                require 0 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 - arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), block.number
                                else:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), parentSnapShotBlock
                                require ext_call.success
                                require ext_call.return_data[0] >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 - arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            if 0 == stor8[address(arg1)].field_0:
                                require 0 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 - arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 - arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require 0 < stor8[address(arg1)].field_0
                                    if block.number < stor8[address(arg1)].field_0:
                                        require 0 >= arg2
                                        if not stor10.length:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                        else:
                                            require stor10.length - 1 < stor10.length
                                            if stor10[stor10.length].field_0 >= block.number:
                                                require stor10.length - 1 < stor10.length
                                                stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 - arg2)
                                            else:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    idx = stor10.length + 1
                                                    while stor10.length > idx:
                                                        stor10[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                        if not stor8[address(arg1)].field_0:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                            else:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor8[address(arg1)].field_0 - 1 > idx:
                                            require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                            mem[0] = sha3(address(arg1), 8)
                                            if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                                s = idx + stor8[address(arg1)].field_0 / 2
                                                idx = idx
                                                continue 
                                            s = idx + stor8[address(arg1)].field_0 / 2
                                            idx = idx + stor8[address(arg1)].field_0 / 2
                                            continue 
                                        require idx < stor8[address(arg1)].field_0
                                        require stor8[address(arg1)][idx].field_128 >= arg2
                                        if not stor10.length:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                        else:
                                            require stor10.length - 1 < stor10.length
                                            if stor10[stor10.length].field_0 >= block.number:
                                                require stor10.length - 1 < stor10.length
                                                stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 - arg2)
                                            else:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    s = stor10.length + 1
                                                    while stor10.length > s:
                                                        stor10[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                        if not stor8[address(arg1)].field_0:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                s = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > s:
                                                    stor8[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                            else:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    s = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > s:
                                                        stor8[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                else:
                    require 0 < stor10.length
                    if block.number < uint128(stor10.field_0):
                        require 0 >= arg2
                        if not stor8[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require 0 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(-arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), block.number
                                else:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), parentSnapShotBlock
                                require ext_call.success
                                require ext_call.return_data[0] >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(-arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(-arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require 0 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require 0 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(-arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(-arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require ext_code.size(parentTokenAddress)
                                    if block.number < parentSnapShotBlock:
                                        call parentTokenAddress.0x4ee2cd7e with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), block.number
                                    else:
                                        call parentTokenAddress.0x4ee2cd7e with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), parentSnapShotBlock
                                    require ext_call.success
                                    require ext_call.return_data[0] >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(-arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(-arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                if 0 == stor8[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(-arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(-arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= arg2
                                        if not stor10.length:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(-arg2)
                                        else:
                                            require stor10.length - 1 < stor10.length
                                            if stor10[stor10.length].field_0 >= block.number:
                                                require stor10.length - 1 < stor10.length
                                                stor10[stor10.length].field_0 = uint128(-arg2)
                                            else:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    idx = stor10.length + 1
                                                    while stor10.length > idx:
                                                        stor10[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(-arg2)
                                        if not stor8[address(arg1)].field_0:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                            else:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require 0 < stor8[address(arg1)].field_0
                                        if block.number < stor8[address(arg1)].field_0:
                                            require 0 >= arg2
                                            if not stor10.length:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    idx = stor10.length + 1
                                                    while stor10.length > idx:
                                                        stor10[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(-arg2)
                                            else:
                                                require stor10.length - 1 < stor10.length
                                                if stor10[stor10.length].field_0 >= block.number:
                                                    require stor10.length - 1 < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(-arg2)
                                                else:
                                                    stor10.length++
                                                    if not stor10.length <= stor10.length + 1:
                                                        idx = stor10.length + 1
                                                        while stor10.length > idx:
                                                            stor10[idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor10.length < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(block.number)
                                                    stor10[stor10.length].field_128 = uint128(-arg2)
                                            if not stor8[address(arg1)].field_0:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                            else:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                                else:
                                                    stor8[address(arg1)].field_0++
                                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                        idx = stor8[address(arg1)].field_0 + 1
                                                        while stor8[address(arg1)].field_0 > idx:
                                                            stor8[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            s = 0
                                            idx = 0
                                            while stor8[address(arg1)].field_0 - 1 > idx:
                                                require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 8)
                                                if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                                    s = idx + stor8[address(arg1)].field_0 / 2
                                                    idx = idx
                                                    continue 
                                                s = idx + stor8[address(arg1)].field_0 / 2
                                                idx = idx + stor8[address(arg1)].field_0 / 2
                                                continue 
                                            require idx < stor8[address(arg1)].field_0
                                            require stor8[address(arg1)][idx].field_128 >= arg2
                                            if not stor10.length:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    s = stor10.length + 1
                                                    while stor10.length > s:
                                                        stor10[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(-arg2)
                                            else:
                                                require stor10.length - 1 < stor10.length
                                                if stor10[stor10.length].field_0 >= block.number:
                                                    require stor10.length - 1 < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(-arg2)
                                                else:
                                                    stor10.length++
                                                    if not stor10.length <= stor10.length + 1:
                                                        s = stor10.length + 1
                                                        while stor10.length > s:
                                                            stor10[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor10.length < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(block.number)
                                                    stor10[stor10.length].field_128 = uint128(-arg2)
                                            if not stor8[address(arg1)].field_0:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    s = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > s:
                                                        stor8[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                            else:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                                                else:
                                                    stor8[address(arg1)].field_0++
                                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                        s = stor8[address(arg1)].field_0 + 1
                                                        while stor8[address(arg1)].field_0 > s:
                                                            stor8[address(arg1)][s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
                    else:
                        s = 0
                        idx = 0
                        while stor10.length - 1 > idx:
                            require idx + stor10.length / 2 < stor10.length
                            mem[0] = 10
                            if stor10[0.5 / idx + stor10.length].field_0 > block.number:
                                s = idx + stor10.length / 2
                                idx = idx
                                continue 
                            s = idx + stor10.length / 2
                            idx = idx + stor10.length / 2
                            continue 
                        require idx < stor10.length
                        require stor10[idx].field_128 >= arg2
                        if not stor8[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require 0 >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        s = stor10.length + 1
                                        while stor10.length > s:
                                            stor10[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 - arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), block.number
                                else:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), parentSnapShotBlock
                                require ext_call.success
                                require ext_call.return_data[0] >= arg2
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        s = stor10.length + 1
                                        while stor10.length > s:
                                            stor10[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 - arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require 0 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require 0 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 - arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require ext_code.size(parentTokenAddress)
                                    if block.number < parentSnapShotBlock:
                                        call parentTokenAddress.0x4ee2cd7e with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), block.number
                                    else:
                                        call parentTokenAddress.0x4ee2cd7e with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), parentSnapShotBlock
                                    require ext_call.success
                                    require ext_call.return_data[0] >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 - arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                if 0 == stor8[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 - arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= arg2
                                        if not stor10.length:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                        else:
                                            require stor10.length - 1 < stor10.length
                                            if stor10[stor10.length].field_0 >= block.number:
                                                require stor10.length - 1 < stor10.length
                                                stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 - arg2)
                                            else:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    s = stor10.length + 1
                                                    while stor10.length > s:
                                                        stor10[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                        if not stor8[address(arg1)].field_0:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                            else:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require 0 < stor8[address(arg1)].field_0
                                        if block.number < stor8[address(arg1)].field_0:
                                            require 0 >= arg2
                                            if not stor10.length:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    s = stor10.length + 1
                                                    while stor10.length > s:
                                                        stor10[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                            else:
                                                require stor10.length - 1 < stor10.length
                                                if stor10[stor10.length].field_0 >= block.number:
                                                    require stor10.length - 1 < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 - arg2)
                                                else:
                                                    stor10.length++
                                                    if not stor10.length <= stor10.length + 1:
                                                        s = stor10.length + 1
                                                        while stor10.length > s:
                                                            stor10[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor10.length < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(block.number)
                                                    stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                            if not stor8[address(arg1)].field_0:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                            else:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(-arg2)
                                                else:
                                                    stor8[address(arg1)].field_0++
                                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                        idx = stor8[address(arg1)].field_0 + 1
                                                        while stor8[address(arg1)].field_0 > idx:
                                                            stor8[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            t = 0
                                            s = 0
                                            while stor8[address(arg1)].field_0 - 1 > s:
                                                require s + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 8)
                                                if stor8[address(arg1)][0.5 / s + stor8[address(arg1)].field_0].field_0 > block.number:
                                                    t = s + stor8[address(arg1)].field_0 / 2
                                                    s = s
                                                    continue 
                                                t = s + stor8[address(arg1)].field_0 / 2
                                                s = s + stor8[address(arg1)].field_0 / 2
                                                continue 
                                            require s < stor8[address(arg1)].field_0
                                            require stor8[address(arg1)][s].field_128 >= arg2
                                            if not stor10.length:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    t = stor10.length + 1
                                                    while stor10.length > t:
                                                        stor10[t].field_0 = 0
                                                        t = t + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                            else:
                                                require stor10.length - 1 < stor10.length
                                                if stor10[stor10.length].field_0 >= block.number:
                                                    require stor10.length - 1 < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 - arg2)
                                                else:
                                                    stor10.length++
                                                    if not stor10.length <= stor10.length + 1:
                                                        t = stor10.length + 1
                                                        while stor10.length > t:
                                                            stor10[t].field_0 = 0
                                                            t = t + 1
                                                            continue 
                                                    require stor10.length < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(block.number)
                                                    stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                            if not stor8[address(arg1)].field_0:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][s].field_128 - arg2)
                                            else:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][s].field_128 - arg2)
                                                else:
                                                    stor8[address(arg1)].field_0++
                                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                        idx = stor8[address(arg1)].field_0 + 1
                                                        while stor8[address(arg1)].field_0 > idx:
                                                            stor8[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][s].field_128 - arg2)
    emit Transfer(arg2, arg1, 0);
    return 1
}

function generateTokens(address arg1, uint256 arg2) {
    require controllerAddress == msg.sender
    if not stor10.length:
        if not parentTokenAddress:
            require arg2 >= 0
            if not stor8[address(arg1)].field_0:
                if not parentTokenAddress:
                    require arg2 >= 0
                    if not stor10.length:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                stor10[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(arg2)
                    else:
                        require stor10.length - 1 < stor10.length
                        if stor10[stor10.length].field_0 >= block.number:
                            require stor10.length - 1 < stor10.length
                            stor10[stor10.length].field_0 = uint128(arg2)
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(arg2)
                    if not stor8[address(arg1)].field_0:
                        stor8[address(arg1)].field_0++
                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                            idx = stor8[address(arg1)].field_0 + 1
                            while stor8[address(arg1)].field_0 > idx:
                                stor8[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), block.number
                    else:
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), parentSnapShotBlock
                    require ext_call.success
                    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                    if not stor10.length:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                stor10[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(arg2)
                    else:
                        require stor10.length - 1 < stor10.length
                        if stor10[stor10.length].field_0 >= block.number:
                            require stor10.length - 1 < stor10.length
                            stor10[stor10.length].field_0 = uint128(arg2)
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(arg2)
                    if not stor8[address(arg1)].field_0:
                        stor8[address(arg1)].field_0++
                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                            idx = stor8[address(arg1)].field_0 + 1
                            while stor8[address(arg1)].field_0 > idx:
                                stor8[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
            else:
                require 0 < stor8[address(arg1)].field_0
                if stor8[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
                        require arg2 >= 0
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), block.number
                        else:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), parentSnapShotBlock
                        require ext_call.success
                        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    if 0 == stor8[address(arg1)].field_0:
                        require arg2 >= 0
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2 >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                        else:
                            require 0 < stor8[address(arg1)].field_0
                            if block.number < stor8[address(arg1)].field_0:
                                require arg2 >= 0
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                s = 0
                                idx = 0
                                while stor8[address(arg1)].field_0 - 1 > idx:
                                    require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 8)
                                    if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx
                                        continue 
                                    s = idx + stor8[address(arg1)].field_0 / 2
                                    idx = idx + stor8[address(arg1)].field_0 / 2
                                    continue 
                                require idx < stor8[address(arg1)].field_0
                                require stor8[address(arg1)][idx].field_128 + arg2 >= stor8[address(arg1)][idx].field_128
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        s = stor10.length + 1
                                        while stor10.length > s:
                                            stor10[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        s = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > s:
                                            stor8[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            s = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > s:
                                                stor8[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
        else:
            require ext_code.size(parentTokenAddress)
            if block.number < parentSnapShotBlock:
                call parentTokenAddress.0x981b24d0 with:
                     gas gas_remaining - 710 wei
                    args block.number
            else:
                call parentTokenAddress.0x981b24d0 with:
                     gas gas_remaining - 710 wei
                    args parentSnapShotBlock
            require ext_call.success
            require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
            if not stor8[address(arg1)].field_0:
                if not parentTokenAddress:
                    require arg2 >= 0
                    if not stor10.length:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                stor10[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                    else:
                        require stor10.length - 1 < stor10.length
                        if stor10[stor10.length].field_0 >= block.number:
                            require stor10.length - 1 < stor10.length
                            stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                    if not stor8[address(arg1)].field_0:
                        stor8[address(arg1)].field_0++
                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                            idx = stor8[address(arg1)].field_0 + 1
                            while stor8[address(arg1)].field_0 > idx:
                                stor8[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), block.number
                    else:
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), parentSnapShotBlock
                    require ext_call.success
                    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                    if not stor10.length:
                        stor10.length++
                        if not stor10.length <= stor10.length + 1:
                            idx = stor10.length + 1
                            while stor10.length > idx:
                                stor10[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                    else:
                        require stor10.length - 1 < stor10.length
                        if stor10[stor10.length].field_0 >= block.number:
                            require stor10.length - 1 < stor10.length
                            stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                    if not stor8[address(arg1)].field_0:
                        stor8[address(arg1)].field_0++
                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                            idx = stor8[address(arg1)].field_0 + 1
                            while stor8[address(arg1)].field_0 > idx:
                                stor8[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
            else:
                require 0 < stor8[address(arg1)].field_0
                if stor8[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
                        require arg2 >= 0
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), block.number
                        else:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), parentSnapShotBlock
                        require ext_call.success
                        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    if 0 == stor8[address(arg1)].field_0:
                        require arg2 >= 0
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2 >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                        else:
                            require 0 < stor8[address(arg1)].field_0
                            if block.number < stor8[address(arg1)].field_0:
                                require arg2 >= 0
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                s = 0
                                idx = 0
                                while stor8[address(arg1)].field_0 - 1 > idx:
                                    require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 8)
                                    if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx
                                        continue 
                                    s = idx + stor8[address(arg1)].field_0 / 2
                                    idx = idx + stor8[address(arg1)].field_0 / 2
                                    continue 
                                require idx < stor8[address(arg1)].field_0
                                require stor8[address(arg1)][idx].field_128 + arg2 >= stor8[address(arg1)][idx].field_128
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        s = stor10.length + 1
                                        while stor10.length > s:
                                            stor10[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        s = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > s:
                                            stor8[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            s = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > s:
                                                stor8[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
    else:
        require 0 < stor10.length
        if uint128(stor10.field_0) > block.number:
            if not parentTokenAddress:
                require arg2 >= 0
                if not stor8[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require arg2 >= 0
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), block.number
                        else:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), parentSnapShotBlock
                        require ext_call.success
                        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    require 0 < stor8[address(arg1)].field_0
                    if stor8[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require arg2 >= 0
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), block.number
                            else:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), parentSnapShotBlock
                            require ext_call.success
                            require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        if 0 == stor8[address(arg1)].field_0:
                            require arg2 >= 0
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2 >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                            else:
                                require 0 < stor8[address(arg1)].field_0
                                if block.number < stor8[address(arg1)].field_0:
                                    require arg2 >= 0
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor8[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
                                        if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                            s = idx + stor8[address(arg1)].field_0 / 2
                                            idx = idx
                                            continue 
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx + stor8[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor8[address(arg1)].field_0
                                    require stor8[address(arg1)][idx].field_128 + arg2 >= stor8[address(arg1)][idx].field_128
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            s = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > s:
                                                stor8[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                s = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > s:
                                                    stor8[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
            else:
                require ext_code.size(parentTokenAddress)
                if block.number < parentSnapShotBlock:
                    call parentTokenAddress.0x981b24d0 with:
                         gas gas_remaining - 710 wei
                        args block.number
                else:
                    call parentTokenAddress.0x981b24d0 with:
                         gas gas_remaining - 710 wei
                        args parentSnapShotBlock
                require ext_call.success
                require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                if not stor8[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require arg2 >= 0
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), block.number
                        else:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), parentSnapShotBlock
                        require ext_call.success
                        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    require 0 < stor8[address(arg1)].field_0
                    if stor8[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require arg2 >= 0
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), block.number
                            else:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), parentSnapShotBlock
                            require ext_call.success
                            require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        if 0 == stor8[address(arg1)].field_0:
                            require arg2 >= 0
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2 >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                            else:
                                require 0 < stor8[address(arg1)].field_0
                                if block.number < stor8[address(arg1)].field_0:
                                    require arg2 >= 0
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor8[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
                                        if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                            s = idx + stor8[address(arg1)].field_0 / 2
                                            idx = idx
                                            continue 
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx + stor8[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor8[address(arg1)].field_0
                                    require stor8[address(arg1)][idx].field_128 + arg2 >= stor8[address(arg1)][idx].field_128
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            s = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > s:
                                                stor8[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                s = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > s:
                                                    stor8[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
        else:
            if 0 == stor10.length:
                require arg2 >= 0
                if not stor8[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require arg2 >= 0
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), block.number
                        else:
                            call parentTokenAddress.0x4ee2cd7e with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), parentSnapShotBlock
                        require ext_call.success
                        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                        if not stor10.length:
                            stor10.length++
                            if not stor10.length <= stor10.length + 1:
                                idx = stor10.length + 1
                                while stor10.length > idx:
                                    stor10[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(arg2)
                        else:
                            require stor10.length - 1 < stor10.length
                            if stor10[stor10.length].field_0 >= block.number:
                                require stor10.length - 1 < stor10.length
                                stor10[stor10.length].field_0 = uint128(arg2)
                            else:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    require 0 < stor8[address(arg1)].field_0
                    if stor8[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require arg2 >= 0
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), block.number
                            else:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), parentSnapShotBlock
                            require ext_call.success
                            require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        if 0 == stor8[address(arg1)].field_0:
                            require arg2 >= 0
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2 >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                            else:
                                require 0 < stor8[address(arg1)].field_0
                                if block.number < stor8[address(arg1)].field_0:
                                    require arg2 >= 0
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor8[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
                                        if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                            s = idx + stor8[address(arg1)].field_0 / 2
                                            idx = idx
                                            continue 
                                        s = idx + stor8[address(arg1)].field_0 / 2
                                        idx = idx + stor8[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor8[address(arg1)].field_0
                                    require stor8[address(arg1)][idx].field_128 + arg2 >= stor8[address(arg1)][idx].field_128
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            s = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > s:
                                                stor8[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                s = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > s:
                                                    stor8[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
            else:
                require stor10.length - 1 < stor10.length
                if block.number >= stor10[stor10.length].field_0:
                    require stor10.length - 1 < stor10.length
                    require stor10[stor10.length].field_0 + arg2 >= stor10[stor10.length].field_0
                    if not stor8[address(arg1)].field_0:
                        if not parentTokenAddress:
                            require arg2 >= 0
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 + arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), block.number
                            else:
                                call parentTokenAddress.0x4ee2cd7e with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), parentSnapShotBlock
                            require ext_call.success
                            require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                            if not stor10.length:
                                stor10.length++
                                if not stor10.length <= stor10.length + 1:
                                    idx = stor10.length + 1
                                    while stor10.length > idx:
                                        stor10[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                            else:
                                require stor10.length - 1 < stor10.length
                                if stor10[stor10.length].field_0 >= block.number:
                                    require stor10.length - 1 < stor10.length
                                    stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 + arg2)
                                else:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                            if not stor8[address(arg1)].field_0:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    idx = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > idx:
                                        stor8[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        require 0 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)].field_0 > block.number:
                            if not parentTokenAddress:
                                require arg2 >= 0
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 + arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), block.number
                                else:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), parentSnapShotBlock
                                require ext_call.success
                                require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 + arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            if 0 == stor8[address(arg1)].field_0:
                                require arg2 >= 0
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 + arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2 >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 + arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                else:
                                    require 0 < stor8[address(arg1)].field_0
                                    if block.number < stor8[address(arg1)].field_0:
                                        require arg2 >= 0
                                        if not stor10.length:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                        else:
                                            require stor10.length - 1 < stor10.length
                                            if stor10[stor10.length].field_0 >= block.number:
                                                require stor10.length - 1 < stor10.length
                                                stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 + arg2)
                                            else:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    idx = stor10.length + 1
                                                    while stor10.length > idx:
                                                        stor10[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                        if not stor8[address(arg1)].field_0:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                        else:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                            else:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor8[address(arg1)].field_0 - 1 > idx:
                                            require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                            mem[0] = sha3(address(arg1), 8)
                                            if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                                s = idx + stor8[address(arg1)].field_0 / 2
                                                idx = idx
                                                continue 
                                            s = idx + stor8[address(arg1)].field_0 / 2
                                            idx = idx + stor8[address(arg1)].field_0 / 2
                                            continue 
                                        require idx < stor8[address(arg1)].field_0
                                        require stor8[address(arg1)][idx].field_128 + arg2 >= stor8[address(arg1)][idx].field_128
                                        if not stor10.length:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                        else:
                                            require stor10.length - 1 < stor10.length
                                            if stor10[stor10.length].field_0 >= block.number:
                                                require stor10.length - 1 < stor10.length
                                                stor10[stor10.length].field_0 = uint128(stor10[stor10.length].field_0 + arg2)
                                            else:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    s = stor10.length + 1
                                                    while stor10.length > s:
                                                        stor10[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
                                        if not stor8[address(arg1)].field_0:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                s = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > s:
                                                    stor8[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                        else:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                            else:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    s = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > s:
                                                        stor8[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                else:
                    require 0 < stor10.length
                    if block.number < uint128(stor10.field_0):
                        require arg2 >= 0
                        if not stor8[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require arg2 >= 0
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), block.number
                                else:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), parentSnapShotBlock
                                require ext_call.success
                                require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        idx = stor10.length + 1
                                        while stor10.length > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require 0 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require arg2 >= 0
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require ext_code.size(parentTokenAddress)
                                    if block.number < parentSnapShotBlock:
                                        call parentTokenAddress.0x4ee2cd7e with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), block.number
                                    else:
                                        call parentTokenAddress.0x4ee2cd7e with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), parentSnapShotBlock
                                    require ext_call.success
                                    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                if 0 == stor8[address(arg1)].field_0:
                                    require arg2 >= 0
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            idx = stor10.length + 1
                                            while stor10.length > idx:
                                                stor10[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2 >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                                        if not stor10.length:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                idx = stor10.length + 1
                                                while stor10.length > idx:
                                                    stor10[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(arg2)
                                        else:
                                            require stor10.length - 1 < stor10.length
                                            if stor10[stor10.length].field_0 >= block.number:
                                                require stor10.length - 1 < stor10.length
                                                stor10[stor10.length].field_0 = uint128(arg2)
                                            else:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    idx = stor10.length + 1
                                                    while stor10.length > idx:
                                                        stor10[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(arg2)
                                        if not stor8[address(arg1)].field_0:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                        else:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                            else:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                    else:
                                        require 0 < stor8[address(arg1)].field_0
                                        if block.number < stor8[address(arg1)].field_0:
                                            require arg2 >= 0
                                            if not stor10.length:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    idx = stor10.length + 1
                                                    while stor10.length > idx:
                                                        stor10[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(arg2)
                                            else:
                                                require stor10.length - 1 < stor10.length
                                                if stor10[stor10.length].field_0 >= block.number:
                                                    require stor10.length - 1 < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(arg2)
                                                else:
                                                    stor10.length++
                                                    if not stor10.length <= stor10.length + 1:
                                                        idx = stor10.length + 1
                                                        while stor10.length > idx:
                                                            stor10[idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor10.length < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(block.number)
                                                    stor10[stor10.length].field_128 = uint128(arg2)
                                            if not stor8[address(arg1)].field_0:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                            else:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                                else:
                                                    stor8[address(arg1)].field_0++
                                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                        idx = stor8[address(arg1)].field_0 + 1
                                                        while stor8[address(arg1)].field_0 > idx:
                                                            stor8[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                        else:
                                            s = 0
                                            idx = 0
                                            while stor8[address(arg1)].field_0 - 1 > idx:
                                                require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 8)
                                                if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
                                                    s = idx + stor8[address(arg1)].field_0 / 2
                                                    idx = idx
                                                    continue 
                                                s = idx + stor8[address(arg1)].field_0 / 2
                                                idx = idx + stor8[address(arg1)].field_0 / 2
                                                continue 
                                            require idx < stor8[address(arg1)].field_0
                                            require stor8[address(arg1)][idx].field_128 + arg2 >= stor8[address(arg1)][idx].field_128
                                            if not stor10.length:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    s = stor10.length + 1
                                                    while stor10.length > s:
                                                        stor10[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(arg2)
                                            else:
                                                require stor10.length - 1 < stor10.length
                                                if stor10[stor10.length].field_0 >= block.number:
                                                    require stor10.length - 1 < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(arg2)
                                                else:
                                                    stor10.length++
                                                    if not stor10.length <= stor10.length + 1:
                                                        s = stor10.length + 1
                                                        while stor10.length > s:
                                                            stor10[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor10.length < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(block.number)
                                                    stor10[stor10.length].field_128 = uint128(arg2)
                                            if not stor8[address(arg1)].field_0:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    s = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > s:
                                                        stor8[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                            else:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                                                else:
                                                    stor8[address(arg1)].field_0++
                                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                        s = stor8[address(arg1)].field_0 + 1
                                                        while stor8[address(arg1)].field_0 > s:
                                                            stor8[address(arg1)][s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][idx].field_128)
                    else:
                        s = 0
                        idx = 0
                        while stor10.length - 1 > idx:
                            require idx + stor10.length / 2 < stor10.length
                            mem[0] = 10
                            if stor10[0.5 / idx + stor10.length].field_0 > block.number:
                                s = idx + stor10.length / 2
                                idx = idx
                                continue 
                            s = idx + stor10.length / 2
                            idx = idx + stor10.length / 2
                            continue 
                        require idx < stor10.length
                        require stor10[idx].field_128 + arg2 >= stor10[idx].field_128
                        if not stor8[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require arg2 >= 0
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        s = stor10.length + 1
                                        while stor10.length > s:
                                            stor10[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 + arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), block.number
                                else:
                                    call parentTokenAddress.0x4ee2cd7e with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), parentSnapShotBlock
                                require ext_call.success
                                require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                                if not stor10.length:
                                    stor10.length++
                                    if not stor10.length <= stor10.length + 1:
                                        s = stor10.length + 1
                                        while stor10.length > s:
                                            stor10[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                else:
                                    require stor10.length - 1 < stor10.length
                                    if stor10[stor10.length].field_0 >= block.number:
                                        require stor10.length - 1 < stor10.length
                                        stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 + arg2)
                                    else:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                if not stor8[address(arg1)].field_0:
                                    stor8[address(arg1)].field_0++
                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                        idx = stor8[address(arg1)].field_0 + 1
                                        while stor8[address(arg1)].field_0 > idx:
                                            stor8[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                    else:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require 0 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require arg2 >= 0
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 + arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require ext_code.size(parentTokenAddress)
                                    if block.number < parentSnapShotBlock:
                                        call parentTokenAddress.0x4ee2cd7e with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), block.number
                                    else:
                                        call parentTokenAddress.0x4ee2cd7e with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), parentSnapShotBlock
                                    require ext_call.success
                                    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 + arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                if 0 == stor8[address(arg1)].field_0:
                                    require arg2 >= 0
                                    if not stor10.length:
                                        stor10.length++
                                        if not stor10.length <= stor10.length + 1:
                                            s = stor10.length + 1
                                            while stor10.length > s:
                                                stor10[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                    else:
                                        require stor10.length - 1 < stor10.length
                                        if stor10[stor10.length].field_0 >= block.number:
                                            require stor10.length - 1 < stor10.length
                                            stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 + arg2)
                                        else:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                    if not stor8[address(arg1)].field_0:
                                        stor8[address(arg1)].field_0++
                                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                            idx = stor8[address(arg1)].field_0 + 1
                                            while stor8[address(arg1)].field_0 > idx:
                                                stor8[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                    if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
                                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                        require stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2 >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
                                        if not stor10.length:
                                            stor10.length++
                                            if not stor10.length <= stor10.length + 1:
                                                s = stor10.length + 1
                                                while stor10.length > s:
                                                    stor10[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                        else:
                                            require stor10.length - 1 < stor10.length
                                            if stor10[stor10.length].field_0 >= block.number:
                                                require stor10.length - 1 < stor10.length
                                                stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 + arg2)
                                            else:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    s = stor10.length + 1
                                                    while stor10.length > s:
                                                        stor10[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                        if not stor8[address(arg1)].field_0:
                                            stor8[address(arg1)].field_0++
                                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                idx = stor8[address(arg1)].field_0 + 1
                                                while stor8[address(arg1)].field_0 > idx:
                                                    stor8[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                        else:
                                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                            else:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][stor8[address(arg1)].field_0].field_0)
                                    else:
                                        require 0 < stor8[address(arg1)].field_0
                                        if block.number < stor8[address(arg1)].field_0:
                                            require arg2 >= 0
                                            if not stor10.length:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    s = stor10.length + 1
                                                    while stor10.length > s:
                                                        stor10[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                            else:
                                                require stor10.length - 1 < stor10.length
                                                if stor10[stor10.length].field_0 >= block.number:
                                                    require stor10.length - 1 < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 + arg2)
                                                else:
                                                    stor10.length++
                                                    if not stor10.length <= stor10.length + 1:
                                                        s = stor10.length + 1
                                                        while stor10.length > s:
                                                            stor10[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor10.length < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(block.number)
                                                    stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                            if not stor8[address(arg1)].field_0:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                            else:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2)
                                                else:
                                                    stor8[address(arg1)].field_0++
                                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                        idx = stor8[address(arg1)].field_0 + 1
                                                        while stor8[address(arg1)].field_0 > idx:
                                                            stor8[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                                        else:
                                            t = 0
                                            s = 0
                                            while stor8[address(arg1)].field_0 - 1 > s:
                                                require s + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 8)
                                                if stor8[address(arg1)][0.5 / s + stor8[address(arg1)].field_0].field_0 > block.number:
                                                    t = s + stor8[address(arg1)].field_0 / 2
                                                    s = s
                                                    continue 
                                                t = s + stor8[address(arg1)].field_0 / 2
                                                s = s + stor8[address(arg1)].field_0 / 2
                                                continue 
                                            require s < stor8[address(arg1)].field_0
                                            require stor8[address(arg1)][s].field_128 + arg2 >= stor8[address(arg1)][s].field_128
                                            if not stor10.length:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    t = stor10.length + 1
                                                    while stor10.length > t:
                                                        stor10[t].field_0 = 0
                                                        t = t + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                            else:
                                                require stor10.length - 1 < stor10.length
                                                if stor10[stor10.length].field_0 >= block.number:
                                                    require stor10.length - 1 < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(stor10[idx].field_128 + arg2)
                                                else:
                                                    stor10.length++
                                                    if not stor10.length <= stor10.length + 1:
                                                        t = stor10.length + 1
                                                        while stor10.length > t:
                                                            stor10[t].field_0 = 0
                                                            t = t + 1
                                                            continue 
                                                    require stor10.length < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(block.number)
                                                    stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
                                            if not stor8[address(arg1)].field_0:
                                                stor8[address(arg1)].field_0++
                                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                    idx = stor8[address(arg1)].field_0 + 1
                                                    while stor8[address(arg1)].field_0 > idx:
                                                        stor8[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][s].field_128)
                                            else:
                                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(arg2 + stor8[address(arg1)][s].field_128)
                                                else:
                                                    stor8[address(arg1)].field_0++
                                                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                                        idx = stor8[address(arg1)].field_0 + 1
                                                        while stor8[address(arg1)].field_0 > idx:
                                                            stor8[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2 + stor8[address(arg1)][s].field_128)
    emit Transfer(arg2, 0, arg1);
    return 1
}



}
