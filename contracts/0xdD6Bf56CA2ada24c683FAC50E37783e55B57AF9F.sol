contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - createCloneToken(string arg1, uint8 arg2, string arg3, uint256 arg4, bool arg5)
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
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function enableTransfers(bool arg1) {
    require msg.sender == controllerAddress
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

function totalSupplyAt(uint256 arg1) {
    if not stor10.length:
        if not parentTokenAddress:
            return 0
        if arg1 < parentSnapShotBlock:
            if ext_code.size(parentTokenAddress):
                call parentTokenAddress.0x981b24d0 with:
                     gas gas_remaining - 710 wei
                    args arg1
                if ext_call.success:
                    return ext_call.return_data[0]
        else:
            if ext_code.size(parentTokenAddress):
                call parentTokenAddress.0x981b24d0 with:
                     gas gas_remaining - 710 wei
                    args parentSnapShotBlock
                if ext_call.success:
                    return ext_call.return_data[0]
    else:
        if 0 < stor10.length:
            if uint128(stor10.field_0) > arg1:
                if not parentTokenAddress:
                    return 0
                if arg1 < parentSnapShotBlock:
                    if ext_code.size(parentTokenAddress):
                        call parentTokenAddress.0x981b24d0 with:
                             gas gas_remaining - 710 wei
                            args arg1
                        if ext_call.success:
                            return ext_call.return_data[0]
                else:
                    if ext_code.size(parentTokenAddress):
                        call parentTokenAddress.0x981b24d0 with:
                             gas gas_remaining - 710 wei
                            args parentSnapShotBlock
                        if ext_call.success:
                            return ext_call.return_data[0]
            else:
                if not stor10.length:
                    return 0
                if stor10.length - 1 < stor10.length:
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
                                require stor10.length + idx / 2 < stor10.length
                                mem[0] = 10
                                if stor10[0.5 / stor10.length + idx].field_0 > arg1:
                                    s = stor10.length + idx / 2
                                    idx = idx
                                    continue 
                                s = stor10.length + idx / 2
                                idx = stor10.length + idx / 2
                                continue 
                            if idx < stor10.length:
                                return stor10[idx].field_128
    revert
}

function totalSupply() {
    if not stor10.length:
        if not parentTokenAddress:
            return 0
        if block.number < parentSnapShotBlock:
            if ext_code.size(parentTokenAddress):
                call parentTokenAddress.0x981b24d0 with:
                     gas gas_remaining - 710 wei
                    args block.number
                if ext_call.success:
                    return ext_call.return_data[0]
        else:
            if ext_code.size(parentTokenAddress):
                call parentTokenAddress.0x981b24d0 with:
                     gas gas_remaining - 710 wei
                    args parentSnapShotBlock
                if ext_call.success:
                    return ext_call.return_data[0]
    else:
        if 0 < stor10.length:
            if uint128(stor10.field_0) > block.number:
                if not parentTokenAddress:
                    return 0
                if block.number < parentSnapShotBlock:
                    if ext_code.size(parentTokenAddress):
                        call parentTokenAddress.0x981b24d0 with:
                             gas gas_remaining - 710 wei
                            args block.number
                        if ext_call.success:
                            return ext_call.return_data[0]
                else:
                    if ext_code.size(parentTokenAddress):
                        call parentTokenAddress.0x981b24d0 with:
                             gas gas_remaining - 710 wei
                            args parentSnapShotBlock
                        if ext_call.success:
                            return ext_call.return_data[0]
            else:
                if not stor10.length:
                    return 0
                if stor10.length - 1 < stor10.length:
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
                                require stor10.length + idx / 2 < stor10.length
                                mem[0] = 10
                                if stor10[0.5 / stor10.length + idx].field_0 > block.number:
                                    s = stor10.length + idx / 2
                                    idx = idx
                                    continue 
                                s = stor10.length + idx / 2
                                idx = stor10.length + idx / 2
                                continue 
                            if idx < stor10.length:
                                return stor10[idx].field_128
    revert
}

function balanceOfAt(address arg1, uint256 arg2) {
    if not stor8[address(arg1)].field_0:
        if not parentTokenAddress:
            return 0
        if arg2 < parentSnapShotBlock:
            if ext_code.size(parentTokenAddress):
                call parentTokenAddress.0x4ee2cd7e with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2
                if ext_call.success:
                    return ext_call.return_data[0]
        else:
            if ext_code.size(parentTokenAddress):
                call parentTokenAddress.0x4ee2cd7e with:
                     gas gas_remaining - 710 wei
                    args address(arg1), parentSnapShotBlock
                if ext_call.success:
                    return ext_call.return_data[0]
    else:
        if 0 < stor8[address(arg1)].field_0:
            if stor8[address(arg1)].field_0 > arg2:
                if not parentTokenAddress:
                    return 0
                if arg2 < parentSnapShotBlock:
                    if ext_code.size(parentTokenAddress):
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2
                        if ext_call.success:
                            return ext_call.return_data[0]
                else:
                    if ext_code.size(parentTokenAddress):
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), parentSnapShotBlock
                        if ext_call.success:
                            return ext_call.return_data[0]
            else:
                if not stor8[address(arg1)].field_0:
                    return 0
                if stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0:
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
                                require stor8[address(arg1)].field_0 + idx / 2 < stor8[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
                                if stor8[address(arg1)][0.5 / stor8[address(arg1)].field_0 + idx].field_0 > arg2:
                                    s = stor8[address(arg1)].field_0 + idx / 2
                                    idx = idx
                                    continue 
                                s = stor8[address(arg1)].field_0 + idx / 2
                                idx = stor8[address(arg1)].field_0 + idx / 2
                                continue 
                            if idx < stor8[address(arg1)].field_0:
                                return stor8[address(arg1)][idx].field_128
    revert
}

function balanceOf(address arg1) {
    if not stor8[address(arg1)].field_0:
        if not parentTokenAddress:
            return 0
        if block.number < parentSnapShotBlock:
            if ext_code.size(parentTokenAddress):
                call parentTokenAddress.0x4ee2cd7e with:
                     gas gas_remaining - 710 wei
                    args address(arg1), block.number
                if ext_call.success:
                    return ext_call.return_data[0]
        else:
            if ext_code.size(parentTokenAddress):
                call parentTokenAddress.0x4ee2cd7e with:
                     gas gas_remaining - 710 wei
                    args address(arg1), parentSnapShotBlock
                if ext_call.success:
                    return ext_call.return_data[0]
    else:
        if 0 < stor8[address(arg1)].field_0:
            if stor8[address(arg1)].field_0 > block.number:
                if not parentTokenAddress:
                    return 0
                if block.number < parentSnapShotBlock:
                    if ext_code.size(parentTokenAddress):
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), block.number
                        if ext_call.success:
                            return ext_call.return_data[0]
                else:
                    if ext_code.size(parentTokenAddress):
                        call parentTokenAddress.0x4ee2cd7e with:
                             gas gas_remaining - 710 wei
                            args address(arg1), parentSnapShotBlock
                        if ext_call.success:
                            return ext_call.return_data[0]
            else:
                if not stor8[address(arg1)].field_0:
                    return 0
                if stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0:
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
                                require stor8[address(arg1)].field_0 + idx / 2 < stor8[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
                                if stor8[address(arg1)][0.5 / stor8[address(arg1)].field_0 + idx].field_0 > block.number:
                                    s = stor8[address(arg1)].field_0 + idx / 2
                                    idx = idx
                                    continue 
                                s = stor8[address(arg1)].field_0 + idx / 2
                                idx = stor8[address(arg1)].field_0 + idx / 2
                                continue 
                            if idx < stor8[address(arg1)].field_0:
                                return stor8[address(arg1)][idx].field_128
    revert
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require transfersEnabled
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    if not controllerAddress:
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
        mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = this.address
        mem[ceil32(arg3.length) + 228] = 128
        mem[ceil32(arg3.length) + 260] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                if ext_code.size(arg1):
                    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining - 710 wei
                        args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                    if ext_call.success:
                        return 1
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                if ext_code.size(arg1):
                    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                    if ext_call.success:
                        return 1
        else:
            mem[ceil32(arg3.length) + 292] = mem[128]
            mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            if ext_code.size(arg1):
                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
                if ext_call.success:
                    return 1
    else:
        if ext_code.size(controllerAddress) <= 0:
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, arg1);
            mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 132] = msg.sender
            mem[ceil32(arg3.length) + 164] = arg2
            mem[ceil32(arg3.length) + 196] = this.address
            mem[ceil32(arg3.length) + 228] = 128
            mem[ceil32(arg3.length) + 260] = arg3.length
            if not arg3.length:
                if not arg3.length % 32:
                    if ext_code.size(arg1):
                        call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                        if ext_call.success:
                            return 1
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                    if ext_code.size(arg1):
                        call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                        if ext_call.success:
                            return 1
            else:
                mem[ceil32(arg3.length) + 292] = mem[128]
                mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                if ext_code.size(arg1):
                    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
                    if ext_call.success:
                        return 1
        else:
            if ext_code.size(controllerAddress):
                call controllerAddress.onApprove(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(arg1), arg2
                if ext_call.success:
                    require ext_call.return_data[0]
                    allowance[address(msg.sender)][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, arg1);
                    mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 132] = msg.sender
                    mem[ceil32(arg3.length) + 164] = arg2
                    mem[ceil32(arg3.length) + 196] = this.address
                    mem[ceil32(arg3.length) + 228] = 128
                    mem[ceil32(arg3.length) + 260] = arg3.length
                    if not arg3.length:
                        if not arg3.length % 32:
                            if ext_code.size(arg1):
                                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining - 710 wei
                                    args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                                if ext_call.success:
                                    return 1
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                            if ext_code.size(arg1):
                                call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                                if ext_call.success:
                                    return 1
                    else:
                        mem[ceil32(arg3.length) + 292] = mem[128]
                        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        if ext_code.size(arg1):
                            call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
                            if ext_call.success:
                                return 1
    revert
}

