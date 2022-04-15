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

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 7
    stor4.length.field_8 = 'MMT_0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'Herb Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 8
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'HERB' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 0
    stor11 = 1
    stor7 = block.number
    bool(stor4.length) = 0
    stor4.length.field_1 = 8
    stor4.length.field_8 = 'Herb 1.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[617 len 6141]
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
array of struct stor8;
mapping of uint256 allowance;
array of struct stor10;
uint8 stor11;

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
    return bool(stor11)
}

function parentSnapShotBlock() {
    return parentSnapShotBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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
    require stor11
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



}
