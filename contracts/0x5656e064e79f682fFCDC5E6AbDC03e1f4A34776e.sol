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
address stor11; offset 8
uint256 stor12;
mapping of uint8 stor14;
address stor15;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 7
    stor4.length.field_8 = 'MMT_0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor12 = 20
    require not msg.value
    stor0 = msg.sender
    address(stor11.field_8) = address(code.data[10141 len 32])
    bool(stor1.length) = 0
    stor1.length.field_1 = 20
    stor1.length.field_8 = 'Genaro Network Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 9
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'GNR' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 0
    uint8(stor11.field_0) = 1
    stor7 = block.number
    stor15 = msg.sender
    stor14[address(msg.sender)] = 1
    return code.data[728 len 9413]
}



// =====================  Runtime code  =====================


#
#  - grantVestedTokens(address arg1, uint256 arg2, uint64 arg3, uint64 arg4, uint64 arg5)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - generateTokens(address arg1, uint256 arg2)
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
address tokenFactoryAddress; offset 8
array of struct tokenGrantsCount;
mapping of uint8 stor14;
address stor15;

function tokenGrantsCount(address arg1) {
    return tokenGrantsCount[address(arg1)].field_0
}

function name() {
    return name[0 len name.length]
}

function creationBlock() {
    return creationBlock
}