function destroyTokens(address arg1, uint256 arg2) {
    require msg.sender == controllerAddress
    if not stor10.length:
        require 0 >= arg2
        if not stor10.length:
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    stor10[idx].field_0 = 0
                    stor10[idx].field_0 = stor10[idx].field_0
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
                        stor10[idx].field_0 = stor10[idx].field_0
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
                        stor10[idx].field_0 = stor10[idx].field_0
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
                            stor10[idx].field_0 = stor10[idx].field_0
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
                            stor10[idx].field_0 = stor10[idx].field_0
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
                                stor10[idx].field_0 = stor10[idx].field_0
                                idx = idx + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(-arg2)
            else:
                s = 0
                idx = 0
                while stor10.length - 1 > idx:
                    require stor10.length + idx / 2 < stor10.length
                    mem[0] = 10
                    if stor10[0.5 / stor10.length + idx].field_0 > block.number:
                        s = stor10.length + idx / 2
                        idx = idx
                        continue 
                    s = stor10.length + idx / 2
                    idx = stor10.length + idx / 2
                    continue 
                require idx < stor10.length
                require stor10[idx].field_128 >= arg2
                if not stor10.length:
                    stor10.length++
                    if not stor10.length <= stor10.length + 1:
                        s = stor10.length + 1
                        while stor10.length > s:
                            stor10[s].field_0 = 0
                            stor10[s].field_0 = stor10[s].field_0
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
                                stor10[s].field_0 = stor10[s].field_0
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
                        stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                            stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                        stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                            stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                            stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                                stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                            stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                                stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
        else:
            if not stor8[address(arg1)].field_0:
                require 0 >= arg2
                if not stor8[address(arg1)].field_0:
                    stor8[address(arg1)].field_0++
                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                        idx = stor8[address(arg1)].field_0 + 1
                        while stor8[address(arg1)].field_0 > idx:
                            stor8[address(arg1)][idx].field_0 = 0
                            stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                                stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                                stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                                    stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                                    stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                                        stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        s = 0
                        idx = 0
                        while stor8[address(arg1)].field_0 - 1 > idx:
                            require stor8[address(arg1)].field_0 + idx / 2 < stor8[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 8)
                            if stor8[address(arg1)][0.5 / stor8[address(arg1)].field_0 + idx].field_0 > block.number:
                                s = stor8[address(arg1)].field_0 + idx / 2
                                idx = idx
                                continue 
                            s = stor8[address(arg1)].field_0 + idx / 2
                            idx = stor8[address(arg1)].field_0 + idx / 2
                            continue 
                        require idx < stor8[address(arg1)].field_0
                        require stor8[address(arg1)][idx].field_128 >= arg2
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                s = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > s:
                                    stor8[address(arg1)][s].field_0 = 0
                                    stor8[address(arg1)][s].field_0 = stor8[address(arg1)][s].field_0
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
                                        stor8[address(arg1)][s].field_0 = stor8[address(arg1)][s].field_0
                                        s = s + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 - arg2)
    emit Transfer(arg2, arg1, 0);
    return 1
}

