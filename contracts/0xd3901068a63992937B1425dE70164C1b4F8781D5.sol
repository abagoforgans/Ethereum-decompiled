contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
array of uint256 stor7;
array of uint256 stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint8 stor15;
address stor15; offset 8

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 7
    stor4.length.field_8 = 'MMT_0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor8.length) = 0
    stor8.length.field_1 = 7
    stor8.length.field_8 = 'MMT_0.1' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    address(stor15.field_8) = address(code.data[7666 len 32])
    bool(stor5.length) = 0
    stor5.length.field_1 = 20
    stor5.length.field_8 = 'DataBroker DAO Token' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    bool(stor7.length) = 0
    stor7.length.field_1 = 4
    stor7.length.field_8 = 'DATA' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 0
    stor10 = 0
    uint8(stor15.field_0) = 1
    stor11 = block.number
    return code.data[675 len 6991]
}



// =====================  Runtime code  =====================


#
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
array of struct stor12;
mapping of uint256 allowance;
array of struct stor14;
uint8 transfersEnabled;
address tokenFactoryAddress; offset 8

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

function symbol() {
    return symbol[0 len symbol.length]
}

function transfersEnabled() {
    return bool(transfersEnabled)
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

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function enableTransfers(bool arg1) {
    require controllerAddress == msg.sender
    transfersEnabled = uint8(arg1)
}

function _fallback() payable {
    require controllerAddress
    require ext_code.size(controllerAddress) > 0
    require ext_code.size(controllerAddress)
    call controllerAddress.proxyPayment(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require transfersEnabled
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    if controllerAddress:
        if ext_code.size(controllerAddress) > 0:
            require ext_code.size(controllerAddress)
            call controllerAddress.onApprove(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(arg1), arg2
            require ext_call.success
            require ext_call.return_data[0]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require transfersEnabled
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    if controllerAddress:
        if ext_code.size(controllerAddress) > 0:
            require ext_code.size(controllerAddress)
            call controllerAddress.onApprove(address rg1, address rg2, uint256 rg3) with:
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
    if not stor14.length:
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
    require 0 < stor14.length
    if uint128(stor14.field_0) > arg1:
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
    if 0 == stor14.length:
        return 0
    require stor14.length - 1 < stor14.length
    if arg1 >= stor14[stor14.length].field_0:
        if stor14.length - 1 < stor14.length:
            return stor14[stor14.length].field_0
    else:
        if 0 < stor14.length:
            if arg1 < uint128(stor14.field_0):
                return 0
            s = 0
            idx = 0
            while stor14.length - 1 > idx:
                require idx + stor14.length / 2 < stor14.length
                mem[0] = 14
                if stor14[0.5 / idx + stor14.length].field_0 > arg1:
                    s = idx + stor14.length / 2
                    idx = idx
                    continue 
                s = idx + stor14.length / 2
                idx = idx + stor14.length / 2
                continue 
            if idx < stor14.length:
                return stor14[idx].field_128
    revert
}

function totalSupply() {
    if not stor14.length:
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
    require 0 < stor14.length
    if uint128(stor14.field_0) > block.number:
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
    if 0 == stor14.length:
        return 0
    require stor14.length - 1 < stor14.length
    if block.number >= stor14[stor14.length].field_0:
        if stor14.length - 1 < stor14.length:
            return stor14[stor14.length].field_0
    else:
        if 0 < stor14.length:
            if block.number < uint128(stor14.field_0):
                return 0
            s = 0
            idx = 0
            while stor14.length - 1 > idx:
                require idx + stor14.length / 2 < stor14.length
                mem[0] = 14
                if stor14[0.5 / idx + stor14.length].field_0 > block.number:
                    s = idx + stor14.length / 2
                    idx = idx
                    continue 
                s = idx + stor14.length / 2
                idx = idx + stor14.length / 2
                continue 
            if idx < stor14.length:
                return stor14[idx].field_128
    revert
}

function balanceOfAt(address arg1, uint256 arg2) {
    if not stor12[address(arg1)].field_0:
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
    require 0 < stor12[address(arg1)].field_0
    if stor12[address(arg1)].field_0 > arg2:
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
    if 0 == stor12[address(arg1)].field_0:
        return 0
    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
    if arg2 >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
        if stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0:
            return stor12[address(arg1)][stor12[address(arg1)].field_0].field_0
    else:
        if 0 < stor12[address(arg1)].field_0:
            if arg2 < stor12[address(arg1)].field_0:
                return 0
            s = 0
            idx = 0
            while stor12[address(arg1)].field_0 - 1 > idx:
                require idx + stor12[address(arg1)].field_0 / 2 < stor12[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 12)
                if stor12[address(arg1)][0.5 / idx + stor12[address(arg1)].field_0].field_0 > arg2:
                    s = idx + stor12[address(arg1)].field_0 / 2
                    idx = idx
                    continue 
                s = idx + stor12[address(arg1)].field_0 / 2
                idx = idx + stor12[address(arg1)].field_0 / 2
                continue 
            if idx < stor12[address(arg1)].field_0:
                return stor12[address(arg1)][idx].field_128
    revert
}

function balanceOf(address arg1) {
    if not stor12[address(arg1)].field_0:
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
    require 0 < stor12[address(arg1)].field_0
    if stor12[address(arg1)].field_0 > block.number:
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
    if 0 == stor12[address(arg1)].field_0:
        return 0
    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
    if block.number >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
        if stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0:
            return stor12[address(arg1)][stor12[address(arg1)].field_0].field_0
    else:
        if 0 < stor12[address(arg1)].field_0:
            if block.number < stor12[address(arg1)].field_0:
                return 0
            s = 0
            idx = 0
            while stor12[address(arg1)].field_0 - 1 > idx:
                require idx + stor12[address(arg1)].field_0 / 2 < stor12[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 12)
                if stor12[address(arg1)][0.5 / idx + stor12[address(arg1)].field_0].field_0 > block.number:
                    s = idx + stor12[address(arg1)].field_0 / 2
                    idx = idx
                    continue 
                s = idx + stor12[address(arg1)].field_0 / 2
                idx = idx + stor12[address(arg1)].field_0 / 2
                continue 
            if idx < stor12[address(arg1)].field_0:
                return stor12[address(arg1)][idx].field_128
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

function destroyTokens(address arg1, uint256 arg2) {
    require controllerAddress == msg.sender
    if not stor14.length:
        if not parentTokenAddress:
            require 0 >= arg2
            if not stor12[address(arg1)].field_0:
                if not parentTokenAddress:
                    require 0 >= arg2
                    if not stor14.length:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                stor14[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor14.length < stor14.length
                        stor14[stor14.length].field_0 = uint128(block.number)
                        stor14[stor14.length].field_128 = uint128(-arg2)
                    else:
                        require stor14.length - 1 < stor14.length
                        if stor14[stor14.length].field_0 >= block.number:
                            require stor14.length - 1 < stor14.length
                            stor14[stor14.length].field_0 = uint128(-arg2)
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(-arg2)
                    if not stor12[address(arg1)].field_0:
                        stor12[address(arg1)].field_0++
                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                            idx = stor12[address(arg1)].field_0 + 1
                            while stor12[address(arg1)].field_0 > idx:
                                stor12[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                    if not stor14.length:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                stor14[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor14.length < stor14.length
                        stor14[stor14.length].field_0 = uint128(block.number)
                        stor14[stor14.length].field_128 = uint128(-arg2)
                    else:
                        require stor14.length - 1 < stor14.length
                        if stor14[stor14.length].field_0 >= block.number:
                            require stor14.length - 1 < stor14.length
                            stor14[stor14.length].field_0 = uint128(-arg2)
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(-arg2)
                    if not stor12[address(arg1)].field_0:
                        stor12[address(arg1)].field_0++
                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                            idx = stor12[address(arg1)].field_0 + 1
                            while stor12[address(arg1)].field_0 > idx:
                                stor12[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
            else:
                require 0 < stor12[address(arg1)].field_0
                if stor12[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(-arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(-arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(-arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(-arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    if 0 == stor12[address(arg1)].field_0:
                        require 0 >= arg2
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(-arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(-arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                        if block.number >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            require stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= arg2
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(-arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                        else:
                            require 0 < stor12[address(arg1)].field_0
                            if block.number < stor12[address(arg1)].field_0:
                                require 0 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(-arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                s = 0
                                idx = 0
                                while stor12[address(arg1)].field_0 - 1 > idx:
                                    require idx + stor12[address(arg1)].field_0 / 2 < stor12[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 12)
                                    if stor12[address(arg1)][0.5 / idx + stor12[address(arg1)].field_0].field_0 > block.number:
                                        s = idx + stor12[address(arg1)].field_0 / 2
                                        idx = idx
                                        continue 
                                    s = idx + stor12[address(arg1)].field_0 / 2
                                    idx = idx + stor12[address(arg1)].field_0 / 2
                                    continue 
                                require idx < stor12[address(arg1)].field_0
                                require stor12[address(arg1)][idx].field_128 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        s = stor14.length + 1
                                        while stor14.length > s:
                                            stor14[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(-arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            s = stor14.length + 1
                                            while stor14.length > s:
                                                stor14[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        s = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > s:
                                            stor12[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            s = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > s:
                                                stor12[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
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
            if not stor12[address(arg1)].field_0:
                if not parentTokenAddress:
                    require 0 >= arg2
                    if not stor14.length:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                stor14[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor14.length < stor14.length
                        stor14[stor14.length].field_0 = uint128(block.number)
                        stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor14.length - 1 < stor14.length
                        if stor14[stor14.length].field_0 >= block.number:
                            require stor14.length - 1 < stor14.length
                            stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    if not stor12[address(arg1)].field_0:
                        stor12[address(arg1)].field_0++
                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                            idx = stor12[address(arg1)].field_0 + 1
                            while stor12[address(arg1)].field_0 > idx:
                                stor12[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                    if not stor14.length:
                        stor14.length++
                        if not stor14.length <= stor14.length + 1:
                            idx = stor14.length + 1
                            while stor14.length > idx:
                                stor14[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor14.length < stor14.length
                        stor14[stor14.length].field_0 = uint128(block.number)
                        stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor14.length - 1 < stor14.length
                        if stor14[stor14.length].field_0 >= block.number:
                            require stor14.length - 1 < stor14.length
                            stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    if not stor12[address(arg1)].field_0:
                        stor12[address(arg1)].field_0++
                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                            idx = stor12[address(arg1)].field_0 + 1
                            while stor12[address(arg1)].field_0 > idx:
                                stor12[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
            else:
                require 0 < stor12[address(arg1)].field_0
                if stor12[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    if 0 == stor12[address(arg1)].field_0:
                        require 0 >= arg2
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                        if block.number >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            require stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= arg2
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                        else:
                            require 0 < stor12[address(arg1)].field_0
                            if block.number < stor12[address(arg1)].field_0:
                                require 0 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                s = 0
                                idx = 0
                                while stor12[address(arg1)].field_0 - 1 > idx:
                                    require idx + stor12[address(arg1)].field_0 / 2 < stor12[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 12)
                                    if stor12[address(arg1)][0.5 / idx + stor12[address(arg1)].field_0].field_0 > block.number:
                                        s = idx + stor12[address(arg1)].field_0 / 2
                                        idx = idx
                                        continue 
                                    s = idx + stor12[address(arg1)].field_0 / 2
                                    idx = idx + stor12[address(arg1)].field_0 / 2
                                    continue 
                                require idx < stor12[address(arg1)].field_0
                                require stor12[address(arg1)][idx].field_128 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        s = stor14.length + 1
                                        while stor14.length > s:
                                            stor14[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            s = stor14.length + 1
                                            while stor14.length > s:
                                                stor14[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        s = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > s:
                                            stor12[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            s = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > s:
                                                stor12[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
    else:
        require 0 < stor14.length
        if uint128(stor14.field_0) > block.number:
            if not parentTokenAddress:
                require 0 >= arg2
                if not stor12[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(-arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(-arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(-arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(-arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require 0 < stor12[address(arg1)].field_0
                    if stor12[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(-arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(-arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if 0 == stor12[address(arg1)].field_0:
                            require 0 >= arg2
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(-arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if block.number >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                require stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(-arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor12[address(arg1)].field_0
                                if block.number < stor12[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(-arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                idx = stor14.length + 1
                                                while stor14.length > idx:
                                                    stor14[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(-arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor12[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor12[address(arg1)].field_0 / 2 < stor12[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 12)
                                        if stor12[address(arg1)][0.5 / idx + stor12[address(arg1)].field_0].field_0 > block.number:
                                            s = idx + stor12[address(arg1)].field_0 / 2
                                            idx = idx
                                            continue 
                                        s = idx + stor12[address(arg1)].field_0 / 2
                                        idx = idx + stor12[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor12[address(arg1)].field_0
                                    require stor12[address(arg1)][idx].field_128 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            s = stor14.length + 1
                                            while stor14.length > s:
                                                stor14[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(-arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                s = stor14.length + 1
                                                while stor14.length > s:
                                                    stor14[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(-arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            s = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > s:
                                                stor12[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                s = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > s:
                                                    stor12[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
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
                if not stor12[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require 0 < stor12[address(arg1)].field_0
                    if stor12[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if 0 == stor12[address(arg1)].field_0:
                            require 0 >= arg2
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if block.number >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                require stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor12[address(arg1)].field_0
                                if block.number < stor12[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                idx = stor14.length + 1
                                                while stor14.length > idx:
                                                    stor14[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor12[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor12[address(arg1)].field_0 / 2 < stor12[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 12)
                                        if stor12[address(arg1)][0.5 / idx + stor12[address(arg1)].field_0].field_0 > block.number:
                                            s = idx + stor12[address(arg1)].field_0 / 2
                                            idx = idx
                                            continue 
                                        s = idx + stor12[address(arg1)].field_0 / 2
                                        idx = idx + stor12[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor12[address(arg1)].field_0
                                    require stor12[address(arg1)][idx].field_128 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            s = stor14.length + 1
                                            while stor14.length > s:
                                                stor14[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                s = stor14.length + 1
                                                while stor14.length > s:
                                                    stor14[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            s = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > s:
                                                stor12[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                s = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > s:
                                                    stor12[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
        else:
            if 0 == stor14.length:
                require 0 >= arg2
                if not stor12[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(-arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(-arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                        if not stor14.length:
                            stor14.length++
                            if not stor14.length <= stor14.length + 1:
                                idx = stor14.length + 1
                                while stor14.length > idx:
                                    stor14[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor14.length < stor14.length
                            stor14[stor14.length].field_0 = uint128(block.number)
                            stor14[stor14.length].field_128 = uint128(-arg2)
                        else:
                            require stor14.length - 1 < stor14.length
                            if stor14[stor14.length].field_0 >= block.number:
                                require stor14.length - 1 < stor14.length
                                stor14[stor14.length].field_0 = uint128(-arg2)
                            else:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                        if not stor12[address(arg1)].field_0:
                            stor12[address(arg1)].field_0++
                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                idx = stor12[address(arg1)].field_0 + 1
                                while stor12[address(arg1)].field_0 > idx:
                                    stor12[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require 0 < stor12[address(arg1)].field_0
                    if stor12[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(-arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(-arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if 0 == stor12[address(arg1)].field_0:
                            require 0 >= arg2
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(-arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(-arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                            if block.number >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                require stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(-arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor12[address(arg1)].field_0
                                if block.number < stor12[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(-arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                idx = stor14.length + 1
                                                while stor14.length > idx:
                                                    stor14[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(-arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor12[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor12[address(arg1)].field_0 / 2 < stor12[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 12)
                                        if stor12[address(arg1)][0.5 / idx + stor12[address(arg1)].field_0].field_0 > block.number:
                                            s = idx + stor12[address(arg1)].field_0 / 2
                                            idx = idx
                                            continue 
                                        s = idx + stor12[address(arg1)].field_0 / 2
                                        idx = idx + stor12[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor12[address(arg1)].field_0
                                    require stor12[address(arg1)][idx].field_128 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            s = stor14.length + 1
                                            while stor14.length > s:
                                                stor14[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(-arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                s = stor14.length + 1
                                                while stor14.length > s:
                                                    stor14[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(-arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            s = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > s:
                                                stor12[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                s = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > s:
                                                    stor12[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
            else:
                require stor14.length - 1 < stor14.length
                if block.number >= stor14[stor14.length].field_0:
                    require stor14.length - 1 < stor14.length
                    require stor14[stor14.length].field_0 >= arg2
                    if not stor12[address(arg1)].field_0:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(stor14[stor14.length].field_0 - arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                            if not stor14.length:
                                stor14.length++
                                if not stor14.length <= stor14.length + 1:
                                    idx = stor14.length + 1
                                    while stor14.length > idx:
                                        stor14[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor14.length < stor14.length
                                stor14[stor14.length].field_0 = uint128(block.number)
                                stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                            else:
                                require stor14.length - 1 < stor14.length
                                if stor14[stor14.length].field_0 >= block.number:
                                    require stor14.length - 1 < stor14.length
                                    stor14[stor14.length].field_0 = uint128(stor14[stor14.length].field_0 - arg2)
                                else:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                            if not stor12[address(arg1)].field_0:
                                stor12[address(arg1)].field_0++
                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                    idx = stor12[address(arg1)].field_0 + 1
                                    while stor12[address(arg1)].field_0 > idx:
                                        stor12[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require 0 < stor12[address(arg1)].field_0
                        if stor12[address(arg1)].field_0 > block.number:
                            if not parentTokenAddress:
                                require 0 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(stor14[stor14.length].field_0 - arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(stor14[stor14.length].field_0 - arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            if 0 == stor12[address(arg1)].field_0:
                                require 0 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(stor14[stor14.length].field_0 - arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                if block.number >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    require stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(stor14[stor14.length].field_0 - arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                idx = stor14.length + 1
                                                while stor14.length > idx:
                                                    stor14[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require 0 < stor12[address(arg1)].field_0
                                    if block.number < stor12[address(arg1)].field_0:
                                        require 0 >= arg2
                                        if not stor14.length:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                idx = stor14.length + 1
                                                while stor14.length > idx:
                                                    stor14[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                        else:
                                            require stor14.length - 1 < stor14.length
                                            if stor14[stor14.length].field_0 >= block.number:
                                                require stor14.length - 1 < stor14.length
                                                stor14[stor14.length].field_0 = uint128(stor14[stor14.length].field_0 - arg2)
                                            else:
                                                stor14.length++
                                                if not stor14.length <= stor14.length + 1:
                                                    idx = stor14.length + 1
                                                    while stor14.length > idx:
                                                        stor14[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor14.length < stor14.length
                                                stor14[stor14.length].field_0 = uint128(block.number)
                                                stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                        if not stor12[address(arg1)].field_0:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                            else:
                                                stor12[address(arg1)].field_0++
                                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                    idx = stor12[address(arg1)].field_0 + 1
                                                    while stor12[address(arg1)].field_0 > idx:
                                                        stor12[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor12[address(arg1)].field_0 - 1 > idx:
                                            require idx + stor12[address(arg1)].field_0 / 2 < stor12[address(arg1)].field_0
                                            mem[0] = sha3(address(arg1), 12)
                                            if stor12[address(arg1)][0.5 / idx + stor12[address(arg1)].field_0].field_0 > block.number:
                                                s = idx + stor12[address(arg1)].field_0 / 2
                                                idx = idx
                                                continue 
                                            s = idx + stor12[address(arg1)].field_0 / 2
                                            idx = idx + stor12[address(arg1)].field_0 / 2
                                            continue 
                                        require idx < stor12[address(arg1)].field_0
                                        require stor12[address(arg1)][idx].field_128 >= arg2
                                        if not stor14.length:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                s = stor14.length + 1
                                                while stor14.length > s:
                                                    stor14[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                        else:
                                            require stor14.length - 1 < stor14.length
                                            if stor14[stor14.length].field_0 >= block.number:
                                                require stor14.length - 1 < stor14.length
                                                stor14[stor14.length].field_0 = uint128(stor14[stor14.length].field_0 - arg2)
                                            else:
                                                stor14.length++
                                                if not stor14.length <= stor14.length + 1:
                                                    s = stor14.length + 1
                                                    while stor14.length > s:
                                                        stor14[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor14.length < stor14.length
                                                stor14[stor14.length].field_0 = uint128(block.number)
                                                stor14[stor14.length].field_128 = uint128(stor14[stor14.length].field_0 - arg2)
                                        if not stor12[address(arg1)].field_0:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                s = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > s:
                                                    stor12[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                            else:
                                                stor12[address(arg1)].field_0++
                                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                    s = stor12[address(arg1)].field_0 + 1
                                                    while stor12[address(arg1)].field_0 > s:
                                                        stor12[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                else:
                    require 0 < stor14.length
                    if block.number < uint128(stor14.field_0):
                        require 0 >= arg2
                        if not stor12[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require 0 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(-arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        idx = stor14.length + 1
                                        while stor14.length > idx:
                                            stor14[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(-arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(-arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require 0 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require 0 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(-arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                idx = stor14.length + 1
                                                while stor14.length > idx:
                                                    stor14[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(-arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(-arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                idx = stor14.length + 1
                                                while stor14.length > idx:
                                                    stor14[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(-arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                if 0 == stor12[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            idx = stor14.length + 1
                                            while stor14.length > idx:
                                                stor14[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(-arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                idx = stor14.length + 1
                                                while stor14.length > idx:
                                                    stor14[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(-arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if block.number >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        require stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= arg2
                                        if not stor14.length:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                idx = stor14.length + 1
                                                while stor14.length > idx:
                                                    stor14[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(-arg2)
                                        else:
                                            require stor14.length - 1 < stor14.length
                                            if stor14[stor14.length].field_0 >= block.number:
                                                require stor14.length - 1 < stor14.length
                                                stor14[stor14.length].field_0 = uint128(-arg2)
                                            else:
                                                stor14.length++
                                                if not stor14.length <= stor14.length + 1:
                                                    idx = stor14.length + 1
                                                    while stor14.length > idx:
                                                        stor14[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor14.length < stor14.length
                                                stor14[stor14.length].field_0 = uint128(block.number)
                                                stor14[stor14.length].field_128 = uint128(-arg2)
                                        if not stor12[address(arg1)].field_0:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                            else:
                                                stor12[address(arg1)].field_0++
                                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                    idx = stor12[address(arg1)].field_0 + 1
                                                    while stor12[address(arg1)].field_0 > idx:
                                                        stor12[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require 0 < stor12[address(arg1)].field_0
                                        if block.number < stor12[address(arg1)].field_0:
                                            require 0 >= arg2
                                            if not stor14.length:
                                                stor14.length++
                                                if not stor14.length <= stor14.length + 1:
                                                    idx = stor14.length + 1
                                                    while stor14.length > idx:
                                                        stor14[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor14.length < stor14.length
                                                stor14[stor14.length].field_0 = uint128(block.number)
                                                stor14[stor14.length].field_128 = uint128(-arg2)
                                            else:
                                                require stor14.length - 1 < stor14.length
                                                if stor14[stor14.length].field_0 >= block.number:
                                                    require stor14.length - 1 < stor14.length
                                                    stor14[stor14.length].field_0 = uint128(-arg2)
                                                else:
                                                    stor14.length++
                                                    if not stor14.length <= stor14.length + 1:
                                                        idx = stor14.length + 1
                                                        while stor14.length > idx:
                                                            stor14[idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor14.length < stor14.length
                                                    stor14[stor14.length].field_0 = uint128(block.number)
                                                    stor14[stor14.length].field_128 = uint128(-arg2)
                                            if not stor12[address(arg1)].field_0:
                                                stor12[address(arg1)].field_0++
                                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                    idx = stor12[address(arg1)].field_0 + 1
                                                    while stor12[address(arg1)].field_0 > idx:
                                                        stor12[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                            else:
                                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                                else:
                                                    stor12[address(arg1)].field_0++
                                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                        idx = stor12[address(arg1)].field_0 + 1
                                                        while stor12[address(arg1)].field_0 > idx:
                                                            stor12[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            s = 0
                                            idx = 0
                                            while stor12[address(arg1)].field_0 - 1 > idx:
                                                require idx + stor12[address(arg1)].field_0 / 2 < stor12[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 12)
                                                if stor12[address(arg1)][0.5 / idx + stor12[address(arg1)].field_0].field_0 > block.number:
                                                    s = idx + stor12[address(arg1)].field_0 / 2
                                                    idx = idx
                                                    continue 
                                                s = idx + stor12[address(arg1)].field_0 / 2
                                                idx = idx + stor12[address(arg1)].field_0 / 2
                                                continue 
                                            require idx < stor12[address(arg1)].field_0
                                            require stor12[address(arg1)][idx].field_128 >= arg2
                                            if not stor14.length:
                                                stor14.length++
                                                if not stor14.length <= stor14.length + 1:
                                                    s = stor14.length + 1
                                                    while stor14.length > s:
                                                        stor14[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor14.length < stor14.length
                                                stor14[stor14.length].field_0 = uint128(block.number)
                                                stor14[stor14.length].field_128 = uint128(-arg2)
                                            else:
                                                require stor14.length - 1 < stor14.length
                                                if stor14[stor14.length].field_0 >= block.number:
                                                    require stor14.length - 1 < stor14.length
                                                    stor14[stor14.length].field_0 = uint128(-arg2)
                                                else:
                                                    stor14.length++
                                                    if not stor14.length <= stor14.length + 1:
                                                        s = stor14.length + 1
                                                        while stor14.length > s:
                                                            stor14[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor14.length < stor14.length
                                                    stor14[stor14.length].field_0 = uint128(block.number)
                                                    stor14[stor14.length].field_128 = uint128(-arg2)
                                            if not stor12[address(arg1)].field_0:
                                                stor12[address(arg1)].field_0++
                                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                    s = stor12[address(arg1)].field_0 + 1
                                                    while stor12[address(arg1)].field_0 > s:
                                                        stor12[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                            else:
                                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                                                else:
                                                    stor12[address(arg1)].field_0++
                                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                        s = stor12[address(arg1)].field_0 + 1
                                                        while stor12[address(arg1)].field_0 > s:
                                                            stor12[address(arg1)][s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][idx].field_128 - arg2)
                    else:
                        s = 0
                        idx = 0
                        while stor14.length - 1 > idx:
                            require idx + stor14.length / 2 < stor14.length
                            mem[0] = 14
                            if stor14[0.5 / idx + stor14.length].field_0 > block.number:
                                s = idx + stor14.length / 2
                                idx = idx
                                continue 
                            s = idx + stor14.length / 2
                            idx = idx + stor14.length / 2
                            continue 
                        require idx < stor14.length
                        require stor14[idx].field_128 >= arg2
                        if not stor12[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require 0 >= arg2
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        s = stor14.length + 1
                                        while stor14.length > s:
                                            stor14[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(stor14[idx].field_128 - arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            s = stor14.length + 1
                                            while stor14.length > s:
                                                stor14[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                if not stor14.length:
                                    stor14.length++
                                    if not stor14.length <= stor14.length + 1:
                                        s = stor14.length + 1
                                        while stor14.length > s:
                                            stor14[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor14.length < stor14.length
                                    stor14[stor14.length].field_0 = uint128(block.number)
                                    stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                else:
                                    require stor14.length - 1 < stor14.length
                                    if stor14[stor14.length].field_0 >= block.number:
                                        require stor14.length - 1 < stor14.length
                                        stor14[stor14.length].field_0 = uint128(stor14[idx].field_128 - arg2)
                                    else:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            s = stor14.length + 1
                                            while stor14.length > s:
                                                stor14[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                if not stor12[address(arg1)].field_0:
                                    stor12[address(arg1)].field_0++
                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                        idx = stor12[address(arg1)].field_0 + 1
                                        while stor12[address(arg1)].field_0 > idx:
                                            stor12[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require 0 < stor12[address(arg1)].field_0
                            if stor12[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require 0 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            s = stor14.length + 1
                                            while stor14.length > s:
                                                stor14[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(stor14[idx].field_128 - arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                s = stor14.length + 1
                                                while stor14.length > s:
                                                    stor14[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            s = stor14.length + 1
                                            while stor14.length > s:
                                                stor14[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(stor14[idx].field_128 - arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                s = stor14.length + 1
                                                while stor14.length > s:
                                                    stor14[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                if 0 == stor12[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor14.length:
                                        stor14.length++
                                        if not stor14.length <= stor14.length + 1:
                                            s = stor14.length + 1
                                            while stor14.length > s:
                                                stor14[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor14.length < stor14.length
                                        stor14[stor14.length].field_0 = uint128(block.number)
                                        stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                    else:
                                        require stor14.length - 1 < stor14.length
                                        if stor14[stor14.length].field_0 >= block.number:
                                            require stor14.length - 1 < stor14.length
                                            stor14[stor14.length].field_0 = uint128(stor14[idx].field_128 - arg2)
                                        else:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                s = stor14.length + 1
                                                while stor14.length > s:
                                                    stor14[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                    if not stor12[address(arg1)].field_0:
                                        stor12[address(arg1)].field_0++
                                        if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                            idx = stor12[address(arg1)].field_0 + 1
                                            while stor12[address(arg1)].field_0 > idx:
                                                stor12[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                    if block.number >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
                                        require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                        require stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= arg2
                                        if not stor14.length:
                                            stor14.length++
                                            if not stor14.length <= stor14.length + 1:
                                                s = stor14.length + 1
                                                while stor14.length > s:
                                                    stor14[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor14.length < stor14.length
                                            stor14[stor14.length].field_0 = uint128(block.number)
                                            stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                        else:
                                            require stor14.length - 1 < stor14.length
                                            if stor14[stor14.length].field_0 >= block.number:
                                                require stor14.length - 1 < stor14.length
                                                stor14[stor14.length].field_0 = uint128(stor14[idx].field_128 - arg2)
                                            else:
                                                stor14.length++
                                                if not stor14.length <= stor14.length + 1:
                                                    s = stor14.length + 1
                                                    while stor14.length > s:
                                                        stor14[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor14.length < stor14.length
                                                stor14[stor14.length].field_0 = uint128(block.number)
                                                stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                        if not stor12[address(arg1)].field_0:
                                            stor12[address(arg1)].field_0++
                                            if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                idx = stor12[address(arg1)].field_0 + 1
                                                while stor12[address(arg1)].field_0 > idx:
                                                    stor12[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                            if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                            else:
                                                stor12[address(arg1)].field_0++
                                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                    idx = stor12[address(arg1)].field_0 + 1
                                                    while stor12[address(arg1)].field_0 > idx:
                                                        stor12[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require 0 < stor12[address(arg1)].field_0
                                        if block.number < stor12[address(arg1)].field_0:
                                            require 0 >= arg2
                                            if not stor14.length:
                                                stor14.length++
                                                if not stor14.length <= stor14.length + 1:
                                                    s = stor14.length + 1
                                                    while stor14.length > s:
                                                        stor14[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor14.length < stor14.length
                                                stor14[stor14.length].field_0 = uint128(block.number)
                                                stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                            else:
                                                require stor14.length - 1 < stor14.length
                                                if stor14[stor14.length].field_0 >= block.number:
                                                    require stor14.length - 1 < stor14.length
                                                    stor14[stor14.length].field_0 = uint128(stor14[idx].field_128 - arg2)
                                                else:
                                                    stor14.length++
                                                    if not stor14.length <= stor14.length + 1:
                                                        s = stor14.length + 1
                                                        while stor14.length > s:
                                                            stor14[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor14.length < stor14.length
                                                    stor14[stor14.length].field_0 = uint128(block.number)
                                                    stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                            if not stor12[address(arg1)].field_0:
                                                stor12[address(arg1)].field_0++
                                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                    idx = stor12[address(arg1)].field_0 + 1
                                                    while stor12[address(arg1)].field_0 > idx:
                                                        stor12[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                            else:
                                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(-arg2)
                                                else:
                                                    stor12[address(arg1)].field_0++
                                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                        idx = stor12[address(arg1)].field_0 + 1
                                                        while stor12[address(arg1)].field_0 > idx:
                                                            stor12[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            t = 0
                                            s = 0
                                            while stor12[address(arg1)].field_0 - 1 > s:
                                                require s + stor12[address(arg1)].field_0 / 2 < stor12[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 12)
                                                if stor12[address(arg1)][0.5 / s + stor12[address(arg1)].field_0].field_0 > block.number:
                                                    t = s + stor12[address(arg1)].field_0 / 2
                                                    s = s
                                                    continue 
                                                t = s + stor12[address(arg1)].field_0 / 2
                                                s = s + stor12[address(arg1)].field_0 / 2
                                                continue 
                                            require s < stor12[address(arg1)].field_0
                                            require stor12[address(arg1)][s].field_128 >= arg2
                                            if not stor14.length:
                                                stor14.length++
                                                if not stor14.length <= stor14.length + 1:
                                                    t = stor14.length + 1
                                                    while stor14.length > t:
                                                        stor14[t].field_0 = 0
                                                        t = t + 1
                                                        continue 
                                                require stor14.length < stor14.length
                                                stor14[stor14.length].field_0 = uint128(block.number)
                                                stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                            else:
                                                require stor14.length - 1 < stor14.length
                                                if stor14[stor14.length].field_0 >= block.number:
                                                    require stor14.length - 1 < stor14.length
                                                    stor14[stor14.length].field_0 = uint128(stor14[idx].field_128 - arg2)
                                                else:
                                                    stor14.length++
                                                    if not stor14.length <= stor14.length + 1:
                                                        t = stor14.length + 1
                                                        while stor14.length > t:
                                                            stor14[t].field_0 = 0
                                                            t = t + 1
                                                            continue 
                                                    require stor14.length < stor14.length
                                                    stor14[stor14.length].field_0 = uint128(block.number)
                                                    stor14[stor14.length].field_128 = uint128(stor14[idx].field_128 - arg2)
                                            if not stor12[address(arg1)].field_0:
                                                stor12[address(arg1)].field_0++
                                                if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                    idx = stor12[address(arg1)].field_0 + 1
                                                    while stor12[address(arg1)].field_0 > idx:
                                                        stor12[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][s].field_128 - arg2)
                                            else:
                                                require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                if stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(stor12[address(arg1)][s].field_128 - arg2)
                                                else:
                                                    stor12[address(arg1)].field_0++
                                                    if not stor12[address(arg1)].field_0 <= stor12[address(arg1)].field_0 + 1:
                                                        idx = stor12[address(arg1)].field_0 + 1
                                                        while stor12[address(arg1)].field_0 > idx:
                                                            stor12[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor12[address(arg1)].field_0 < stor12[address(arg1)].field_0
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor12[address(arg1)][stor12[address(arg1)].field_0].field_128 = uint128(stor12[address(arg1)][s].field_128 - arg2)
    emit Transfer(arg2, arg1, 0);
    return 1
}



}