function grants(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[arg1].field_0
    return tokenGrantsCount[arg1][arg2].field_0, 
           tokenGrantsCount[arg1][arg2].field_256,
           tokenGrantsCount[arg1][arg2].field_512,
           tokenGrantsCount[arg1][arg2].field_512,
           tokenGrantsCount[arg1][arg2].field_640
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

function symbol() {
    return symbol[0 len symbol.length]
}

function transfersEnabled() {
    return bool(stor11)
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

function enableTransfers(bool arg1) {
    require controllerAddress == msg.sender
    stor11 = uint8(arg1)
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function setCanCreateGrants(address arg1, bool arg2) {
    require stor15 == msg.sender
    stor14[address(arg1)] = uint8(arg2)
}

function changeVestingWhitelister(address arg1) {
    require stor15 == msg.sender
    stor14[stor15] = 0
    stor15 = arg1
    stor14[address(arg1)] = 1
}

function lastTokenIsTransferableDate(address arg1) {
    idx = 0
    while idx < tokenGrantsCount[address(arg1)].field_0:
        mem[32] = 13
        require idx < tokenGrantsCount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 13)
        idx = idx + 1
        continue 
    return uint64(block.timestamp)
}

function _fallback() payable {
    require controllerAddress
    require ext_code.size(controllerAddress) > 0
    require ext_code.size(controllerAddress)
    call controllerAddress.0xf48c3054 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require stor11
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    if controllerAddress:
        if ext_code.size(controllerAddress) > 0:
            require ext_code.size(controllerAddress)
            call controllerAddress.0xda682aeb with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(arg1), arg2
            require ext_call.success
            require ext_call.return_data[0]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require stor11
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    if controllerAddress:
        if ext_code.size(controllerAddress) > 0:
            require ext_code.size(controllerAddress)
            call controllerAddress.0xda682aeb with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(arg1), arg2
            require ext_call.success
            require ext_call.return_data[0]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
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

function tokenGrant(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[address(arg1)].field_0
    if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_256,
               0,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_576
    if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_576
    require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
    if tokenGrantsCount[address(arg1)][arg2].field_256:
        require tokenGrantsCount[address(arg1)][arg2].field_256
        require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
    require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
    require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512 > 0
    require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512
    require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) == (tokenGrantsCount[address(arg1)][arg2].field_512 * (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512) - (tokenGrantsCount[address(arg1)][arg2].field_512 * (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512) + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) % tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512)
    return tokenGrantsCount[address(arg1)][arg2].field_0, 
           tokenGrantsCount[address(arg1)][arg2].field_256,
           (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640,
           tokenGrantsCount[address(arg1)][arg2].field_512,
           tokenGrantsCount[address(arg1)][arg2].field_512,
           tokenGrantsCount[address(arg1)][arg2].field_576
}

function createCloneToken(string arg1, uint8 arg2, string arg3, uint256 arg4, bool arg5) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = 0x5b7b72c100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 388 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 388] = arg3.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 420 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if arg4 <= block.number:
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

function transferableTokens(address arg1, uint64 arg2) payable {
    mem[64] = 96
    require not msg.value
    if not tokenGrantsCount[address(arg1)].field_0:
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
    idx = 0
    s = 0
    while idx < tokenGrantsCount[address(arg1)].field_0:
        mem[32] = 13
        require idx < tokenGrantsCount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 13)
        _112 = mem[64]
        mem[64] = mem[64] + 160
        mem[_112] = tokenGrantsCount[address(arg1)][idx].field_0
        mem[_112 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
        mem[_112 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
        mem[_112 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
        mem[_112 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
        if arg2 < tokenGrantsCount[address(arg1)][idx].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][idx].field_256
            require tokenGrantsCount[address(arg1)][idx].field_256 + s >= s
            require tokenGrantsCount[address(arg1)][idx].field_256 + s >= tokenGrantsCount[address(arg1)][idx].field_256
            idx = idx + 1
            s = tokenGrantsCount[address(arg1)][idx].field_256 + s
            continue 
        if arg2 >= tokenGrantsCount[address(arg1)][idx].field_576:
            require tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256
            require s >= s
            require s >= 0
            idx = idx + 1
            s = s
            continue 
        require tokenGrantsCount[address(arg1)][idx].field_640 <= arg2
        if tokenGrantsCount[address(arg1)][idx].field_256:
            require tokenGrantsCount[address(arg1)][idx].field_256
            require (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == arg2 - tokenGrantsCount[address(arg1)][idx].field_512
        require tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576
        require tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512 > 0
        require tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512
        require (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) == (tokenGrantsCount[address(arg1)][idx].field_512 * (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) - (tokenGrantsCount[address(arg1)][idx].field_512 * (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) % tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512)
        require (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256
        require tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s
        require s >= 0
        idx = idx + 1
        s = tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
        continue 
    if not stor8[address(arg1)].field_0:
        if not parentTokenAddress:
            require s <= 0
            return -s
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
        require s <= ext_call.return_data[0]
        return (ext_call.return_data[0] - s)
    require 0 < stor8[address(arg1)].field_0
    if stor8[address(arg1)].field_0 > block.number:
        if not parentTokenAddress:
            require s <= 0
            return -s
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
        require s <= ext_call.return_data[0]
        return (ext_call.return_data[0] - s)
    if 0 == stor8[address(arg1)].field_0:
        require s <= 0
        return -s
    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
    if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
        require s <= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
        return (stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - s)
    require 0 < stor8[address(arg1)].field_0
    if block.number < stor8[address(arg1)].field_0:
        require s <= 0
        return -s
    t = 0
    idx = 0
    while stor8[address(arg1)].field_0 - 1 > idx:
        require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 8)
        if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
            t = idx + stor8[address(arg1)].field_0 / 2
            idx = idx
            continue 
        t = idx + stor8[address(arg1)].field_0 / 2
        idx = idx + stor8[address(arg1)].field_0 / 2
        continue 
    require idx < stor8[address(arg1)].field_0
    require s <= stor8[address(arg1)][idx].field_128
    return (stor8[address(arg1)][idx].field_128 - s)
}

function spendableBalanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    if not tokenGrantsCount[address(arg1)].field_0:
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
    idx = 0
    s = 0
    while idx < tokenGrantsCount[address(arg1)].field_0:
        mem[32] = 13
        require idx < tokenGrantsCount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 13)
        _112 = mem[64]
        mem[64] = mem[64] + 160
        mem[_112] = tokenGrantsCount[address(arg1)][idx].field_0
        mem[_112 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
        mem[_112 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
        mem[_112 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
        mem[_112 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
        if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][idx].field_256
            require tokenGrantsCount[address(arg1)][idx].field_256 + s >= s
            require tokenGrantsCount[address(arg1)][idx].field_256 + s >= tokenGrantsCount[address(arg1)][idx].field_256
            idx = idx + 1
            s = tokenGrantsCount[address(arg1)][idx].field_256 + s
            continue 
        if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_576:
            require tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256
            require s >= s
            require s >= 0
            idx = idx + 1
            s = s
            continue 
        require tokenGrantsCount[address(arg1)][idx].field_640 <= uint64(block.timestamp)
        if tokenGrantsCount[address(arg1)][idx].field_256:
            require tokenGrantsCount[address(arg1)][idx].field_256
            require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_512
        require tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576
        require tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512 > 0
        require tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512
        require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) == (tokenGrantsCount[address(arg1)][idx].field_512 * (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) - (tokenGrantsCount[address(arg1)][idx].field_512 * (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) % tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512)
        require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256
        require tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s
        require s >= 0
        idx = idx + 1
        s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
        continue 
    if not stor8[address(arg1)].field_0:
        if not parentTokenAddress:
            require s <= 0
            return -s
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
        require s <= ext_call.return_data[0]
        return (ext_call.return_data[0] - s)
    require 0 < stor8[address(arg1)].field_0
    if stor8[address(arg1)].field_0 > block.number:
        if not parentTokenAddress:
            require s <= 0
            return -s
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
        require s <= ext_call.return_data[0]
        return (ext_call.return_data[0] - s)
    if 0 == stor8[address(arg1)].field_0:
        require s <= 0
        return -s
    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
    if block.number >= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0:
        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
        require s <= stor8[address(arg1)][stor8[address(arg1)].field_0].field_0
        return (stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 - s)
    require 0 < stor8[address(arg1)].field_0
    if block.number < stor8[address(arg1)].field_0:
        require s <= 0
        return -s
    t = 0
    idx = 0
    while stor8[address(arg1)].field_0 - 1 > idx:
        require idx + stor8[address(arg1)].field_0 / 2 < stor8[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 8)
        if stor8[address(arg1)][0.5 / idx + stor8[address(arg1)].field_0].field_0 > block.number:
            t = idx + stor8[address(arg1)].field_0 / 2
            idx = idx
            continue 
        t = idx + stor8[address(arg1)].field_0 / 2
        idx = idx + stor8[address(arg1)].field_0 / 2
        continue 
    require idx < stor8[address(arg1)].field_0
    require s <= stor8[address(arg1)][idx].field_128
    return (stor8[address(arg1)][idx].field_128 - s)
}

function destroyTokens(address arg1, uint256 arg2) {
    require controllerAddress == msg.sender
    if 0 == stor10.length:
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
    else:
        require stor10.length - 1 < stor10.length
        if block.number >= stor10[stor10.length].field_0:
            require stor10.length - 1 < stor10.length
            require stor10[stor10.length].field_0 >= arg2
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
        else:
            require 0 < stor10.length
            if block.number < uint128(stor10.field_0):
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
        if not parentTokenAddress:
            require 0 >= arg2
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
    emit Transfer(arg2, arg1, 0);
    return 1
}



}