function generateTokens(address arg1, uint256 arg2) {
    require msg.sender == controllerAddress
    if not stor10.length:
        require arg2 >= 0
        if not stor10.length:
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    stor10[idx].field_0 = 0
                    stor10[idx].field_0 = stor10[idx].field_0
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
                        stor10[idx].field_0 = stor10[idx].field_0
                        idx = idx + 1
                        continue 
                require stor10.length < stor10.length
                stor10[stor10.length].field_0 = uint128(block.number)
                stor10[stor10.length].field_128 = uint128(arg2)
    else:
        require stor10.length - 1 < stor10.length
        if block.number >= stor10[stor10.length].field_0:
            require stor10.length - 1 < stor10.length
            require stor10[stor10.length].field_0 + arg2 >= stor10[stor10.length].field_0
            if not stor10.length:
                stor10.length++
                if not stor10.length <= stor10.length + 1:
                    idx = stor10.length + 1
                    while stor10.length > idx:
                        stor10[idx].field_0 = 0
                        stor10[idx].field_0 = stor10[idx].field_0
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
                            stor10[idx].field_0 = stor10[idx].field_0
                            idx = idx + 1
                            continue 
                    require stor10.length < stor10.length
                    stor10[stor10.length].field_0 = uint128(block.number)
                    stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 + arg2)
        else:
            require 0 < stor10.length
            if block.number < uint128(stor10.field_0):
                require arg2 >= 0
                if not stor10.length:
                    stor10.length++
                    if not stor10.length <= stor10.length + 1:
                        idx = stor10.length + 1
                        while stor10.length > idx:
                            stor10[idx].field_0 = 0
                            stor10[idx].field_0 = stor10[idx].field_0
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
                                stor10[idx].field_0 = stor10[idx].field_0
                                idx = idx + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(arg2)
            else:
                s = 0
                idx = 0
                while stor10.length - 1 > idx:
                    require stor10.length + idx / 2 < stor10.length
                    mem[0] = 10
                    if stor10[0.5 / stor10.length + idx].field_0 > block.number:
                        s = stor10.length + idx / 2
                        idx = idx
                        continue 
                    s = stor10.length + idx / 2
                    idx = stor10.length + idx / 2
                    continue 
                require idx < stor10.length
                require stor10[idx].field_128 + arg2 >= stor10[idx].field_128
                if not stor10.length:
                    stor10.length++
                    if not stor10.length <= stor10.length + 1:
                        s = stor10.length + 1
                        while stor10.length > s:
                            stor10[s].field_0 = 0
                            stor10[s].field_0 = stor10[s].field_0
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
                                stor10[s].field_0 = stor10[s].field_0
                                s = s + 1
                                continue 
                        require stor10.length < stor10.length
                        stor10[stor10.length].field_0 = uint128(block.number)
                        stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 + arg2)
    if not stor8[address(arg1)].field_0:
        if not parentTokenAddress:
            require arg2 >= 0
            if not stor8[address(arg1)].field_0:
                stor8[address(arg1)].field_0++
                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                    idx = stor8[address(arg1)].field_0 + 1
                    while stor8[address(arg1)].field_0 > idx:
                        stor8[address(arg1)][idx].field_0 = 0
                        stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                            stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
            if not stor8[address(arg1)].field_0:
                stor8[address(arg1)].field_0++
                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                    idx = stor8[address(arg1)].field_0 + 1
                    while stor8[address(arg1)].field_0 > idx:
                        stor8[address(arg1)][idx].field_0 = 0
                        stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                        idx = idx + 1
                        continue 
                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] + arg2)
            else:
                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] + arg2)
                else:
                    stor8[address(arg1)].field_0++
                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                        idx = stor8[address(arg1)].field_0 + 1
                        while stor8[address(arg1)].field_0 > idx:
                            stor8[address(arg1)][idx].field_0 = 0
                            stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                            idx = idx + 1
                            continue 
                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] + arg2)
    else:
        require 0 < stor8[address(arg1)].field_0
        if stor8[address(arg1)].field_0 > block.number:
            if not parentTokenAddress:
                require arg2 >= 0
                if not stor8[address(arg1)].field_0:
                    stor8[address(arg1)].field_0++
                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                        idx = stor8[address(arg1)].field_0 + 1
                        while stor8[address(arg1)].field_0 > idx:
                            stor8[address(arg1)][idx].field_0 = 0
                            stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                                stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                if not stor8[address(arg1)].field_0:
                    stor8[address(arg1)].field_0++
                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                        idx = stor8[address(arg1)].field_0 + 1
                        while stor8[address(arg1)].field_0 > idx:
                            stor8[address(arg1)][idx].field_0 = 0
                            stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                            idx = idx + 1
                            continue 
                    require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] + arg2)
                else:
                    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                    if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] + arg2)
                    else:
                        stor8[address(arg1)].field_0++
                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                            idx = stor8[address(arg1)].field_0 + 1
                            while stor8[address(arg1)].field_0 > idx:
                                stor8[address(arg1)][idx].field_0 = 0
                                stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] + arg2)
        else:
            if not stor8[address(arg1)].field_0:
                require arg2 >= 0
                if not stor8[address(arg1)].field_0:
                    stor8[address(arg1)].field_0++
                    if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                        idx = stor8[address(arg1)].field_0 + 1
                        while stor8[address(arg1)].field_0 > idx:
                            stor8[address(arg1)][idx].field_0 = 0
                            stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                                stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                    if not stor8[address(arg1)].field_0:
                        stor8[address(arg1)].field_0++
                        if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                            idx = stor8[address(arg1)].field_0 + 1
                            while stor8[address(arg1)].field_0 > idx:
                                stor8[address(arg1)][idx].field_0 = 0
                                stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                                idx = idx + 1
                                continue 
                        require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2)
                    else:
                        require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                        if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2)
                        else:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 + arg2)
                else:
                    require 0 < stor8[address(arg1)].field_0
                    if block.number < stor8[address(arg1)].field_0:
                        require arg2 >= 0
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                idx = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > idx:
                                    stor8[address(arg1)][idx].field_0 = 0
                                    stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
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
                                        stor8[address(arg1)][idx].field_0 = stor8[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        s = 0
                        idx = 0
                        while stor8[address(arg1)].field_0 - 1 > idx:
                            require stor8[address(arg1)].field_0 + idx / 2 < stor8[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 8)
                            if stor8[address(arg1)][0.5 / stor8[address(arg1)].field_0 + idx].field_0 > block.number:
                                s = stor8[address(arg1)].field_0 + idx / 2
                                idx = idx
                                continue 
                            s = stor8[address(arg1)].field_0 + idx / 2
                            idx = stor8[address(arg1)].field_0 + idx / 2
                            continue 
                        require idx < stor8[address(arg1)].field_0
                        require stor8[address(arg1)][idx].field_128 + arg2 >= stor8[address(arg1)][idx].field_128
                        if not stor8[address(arg1)].field_0:
                            stor8[address(arg1)].field_0++
                            if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                s = stor8[address(arg1)].field_0 + 1
                                while stor8[address(arg1)].field_0 > s:
                                    stor8[address(arg1)][s].field_0 = 0
                                    stor8[address(arg1)][s].field_0 = stor8[address(arg1)][s].field_0
                                    s = s + 1
                                    continue 
                            require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 + arg2)
                        else:
                            require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                            if stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 >= block.number:
                                require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(stor8[address(arg1)][idx].field_128 + arg2)
                            else:
                                stor8[address(arg1)].field_0++
                                if not stor8[address(arg1)].field_0 <= stor8[address(arg1)].field_0 + 1:
                                    s = stor8[address(arg1)].field_0 + 1
                                    while stor8[address(arg1)].field_0 > s:
                                        stor8[address(arg1)][s].field_0 = 0
                                        stor8[address(arg1)][s].field_0 = stor8[address(arg1)][s].field_0
                                        s = s + 1
                                        continue 
                                require stor8[address(arg1)].field_0 < stor8[address(arg1)].field_0
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor8[address(arg1)][stor8[address(arg1)].field_0].field_128 = uint128(stor8[address(arg1)][idx].field_128 + arg2)
    emit Transfer(arg2, 0, arg1);
    return 1
}



}
