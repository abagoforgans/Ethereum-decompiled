contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint8 stor12;
address stor12; offset 8
uint8 stor14;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 7
    stor4.length.field_8 = 'MMT_0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor14 = 1
    require not msg.value
    stor0 = msg.sender
    address(stor12.field_8) = address(code.data[8365 len 32])
    bool(stor1.length) = 0
    stor1.length.field_1 = 11
    stor1.length.field_8 = 'YOYOW Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    bool(stor3.length) = 0
    stor3.length.field_1 = 5
    stor3.length.field_8 = 'YOYOW' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor7 = 0
    uint8(stor12.field_0) = 1
    stor8 = block.number
    stor5 = msg.sender
    return code.data[669 len 7696]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
address controllerAddress;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address generatorAddress;
address parentTokenAddress;
uint256 parentSnapShotBlock;
uint256 creationBlock;
array of struct stor9;
mapping of uint256 allowance;
array of struct stor11;
uint8 stor12;
address tokenFactoryAddress; offset 8
mapping of address keys;
uint8 showValue;

function name() {
    return name[0 len name.length]
}

function creationBlock() {
    return creationBlock
}

function showValue() {
    return bool(showValue)
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function keys(address arg1) {
    return keys[arg1]
}

function generator() {
    return generatorAddress
}

function parentToken() {
    return parentTokenAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transfersEnabled() {
    return bool(stor12)
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
    stor12 = uint8(arg1)
}

function enableShowValue(bool arg1) {
    require controllerAddress == msg.sender
    showValue = uint8(arg1)
}

function changeGenerator(address arg1) {
    require generatorAddress == msg.sender
    generatorAddress = arg1
}

function register(address arg1) {
    keys[address(msg.sender)] = arg1
    emit RegisterNewKey(msg.sender, arg1);
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
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
    require stor12
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
    require stor12
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
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function totalSupplyAt(uint256 arg1) {
    if not stor11.length:
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
    require 0 < stor11.length
    if uint128(stor11.field_0) > arg1:
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
    if 0 == stor11.length:
        return 0
    require stor11.length - 1 < stor11.length
    if arg1 >= stor11[stor11.length].field_0:
        if stor11.length - 1 < stor11.length:
            return stor11[stor11.length].field_0
    else:
        if 0 < stor11.length:
            if arg1 < uint128(stor11.field_0):
                return 0
            s = 0
            idx = 0
            while stor11.length - 1 > idx:
                require idx + stor11.length / 2 < stor11.length
                mem[0] = 11
                if stor11[0.5 / idx + stor11.length].field_0 > arg1:
                    s = idx + stor11.length / 2
                    idx = idx
                    continue 
                s = idx + stor11.length / 2
                idx = idx + stor11.length / 2
                continue 
            if idx < stor11.length:
                return stor11[idx].field_128
    revert
}

function totalSupply() {
    if not stor11.length:
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
    require 0 < stor11.length
    if uint128(stor11.field_0) > block.number:
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
    if 0 == stor11.length:
        return 0
    require stor11.length - 1 < stor11.length
    if block.number >= stor11[stor11.length].field_0:
        if stor11.length - 1 < stor11.length:
            return stor11[stor11.length].field_0
    else:
        if 0 < stor11.length:
            if block.number < uint128(stor11.field_0):
                return 0
            s = 0
            idx = 0
            while stor11.length - 1 > idx:
                require idx + stor11.length / 2 < stor11.length
                mem[0] = 11
                if stor11[0.5 / idx + stor11.length].field_0 > block.number:
                    s = idx + stor11.length / 2
                    idx = idx
                    continue 
                s = idx + stor11.length / 2
                idx = idx + stor11.length / 2
                continue 
            if idx < stor11.length:
                return stor11[idx].field_128
    revert
}

function balanceOfAt(address arg1, uint256 arg2) {
    if not stor9[address(arg1)].field_0:
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
    require 0 < stor9[address(arg1)].field_0
    if stor9[address(arg1)].field_0 > arg2:
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
    if 0 == stor9[address(arg1)].field_0:
        return 0
    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
    if arg2 >= stor9[address(arg1)][stor9[address(arg1)].field_0].field_0:
        if stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0:
            return stor9[address(arg1)][stor9[address(arg1)].field_0].field_0
    else:
        if 0 < stor9[address(arg1)].field_0:
            if arg2 < stor9[address(arg1)].field_0:
                return 0
            s = 0
            idx = 0
            while stor9[address(arg1)].field_0 - 1 > idx:
                require idx + stor9[address(arg1)].field_0 / 2 < stor9[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 9)
                if stor9[address(arg1)][0.5 / idx + stor9[address(arg1)].field_0].field_0 > arg2:
                    s = idx + stor9[address(arg1)].field_0 / 2
                    idx = idx
                    continue 
                s = idx + stor9[address(arg1)].field_0 / 2
                idx = idx + stor9[address(arg1)].field_0 / 2
                continue 
            if idx < stor9[address(arg1)].field_0:
                return stor9[address(arg1)][idx].field_128
    revert
}

function balanceOf(address arg1) {
    if not showValue:
        return 0
    if not stor9[address(arg1)].field_0:
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
    require 0 < stor9[address(arg1)].field_0
    if stor9[address(arg1)].field_0 > block.number:
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
    if 0 == stor9[address(arg1)].field_0:
        return 0
    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
    if block.number >= stor9[address(arg1)][stor9[address(arg1)].field_0].field_0:
        if stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0:
            return stor9[address(arg1)][stor9[address(arg1)].field_0].field_0
    else:
        if 0 < stor9[address(arg1)].field_0:
            if block.number < stor9[address(arg1)].field_0:
                return 0
            s = 0
            idx = 0
            while stor9[address(arg1)].field_0 - 1 > idx:
                require idx + stor9[address(arg1)].field_0 / 2 < stor9[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 9)
                if stor9[address(arg1)][0.5 / idx + stor9[address(arg1)].field_0].field_0 > block.number:
                    s = idx + stor9[address(arg1)].field_0 / 2
                    idx = idx
                    continue 
                s = idx + stor9[address(arg1)].field_0 / 2
                idx = idx + stor9[address(arg1)].field_0 / 2
                continue 
            if idx < stor9[address(arg1)].field_0:
                return stor9[address(arg1)][idx].field_128
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
            call tokenFactoryAddress.createCloneToken(address rg1, uint256 rg2, string rg3, uint8 rg4, string rg5, bool rg6) with:
                 gas gas_remaining - 710 wei
                args address(this.address), arg4, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg3.length) + 388 len arg3.length + arg1.length + -ceil32(arg1.length) + 32]), arg2 << 248, arg1.length + 224, arg5
        else:
            mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.createCloneToken(address rg1, uint256 rg2, string rg3, uint8 rg4, string rg5, bool rg6) with:
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
            call tokenFactoryAddress.createCloneToken(address rg1, uint256 rg2, string rg3, uint8 rg4, string rg5, bool rg6) with:
                 gas gas_remaining - 710 wei
                args address(this.address), block.number, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg3.length) + 388 len arg3.length + arg1.length + -ceil32(arg1.length) + 32]), arg2 << 248, arg1.length + 224, arg5
        else:
            mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.createCloneToken(address rg1, uint256 rg2, string rg3, uint8 rg4, string rg5, bool rg6) with:
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
    if 0 == stor11.length:
        require 0 >= arg2
        if not stor11.length:
            stor11.length++
            if not stor11.length <= stor11.length + 1:
                idx = stor11.length + 1
                while stor11.length > idx:
                    stor11[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            require stor11.length < stor11.length
            stor11[stor11.length].field_0 = uint128(block.number)
            stor11[stor11.length].field_128 = uint128(-arg2)
        else:
            require stor11.length - 1 < stor11.length
            if stor11[stor11.length].field_0 >= block.number:
                require stor11.length - 1 < stor11.length
                stor11[stor11.length].field_0 = uint128(-arg2)
            else:
                stor11.length++
                if not stor11.length <= stor11.length + 1:
                    idx = stor11.length + 1
                    while stor11.length > idx:
                        stor11[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor11.length < stor11.length
                stor11[stor11.length].field_0 = uint128(block.number)
                stor11[stor11.length].field_128 = uint128(-arg2)
    else:
        require stor11.length - 1 < stor11.length
        if block.number >= stor11[stor11.length].field_0:
            require stor11.length - 1 < stor11.length
            require stor11[stor11.length].field_0 >= arg2
            if not stor11.length:
                stor11.length++
                if not stor11.length <= stor11.length + 1:
                    idx = stor11.length + 1
                    while stor11.length > idx:
                        stor11[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor11.length < stor11.length
                stor11[stor11.length].field_0 = uint128(block.number)
                stor11[stor11.length].field_128 = uint128(stor11[stor11.length].field_0 - arg2)
            else:
                require stor11.length - 1 < stor11.length
                if stor11[stor11.length].field_0 >= block.number:
                    require stor11.length - 1 < stor11.length
                    stor11[stor11.length].field_0 = uint128(stor11[stor11.length].field_0 - arg2)
                else:
                    stor11.length++
                    if not stor11.length <= stor11.length + 1:
                        idx = stor11.length + 1
                        while stor11.length > idx:
                            stor11[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor11.length < stor11.length
                    stor11[stor11.length].field_0 = uint128(block.number)
                    stor11[stor11.length].field_128 = uint128(stor11[stor11.length].field_0 - arg2)
        else:
            require 0 < stor11.length
            if block.number < uint128(stor11.field_0):
                require 0 >= arg2
                if not stor11.length:
                    stor11.length++
                    if not stor11.length <= stor11.length + 1:
                        idx = stor11.length + 1
                        while stor11.length > idx:
                            stor11[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor11.length < stor11.length
                    stor11[stor11.length].field_0 = uint128(block.number)
                    stor11[stor11.length].field_128 = uint128(-arg2)
                else:
                    require stor11.length - 1 < stor11.length
                    if stor11[stor11.length].field_0 >= block.number:
                        require stor11.length - 1 < stor11.length
                        stor11[stor11.length].field_0 = uint128(-arg2)
                    else:
                        stor11.length++
                        if not stor11.length <= stor11.length + 1:
                            idx = stor11.length + 1
                            while stor11.length > idx:
                                stor11[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor11.length < stor11.length
                        stor11[stor11.length].field_0 = uint128(block.number)
                        stor11[stor11.length].field_128 = uint128(-arg2)
            else:
                s = 0
                idx = 0
                while stor11.length - 1 > idx:
                    require idx + stor11.length / 2 < stor11.length
                    mem[0] = 11
                    if stor11[0.5 / idx + stor11.length].field_0 > block.number:
                        s = idx + stor11.length / 2
                        idx = idx
                        continue 
                    s = idx + stor11.length / 2
                    idx = idx + stor11.length / 2
                    continue 
                require idx < stor11.length
                require stor11[idx].field_128 >= arg2
                if not stor11.length:
                    stor11.length++
                    if not stor11.length <= stor11.length + 1:
                        s = stor11.length + 1
                        while stor11.length > s:
                            stor11[s].field_0 = 0
                            s = s + 1
                            continue 
                    require stor11.length < stor11.length
                    stor11[stor11.length].field_0 = uint128(block.number)
                    stor11[stor11.length].field_128 = uint128(stor11[idx].field_128 - arg2)
                else:
                    require stor11.length - 1 < stor11.length
                    if stor11[stor11.length].field_0 >= block.number:
                        require stor11.length - 1 < stor11.length
                        stor11[stor11.length].field_0 = uint128(stor11[idx].field_128 - arg2)
                    else:
                        stor11.length++
                        if not stor11.length <= stor11.length + 1:
                            s = stor11.length + 1
                            while stor11.length > s:
                                stor11[s].field_0 = 0
                                s = s + 1
                                continue 
                        require stor11.length < stor11.length
                        stor11[stor11.length].field_0 = uint128(block.number)
                        stor11[stor11.length].field_128 = uint128(stor11[idx].field_128 - arg2)
    if not showValue:
        require 0 >= arg2
        if not stor9[address(arg1)].field_0:
            stor9[address(arg1)].field_0++
            if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                idx = stor9[address(arg1)].field_0 + 1
                while stor9[address(arg1)].field_0 > idx:
                    stor9[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
            stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(-arg2)
        else:
            require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
            if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(-arg2)
            else:
                stor9[address(arg1)].field_0++
                if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                    idx = stor9[address(arg1)].field_0 + 1
                    while stor9[address(arg1)].field_0 > idx:
                        stor9[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(-arg2)
    else:
        if not stor9[address(arg1)].field_0:
            if not parentTokenAddress:
                require 0 >= arg2
                if not stor9[address(arg1)].field_0:
                    stor9[address(arg1)].field_0++
                    if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                        idx = stor9[address(arg1)].field_0 + 1
                        while stor9[address(arg1)].field_0 > idx:
                            stor9[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(-arg2)
                else:
                    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                    if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(-arg2)
                    else:
                        stor9[address(arg1)].field_0++
                        if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                            idx = stor9[address(arg1)].field_0 + 1
                            while stor9[address(arg1)].field_0 > idx:
                                stor9[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                if not stor9[address(arg1)].field_0:
                    stor9[address(arg1)].field_0++
                    if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                        idx = stor9[address(arg1)].field_0 + 1
                        while stor9[address(arg1)].field_0 > idx:
                            stor9[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                    if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        stor9[address(arg1)].field_0++
                        if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                            idx = stor9[address(arg1)].field_0 + 1
                            while stor9[address(arg1)].field_0 > idx:
                                stor9[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
        else:
            require 0 < stor9[address(arg1)].field_0
            if stor9[address(arg1)].field_0 > block.number:
                if not parentTokenAddress:
                    require 0 >= arg2
                    if not stor9[address(arg1)].field_0:
                        stor9[address(arg1)].field_0++
                        if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                            idx = stor9[address(arg1)].field_0 + 1
                            while stor9[address(arg1)].field_0 > idx:
                                stor9[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                            require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor9[address(arg1)].field_0++
                            if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                idx = stor9[address(arg1)].field_0 + 1
                                while stor9[address(arg1)].field_0 > idx:
                                    stor9[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                    if not stor9[address(arg1)].field_0:
                        stor9[address(arg1)].field_0++
                        if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                            idx = stor9[address(arg1)].field_0 + 1
                            while stor9[address(arg1)].field_0 > idx:
                                stor9[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                            require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor9[address(arg1)].field_0++
                            if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                idx = stor9[address(arg1)].field_0 + 1
                                while stor9[address(arg1)].field_0 > idx:
                                    stor9[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
            else:
                if 0 == stor9[address(arg1)].field_0:
                    require 0 >= arg2
                    if not stor9[address(arg1)].field_0:
                        stor9[address(arg1)].field_0++
                        if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                            idx = stor9[address(arg1)].field_0 + 1
                            while stor9[address(arg1)].field_0 > idx:
                                stor9[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                            require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor9[address(arg1)].field_0++
                            if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                idx = stor9[address(arg1)].field_0 + 1
                                while stor9[address(arg1)].field_0 > idx:
                                    stor9[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(-arg2)
                else:
                    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                    if block.number >= stor9[address(arg1)][stor9[address(arg1)].field_0].field_0:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        require stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= arg2
                        if not stor9[address(arg1)].field_0:
                            stor9[address(arg1)].field_0++
                            if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                idx = stor9[address(arg1)].field_0 + 1
                                while stor9[address(arg1)].field_0 > idx:
                                    stor9[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 - arg2)
                        else:
                            require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                            if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                                require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 - arg2)
                            else:
                                stor9[address(arg1)].field_0++
                                if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                    idx = stor9[address(arg1)].field_0 + 1
                                    while stor9[address(arg1)].field_0 > idx:
                                        stor9[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 - arg2)
                    else:
                        require 0 < stor9[address(arg1)].field_0
                        if block.number < stor9[address(arg1)].field_0:
                            require 0 >= arg2
                            if not stor9[address(arg1)].field_0:
                                stor9[address(arg1)].field_0++
                                if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                    idx = stor9[address(arg1)].field_0 + 1
                                    while stor9[address(arg1)].field_0 > idx:
                                        stor9[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                                if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                                    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor9[address(arg1)].field_0++
                                    if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                        idx = stor9[address(arg1)].field_0 + 1
                                        while stor9[address(arg1)].field_0 > idx:
                                            stor9[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            s = 0
                            idx = 0
                            while stor9[address(arg1)].field_0 - 1 > idx:
                                require idx + stor9[address(arg1)].field_0 / 2 < stor9[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 9)
                                if stor9[address(arg1)][0.5 / idx + stor9[address(arg1)].field_0].field_0 > block.number:
                                    s = idx + stor9[address(arg1)].field_0 / 2
                                    idx = idx
                                    continue 
                                s = idx + stor9[address(arg1)].field_0 / 2
                                idx = idx + stor9[address(arg1)].field_0 / 2
                                continue 
                            require idx < stor9[address(arg1)].field_0
                            require stor9[address(arg1)][idx].field_128 >= arg2
                            if not stor9[address(arg1)].field_0:
                                stor9[address(arg1)].field_0++
                                if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                    s = stor9[address(arg1)].field_0 + 1
                                    while stor9[address(arg1)].field_0 > s:
                                        stor9[address(arg1)][s].field_0 = 0
                                        s = s + 1
                                        continue 
                                require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(stor9[address(arg1)][idx].field_128 - arg2)
                            else:
                                require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                                if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                                    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(stor9[address(arg1)][idx].field_128 - arg2)
                                else:
                                    stor9[address(arg1)].field_0++
                                    if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                        s = stor9[address(arg1)].field_0 + 1
                                        while stor9[address(arg1)].field_0 > s:
                                            stor9[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(stor9[address(arg1)][idx].field_128 - arg2)
    emit Transfer(arg2, arg1, 0);
    return 1
}

function generateTokens(address arg1, uint256 arg2) {
    require generatorAddress == msg.sender
    if 0 == stor11.length:
        require arg2 >= 0
        if not stor11.length:
            stor11.length++
            if not stor11.length <= stor11.length + 1:
                idx = stor11.length + 1
                while stor11.length > idx:
                    stor11[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            require stor11.length < stor11.length
            stor11[stor11.length].field_0 = uint128(block.number)
            stor11[stor11.length].field_128 = uint128(arg2)
        else:
            require stor11.length - 1 < stor11.length
            if stor11[stor11.length].field_0 >= block.number:
                require stor11.length - 1 < stor11.length
                stor11[stor11.length].field_0 = uint128(arg2)
            else:
                stor11.length++
                if not stor11.length <= stor11.length + 1:
                    idx = stor11.length + 1
                    while stor11.length > idx:
                        stor11[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor11.length < stor11.length
                stor11[stor11.length].field_0 = uint128(block.number)
                stor11[stor11.length].field_128 = uint128(arg2)
    else:
        require stor11.length - 1 < stor11.length
        if block.number >= stor11[stor11.length].field_0:
            require stor11.length - 1 < stor11.length
            require stor11[stor11.length].field_0 + arg2 >= stor11[stor11.length].field_0
            if not stor11.length:
                stor11.length++
                if not stor11.length <= stor11.length + 1:
                    idx = stor11.length + 1
                    while stor11.length > idx:
                        stor11[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor11.length < stor11.length
                stor11[stor11.length].field_0 = uint128(block.number)
                stor11[stor11.length].field_128 = uint128(stor11[stor11.length].field_0 + arg2)
            else:
                require stor11.length - 1 < stor11.length
                if stor11[stor11.length].field_0 >= block.number:
                    require stor11.length - 1 < stor11.length
                    stor11[stor11.length].field_0 = uint128(stor11[stor11.length].field_0 + arg2)
                else:
                    stor11.length++
                    if not stor11.length <= stor11.length + 1:
                        idx = stor11.length + 1
                        while stor11.length > idx:
                            stor11[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor11.length < stor11.length
                    stor11[stor11.length].field_0 = uint128(block.number)
                    stor11[stor11.length].field_128 = uint128(stor11[stor11.length].field_0 + arg2)
        else:
            require 0 < stor11.length
            if block.number < uint128(stor11.field_0):
                require arg2 >= 0
                if not stor11.length:
                    stor11.length++
                    if not stor11.length <= stor11.length + 1:
                        idx = stor11.length + 1
                        while stor11.length > idx:
                            stor11[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor11.length < stor11.length
                    stor11[stor11.length].field_0 = uint128(block.number)
                    stor11[stor11.length].field_128 = uint128(arg2)
                else:
                    require stor11.length - 1 < stor11.length
                    if stor11[stor11.length].field_0 >= block.number:
                        require stor11.length - 1 < stor11.length
                        stor11[stor11.length].field_0 = uint128(arg2)
                    else:
                        stor11.length++
                        if not stor11.length <= stor11.length + 1:
                            idx = stor11.length + 1
                            while stor11.length > idx:
                                stor11[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor11.length < stor11.length
                        stor11[stor11.length].field_0 = uint128(block.number)
                        stor11[stor11.length].field_128 = uint128(arg2)
            else:
                s = 0
                idx = 0
                while stor11.length - 1 > idx:
                    require idx + stor11.length / 2 < stor11.length
                    mem[0] = 11
                    if stor11[0.5 / idx + stor11.length].field_0 > block.number:
                        s = idx + stor11.length / 2
                        idx = idx
                        continue 
                    s = idx + stor11.length / 2
                    idx = idx + stor11.length / 2
                    continue 
                require idx < stor11.length
                require stor11[idx].field_128 + arg2 >= stor11[idx].field_128
                if not stor11.length:
                    stor11.length++
                    if not stor11.length <= stor11.length + 1:
                        s = stor11.length + 1
                        while stor11.length > s:
                            stor11[s].field_0 = 0
                            s = s + 1
                            continue 
                    require stor11.length < stor11.length
                    stor11[stor11.length].field_0 = uint128(block.number)
                    stor11[stor11.length].field_128 = uint128(stor11[idx].field_128 + arg2)
                else:
                    require stor11.length - 1 < stor11.length
                    if stor11[stor11.length].field_0 >= block.number:
                        require stor11.length - 1 < stor11.length
                        stor11[stor11.length].field_0 = uint128(stor11[idx].field_128 + arg2)
                    else:
                        stor11.length++
                        if not stor11.length <= stor11.length + 1:
                            s = stor11.length + 1
                            while stor11.length > s:
                                stor11[s].field_0 = 0
                                s = s + 1
                                continue 
                        require stor11.length < stor11.length
                        stor11[stor11.length].field_0 = uint128(block.number)
                        stor11[stor11.length].field_128 = uint128(stor11[idx].field_128 + arg2)
    if not showValue:
        require arg2 >= 0
        if not stor9[address(arg1)].field_0:
            stor9[address(arg1)].field_0++
            if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                idx = stor9[address(arg1)].field_0 + 1
                while stor9[address(arg1)].field_0 > idx:
                    stor9[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
            stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2)
        else:
            require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
            if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(arg2)
            else:
                stor9[address(arg1)].field_0++
                if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                    idx = stor9[address(arg1)].field_0 + 1
                    while stor9[address(arg1)].field_0 > idx:
                        stor9[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2)
    else:
        if not stor9[address(arg1)].field_0:
            if not parentTokenAddress:
                require arg2 >= 0
                if not stor9[address(arg1)].field_0:
                    stor9[address(arg1)].field_0++
                    if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                        idx = stor9[address(arg1)].field_0 + 1
                        while stor9[address(arg1)].field_0 > idx:
                            stor9[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                    if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(arg2)
                    else:
                        stor9[address(arg1)].field_0++
                        if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                            idx = stor9[address(arg1)].field_0 + 1
                            while stor9[address(arg1)].field_0 > idx:
                                stor9[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2)
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
                if not stor9[address(arg1)].field_0:
                    stor9[address(arg1)].field_0++
                    if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                        idx = stor9[address(arg1)].field_0 + 1
                        while stor9[address(arg1)].field_0 > idx:
                            stor9[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                    if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        stor9[address(arg1)].field_0++
                        if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                            idx = stor9[address(arg1)].field_0 + 1
                            while stor9[address(arg1)].field_0 > idx:
                                stor9[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
        else:
            require 0 < stor9[address(arg1)].field_0
            if stor9[address(arg1)].field_0 > block.number:
                if not parentTokenAddress:
                    require arg2 >= 0
                    if not stor9[address(arg1)].field_0:
                        stor9[address(arg1)].field_0++
                        if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                            idx = stor9[address(arg1)].field_0 + 1
                            while stor9[address(arg1)].field_0 > idx:
                                stor9[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                            require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor9[address(arg1)].field_0++
                            if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                idx = stor9[address(arg1)].field_0 + 1
                                while stor9[address(arg1)].field_0 > idx:
                                    stor9[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2)
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
                    if not stor9[address(arg1)].field_0:
                        stor9[address(arg1)].field_0++
                        if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                            idx = stor9[address(arg1)].field_0 + 1
                            while stor9[address(arg1)].field_0 > idx:
                                stor9[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                            require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            stor9[address(arg1)].field_0++
                            if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                idx = stor9[address(arg1)].field_0 + 1
                                while stor9[address(arg1)].field_0 > idx:
                                    stor9[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
            else:
                if 0 == stor9[address(arg1)].field_0:
                    require arg2 >= 0
                    if not stor9[address(arg1)].field_0:
                        stor9[address(arg1)].field_0++
                        if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                            idx = stor9[address(arg1)].field_0 + 1
                            while stor9[address(arg1)].field_0 > idx:
                                stor9[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                            require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor9[address(arg1)].field_0++
                            if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                idx = stor9[address(arg1)].field_0 + 1
                                while stor9[address(arg1)].field_0 > idx:
                                    stor9[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                    if block.number >= stor9[address(arg1)][stor9[address(arg1)].field_0].field_0:
                        require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                        require stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 + arg2 >= stor9[address(arg1)][stor9[address(arg1)].field_0].field_0
                        if not stor9[address(arg1)].field_0:
                            stor9[address(arg1)].field_0++
                            if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                idx = stor9[address(arg1)].field_0 + 1
                                while stor9[address(arg1)].field_0 > idx:
                                    stor9[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2 + stor9[address(arg1)][stor9[address(arg1)].field_0].field_0)
                        else:
                            require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                            if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                                require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(arg2 + stor9[address(arg1)][stor9[address(arg1)].field_0].field_0)
                            else:
                                stor9[address(arg1)].field_0++
                                if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                    idx = stor9[address(arg1)].field_0 + 1
                                    while stor9[address(arg1)].field_0 > idx:
                                        stor9[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2 + stor9[address(arg1)][stor9[address(arg1)].field_0].field_0)
                    else:
                        require 0 < stor9[address(arg1)].field_0
                        if block.number < stor9[address(arg1)].field_0:
                            require arg2 >= 0
                            if not stor9[address(arg1)].field_0:
                                stor9[address(arg1)].field_0++
                                if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                    idx = stor9[address(arg1)].field_0 + 1
                                    while stor9[address(arg1)].field_0 > idx:
                                        stor9[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                                if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                                    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor9[address(arg1)].field_0++
                                    if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                        idx = stor9[address(arg1)].field_0 + 1
                                        while stor9[address(arg1)].field_0 > idx:
                                            stor9[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            s = 0
                            idx = 0
                            while stor9[address(arg1)].field_0 - 1 > idx:
                                require idx + stor9[address(arg1)].field_0 / 2 < stor9[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 9)
                                if stor9[address(arg1)][0.5 / idx + stor9[address(arg1)].field_0].field_0 > block.number:
                                    s = idx + stor9[address(arg1)].field_0 / 2
                                    idx = idx
                                    continue 
                                s = idx + stor9[address(arg1)].field_0 / 2
                                idx = idx + stor9[address(arg1)].field_0 / 2
                                continue 
                            require idx < stor9[address(arg1)].field_0
                            require stor9[address(arg1)][idx].field_128 + arg2 >= stor9[address(arg1)][idx].field_128
                            if not stor9[address(arg1)].field_0:
                                stor9[address(arg1)].field_0++
                                if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                    s = stor9[address(arg1)].field_0 + 1
                                    while stor9[address(arg1)].field_0 > s:
                                        stor9[address(arg1)][s].field_0 = 0
                                        s = s + 1
                                        continue 
                                require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2 + stor9[address(arg1)][idx].field_128)
                            else:
                                require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                                if stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 >= block.number:
                                    require stor9[address(arg1)].field_0 - 1 < stor9[address(arg1)].field_0
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(arg2 + stor9[address(arg1)][idx].field_128)
                                else:
                                    stor9[address(arg1)].field_0++
                                    if not stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0 + 1:
                                        s = stor9[address(arg1)].field_0 + 1
                                        while stor9[address(arg1)].field_0 > s:
                                            stor9[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor9[address(arg1)].field_0 < stor9[address(arg1)].field_0
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor9[address(arg1)][stor9[address(arg1)].field_0].field_128 = uint128(arg2 + stor9[address(arg1)][idx].field_128)
    emit Transfer(arg2, 0, arg1);
    return 1
}



}
