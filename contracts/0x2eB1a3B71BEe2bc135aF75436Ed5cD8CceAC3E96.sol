contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint8 stor2;
array of uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint8 stor11;
address stor11; offset 32
uint256 stor11; offset 24
uint256 stor11; offset 16
uint256 stor11; offset 8

function _fallback() payable {
    Mask(248, 0, stor11.field_8) = 0
    Mask(240, 0, stor11.field_16) = 0
    Mask(232, 0, stor11.field_24) = 0
    require not msg.value
    mem[96 len -11398] = code.data[12097 len -11398]
    mem[64] = -11302
    stor0 = msg.sender
    address(stor11.field_32) = mem[108 len 20]
    stor1[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor2 = mem[255 len 1]
    stor3[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    stor4 = mem[140 len 20]
    stor5 = mem[160]
    uint8(stor11.field_0) = uint8(bool(mem[288]))
    stor6 = block.number
    return code.data[699 len 11398]
}



// =====================  Runtime code  =====================


#
#  - generateTokens(address arg1, uint256 arg2)
#  - invest(address arg1, uint256 arg2)
#
address stor0;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
address parentTokenAddress;
uint256 parentSnapShotBlock;
uint256 creationBlock;
array of struct stor7;
uint256 preSaleTokenBalances;
mapping of uint256 allowance;
array of struct stor10;
uint8 stor11;
uint8 stor11; offset 8
uint8 stor11; offset 16
uint8 stor11; offset 24
address stor11;
address owner; offset 32
uint256 stor11; offset 24
uint256 stor11; offset 16
uint256 stor11; offset 8
address airDropManagerAddress;
uint256 allowedAirDropTokens;
mapping of uint8 stor14;

function name() {
    return name[0 len name.length]
}

function IsSaleEnabled() {
    return bool(uint8(stor11.field_16))
}

function creationBlock() {
    return creationBlock
}

function airDropManager() {
    return airDropManagerAddress
}

function decimals() {
    return decimals
}

function preSaleTokenBalances() {
    return preSaleTokenBalances
}

function allowedAirDropTokens() {
    return allowedAirDropTokens
}

function parentToken() {
    return parentTokenAddress
}

function IsAirDropEnabled() {
    return bool(uint8(stor11.field_24))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor14[arg1])
}

function IsPreSaleEnabled() {
    return bool(uint8(stor11.field_8))
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

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function setAirDropManager(address arg1) {
    require msg.sender == stor0
    airDropManagerAddress = arg1
}

function enableTransfers(bool arg1) {
    require msg.sender == stor0
    uint8(stor11.field_0) = uint8(arg1)
}

function setSale(bool arg1) {
    require msg.sender == stor0
    Mask(240, 0, stor11.field_16) = Mask(240, 0, arg1)
}

function setPreSale(bool arg1) {
    require msg.sender == stor0
    Mask(248, 0, stor11.field_8) = Mask(248, 0, arg1)
}

function setAirDrop(bool arg1) {
    require msg.sender == stor0
    Mask(232, 0, stor11.field_24) = Mask(232, 0, arg1)
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == stor0
    stor14[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function airDrop(address arg1, uint256 arg2) {
    require msg.sender == airDropManagerAddress
    require arg1
    require arg1 != this.address
    require uint8(stor11.field_24)
    require allowance[address(stor11.field_0)][address(msg.sender)] >= arg2
    allowance[address(stor11.field_0)][address(msg.sender)] -= arg2
    emit Transfer(arg2, owner, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor11.field_0)
    require uint8(stor11.field_16)
    require not uint8(stor11.field_8)
    if arg2:
        if owner != msg.sender:
            require allowance[address(msg.sender)][address(msg.sender)] >= arg2
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor11.field_16)
    require not uint8(stor11.field_8)
    if not arg3:
        emit Transfer(arg3, arg1, arg2);
        return 0
    if owner != msg.sender:
        require allowance[address(arg1)][address(msg.sender)] >= arg3
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    if owner:
        if ext_code.size(owner) > 0:
            require ext_code.size(owner)
            call owner.onApprove(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(arg1), arg2
            require ext_call.success
            require ext_call.return_data[0]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setairDropManagerLimit(uint256 arg1) {
    require msg.sender == stor0
    allowedAirDropTokens = arg1
    if arg1:
        require not allowance[address(msg.sender)][stor12]
    if owner:
        if ext_code.size(owner) > 0:
            require ext_code.size(owner)
            call owner.onApprove(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, airDropManagerAddress, arg1
            require ext_call.success
            require ext_call.return_data[0]
    allowance[address(msg.sender)][stor12] = arg1
    emit Approval(arg1, msg.sender, airDropManagerAddress);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    if owner:
        if ext_code.size(owner) > 0:
            require ext_code.size(owner)
            call owner.onApprove(address arg1, address arg2, uint256 arg3) with:
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
    if not stor10.length:
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
    if not stor10.length:
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
    if not stor7[address(arg1)].field_0:
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
    require 0 < stor7[address(arg1)].field_0
    if stor7[address(arg1)].field_0 > arg2:
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
    if not stor7[address(arg1)].field_0:
        return 0
    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
    if arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
        if stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0:
            return stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
    else:
        if 0 < stor7[address(arg1)].field_0:
            if arg2 < stor7[address(arg1)].field_0:
                return 0
            s = 0
            idx = 0
            while stor7[address(arg1)].field_0 - 1 > idx:
                require stor7[address(arg1)].field_0 + idx / 2 < stor7[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 7)
                if stor7[address(arg1)][0.5 / stor7[address(arg1)].field_0 + idx].field_0 > arg2:
                    s = stor7[address(arg1)].field_0 + idx / 2
                    idx = idx
                    continue 
                s = stor7[address(arg1)].field_0 + idx / 2
                idx = stor7[address(arg1)].field_0 + idx / 2
                continue 
            if idx < stor7[address(arg1)].field_0:
                return stor7[address(arg1)][idx].field_128
    revert
}

function balanceOf(address arg1) {
    if not stor7[address(arg1)].field_0:
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
    require 0 < stor7[address(arg1)].field_0
    if stor7[address(arg1)].field_0 > block.number:
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
    if not stor7[address(arg1)].field_0:
        return 0
    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
    if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
        if stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0:
            return stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
    else:
        if 0 < stor7[address(arg1)].field_0:
            if block.number < stor7[address(arg1)].field_0:
                return 0
            s = 0
            idx = 0
            while stor7[address(arg1)].field_0 - 1 > idx:
                require stor7[address(arg1)].field_0 + idx / 2 < stor7[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 7)
                if stor7[address(arg1)][0.5 / stor7[address(arg1)].field_0 + idx].field_0 > block.number:
                    s = stor7[address(arg1)].field_0 + idx / 2
                    idx = idx
                    continue 
                s = stor7[address(arg1)].field_0 + idx / 2
                idx = stor7[address(arg1)].field_0 + idx / 2
                continue 
            if idx < stor7[address(arg1)].field_0:
                return stor7[address(arg1)][idx].field_128
    revert
}

function destroyAllTokens(address arg1) {
    require msg.sender == stor0
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
        stor10[stor10.length].field_0 = stor10[stor10.length].field_0
    else:
        require stor10.length - 1 < stor10.length
        if stor10[stor10.length].field_0 >= block.number:
            require stor10.length - 1 < stor10.length
            stor10[stor10.length].field_0 = stor10[stor10.length].field_0
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
            stor10[stor10.length].field_0 = stor10[stor10.length].field_0
    if not stor7[address(arg1)].field_0:
        stor7[address(arg1)].field_0++
        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
            idx = stor7[address(arg1)].field_0 + 1
            while stor7[address(arg1)].field_0 > idx:
                stor7[address(arg1)][idx].field_0 = 0
                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                idx = idx + 1
                continue 
        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
    else:
        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
        else:
            stor7[address(arg1)].field_0++
            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                idx = stor7[address(arg1)].field_0 + 1
                while stor7[address(arg1)].field_0 > idx:
                    stor7[address(arg1)][idx].field_0 = 0
                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                    idx = idx + 1
                    continue 
            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
    emit Transfer(0, arg1, 0);
    return 1
}

function destroyTokens(address arg1, uint256 arg2) {
    require msg.sender == stor0
    if not stor10.length:
        if not parentTokenAddress:
            require 0 >= arg2
            if not stor7[address(arg1)].field_0:
                if not parentTokenAddress:
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
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
            else:
                require 0 < stor7[address(arg1)].field_0
                if stor7[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
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
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    if not stor7[address(arg1)].field_0:
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
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
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
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                        else:
                            require 0 < stor7[address(arg1)].field_0
                            if block.number < stor7[address(arg1)].field_0:
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
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                s = 0
                                idx = 0
                                while stor7[address(arg1)].field_0 - 1 > idx:
                                    require stor7[address(arg1)].field_0 + idx / 2 < stor7[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 7)
                                    if stor7[address(arg1)][0.5 / stor7[address(arg1)].field_0 + idx].field_0 > block.number:
                                        s = stor7[address(arg1)].field_0 + idx / 2
                                        idx = idx
                                        continue 
                                    s = stor7[address(arg1)].field_0 + idx / 2
                                    idx = stor7[address(arg1)].field_0 + idx / 2
                                    continue 
                                require idx < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][idx].field_128 >= arg2
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
                                                stor10[s].field_0 = stor10[s].field_0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(-arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        s = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > s:
                                            stor7[address(arg1)][s].field_0 = 0
                                            stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                            s = s + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
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
            if not stor7[address(arg1)].field_0:
                if not parentTokenAddress:
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
                                    stor10[idx].field_0 = stor10[idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                stor10[idx].field_0 = stor10[idx].field_0
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
                                    stor10[idx].field_0 = stor10[idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor10.length < stor10.length
                            stor10[stor10.length].field_0 = uint128(block.number)
                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
            else:
                require 0 < stor7[address(arg1)].field_0
                if stor7[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
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
                                        stor10[idx].field_0 = stor10[idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                    stor10[idx].field_0 = stor10[idx].field_0
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
                                        stor10[idx].field_0 = stor10[idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    if not stor7[address(arg1)].field_0:
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
                                        stor10[idx].field_0 = stor10[idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
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
                                            stor10[idx].field_0 = stor10[idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                        else:
                            require 0 < stor7[address(arg1)].field_0
                            if block.number < stor7[address(arg1)].field_0:
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
                                                stor10[idx].field_0 = stor10[idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                s = 0
                                idx = 0
                                while stor7[address(arg1)].field_0 - 1 > idx:
                                    require stor7[address(arg1)].field_0 + idx / 2 < stor7[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 7)
                                    if stor7[address(arg1)][0.5 / stor7[address(arg1)].field_0 + idx].field_0 > block.number:
                                        s = stor7[address(arg1)].field_0 + idx / 2
                                        idx = idx
                                        continue 
                                    s = stor7[address(arg1)].field_0 + idx / 2
                                    idx = stor7[address(arg1)].field_0 + idx / 2
                                    continue 
                                require idx < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][idx].field_128 >= arg2
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
                                                stor10[s].field_0 = stor10[s].field_0
                                                s = s + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        s = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > s:
                                            stor7[address(arg1)][s].field_0 = 0
                                            stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                            s = s + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
    else:
        require 0 < stor10.length
        if uint128(stor10.field_0) > block.number:
            if not parentTokenAddress:
                require 0 >= arg2
                if not stor7[address(arg1)].field_0:
                    if not parentTokenAddress:
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
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require 0 < stor7[address(arg1)].field_0
                    if stor7[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
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
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if not stor7[address(arg1)].field_0:
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
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
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
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor7[address(arg1)].field_0
                                if block.number < stor7[address(arg1)].field_0:
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
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor7[address(arg1)].field_0 - 1 > idx:
                                        require stor7[address(arg1)].field_0 + idx / 2 < stor7[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 7)
                                        if stor7[address(arg1)][0.5 / stor7[address(arg1)].field_0 + idx].field_0 > block.number:
                                            s = stor7[address(arg1)].field_0 + idx / 2
                                            idx = idx
                                            continue 
                                        s = stor7[address(arg1)].field_0 + idx / 2
                                        idx = stor7[address(arg1)].field_0 + idx / 2
                                        continue 
                                    require idx < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][idx].field_128 >= arg2
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
                                                    stor10[s].field_0 = stor10[s].field_0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(-arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
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
                if not stor7[address(arg1)].field_0:
                    if not parentTokenAddress:
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
                                        stor10[idx].field_0 = stor10[idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                    stor10[idx].field_0 = stor10[idx].field_0
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
                                        stor10[idx].field_0 = stor10[idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor10.length < stor10.length
                                stor10[stor10.length].field_0 = uint128(block.number)
                                stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require 0 < stor7[address(arg1)].field_0
                    if stor7[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
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
                                            stor10[idx].field_0 = stor10[idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                        stor10[idx].field_0 = stor10[idx].field_0
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
                                            stor10[idx].field_0 = stor10[idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if not stor7[address(arg1)].field_0:
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
                                            stor10[idx].field_0 = stor10[idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor10.length < stor10.length
                                    stor10[stor10.length].field_0 = uint128(block.number)
                                    stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
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
                                                stor10[idx].field_0 = stor10[idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor10.length < stor10.length
                                        stor10[stor10.length].field_0 = uint128(block.number)
                                        stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor7[address(arg1)].field_0
                                if block.number < stor7[address(arg1)].field_0:
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
                                                    stor10[idx].field_0 = stor10[idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor7[address(arg1)].field_0 - 1 > idx:
                                        require stor7[address(arg1)].field_0 + idx / 2 < stor7[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 7)
                                        if stor7[address(arg1)][0.5 / stor7[address(arg1)].field_0 + idx].field_0 > block.number:
                                            s = stor7[address(arg1)].field_0 + idx / 2
                                            idx = idx
                                            continue 
                                        s = stor7[address(arg1)].field_0 + idx / 2
                                        idx = stor7[address(arg1)].field_0 + idx / 2
                                        continue 
                                    require idx < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][idx].field_128 >= arg2
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
                                                    stor10[s].field_0 = stor10[s].field_0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
        else:
            if not stor10.length:
                require 0 >= arg2
                if not stor7[address(arg1)].field_0:
                    if not parentTokenAddress:
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
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require 0 < stor7[address(arg1)].field_0
                    if stor7[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
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
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if not stor7[address(arg1)].field_0:
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
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
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
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor7[address(arg1)].field_0
                                if block.number < stor7[address(arg1)].field_0:
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
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    s = 0
                                    idx = 0
                                    while stor7[address(arg1)].field_0 - 1 > idx:
                                        require stor7[address(arg1)].field_0 + idx / 2 < stor7[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 7)
                                        if stor7[address(arg1)][0.5 / stor7[address(arg1)].field_0 + idx].field_0 > block.number:
                                            s = stor7[address(arg1)].field_0 + idx / 2
                                            idx = idx
                                            continue 
                                        s = stor7[address(arg1)].field_0 + idx / 2
                                        idx = stor7[address(arg1)].field_0 + idx / 2
                                        continue 
                                    require idx < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][idx].field_128 >= arg2
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
                                                    stor10[s].field_0 = stor10[s].field_0
                                                    s = s + 1
                                                    continue 
                                            require stor10.length < stor10.length
                                            stor10[stor10.length].field_0 = uint128(block.number)
                                            stor10[stor10.length].field_128 = uint128(-arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
            else:
                require stor10.length - 1 < stor10.length
                if block.number >= stor10[stor10.length].field_0:
                    require stor10.length - 1 < stor10.length
                    require stor10[stor10.length].field_0 >= arg2
                    if not stor7[address(arg1)].field_0:
                        if not parentTokenAddress:
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
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require 0 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)].field_0 > block.number:
                            if not parentTokenAddress:
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
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            if not stor7[address(arg1)].field_0:
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
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
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
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require 0 < stor7[address(arg1)].field_0
                                    if block.number < stor7[address(arg1)].field_0:
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
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        s = 0
                                        idx = 0
                                        while stor7[address(arg1)].field_0 - 1 > idx:
                                            require stor7[address(arg1)].field_0 + idx / 2 < stor7[address(arg1)].field_0
                                            mem[0] = sha3(address(arg1), 7)
                                            if stor7[address(arg1)][0.5 / stor7[address(arg1)].field_0 + idx].field_0 > block.number:
                                                s = stor7[address(arg1)].field_0 + idx / 2
                                                idx = idx
                                                continue 
                                            s = stor7[address(arg1)].field_0 + idx / 2
                                            idx = stor7[address(arg1)].field_0 + idx / 2
                                            continue 
                                        require idx < stor7[address(arg1)].field_0
                                        require stor7[address(arg1)][idx].field_128 >= arg2
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
                                                        stor10[s].field_0 = stor10[s].field_0
                                                        s = s + 1
                                                        continue 
                                                require stor10.length < stor10.length
                                                stor10[stor10.length].field_0 = uint128(block.number)
                                                stor10[stor10.length].field_128 = uint128(stor10[stor10.length].field_0 - arg2)
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                    s = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > s:
                                                        stor7[address(arg1)][s].field_0 = 0
                                                        stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                        s = s + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                else:
                    require 0 < stor10.length
                    if block.number < uint128(stor10.field_0):
                        require 0 >= arg2
                        if not stor7[address(arg1)].field_0:
                            if not parentTokenAddress:
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
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require 0 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
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
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                if not stor7[address(arg1)].field_0:
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
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
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
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require 0 < stor7[address(arg1)].field_0
                                        if block.number < stor7[address(arg1)].field_0:
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
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                        idx = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > idx:
                                                            stor7[address(arg1)][idx].field_0 = 0
                                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            s = 0
                                            idx = 0
                                            while stor7[address(arg1)].field_0 - 1 > idx:
                                                require stor7[address(arg1)].field_0 + idx / 2 < stor7[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 7)
                                                if stor7[address(arg1)][0.5 / stor7[address(arg1)].field_0 + idx].field_0 > block.number:
                                                    s = stor7[address(arg1)].field_0 + idx / 2
                                                    idx = idx
                                                    continue 
                                                s = stor7[address(arg1)].field_0 + idx / 2
                                                idx = stor7[address(arg1)].field_0 + idx / 2
                                                continue 
                                            require idx < stor7[address(arg1)].field_0
                                            require stor7[address(arg1)][idx].field_128 >= arg2
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
                                                            stor10[s].field_0 = stor10[s].field_0
                                                            s = s + 1
                                                            continue 
                                                    require stor10.length < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(block.number)
                                                    stor10[stor10.length].field_128 = uint128(-arg2)
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                    s = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > s:
                                                        stor7[address(arg1)][s].field_0 = 0
                                                        stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                        s = s + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                        s = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > s:
                                                            stor7[address(arg1)][s].field_0 = 0
                                                            stor7[address(arg1)][s].field_0 = stor7[address(arg1)][s].field_0
                                                            s = s + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
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
                        if not stor7[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require 0 >= arg2
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
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require 0 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require 0 >= arg2
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
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
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
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                if not stor7[address(arg1)].field_0:
                                    require 0 >= arg2
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
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
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
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require 0 < stor7[address(arg1)].field_0
                                        if block.number < stor7[address(arg1)].field_0:
                                            require 0 >= arg2
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
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                        idx = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > idx:
                                                            stor7[address(arg1)][idx].field_0 = 0
                                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            t = 0
                                            s = 0
                                            while stor7[address(arg1)].field_0 - 1 > s:
                                                require stor7[address(arg1)].field_0 + s / 2 < stor7[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 7)
                                                if stor7[address(arg1)][0.5 / stor7[address(arg1)].field_0 + s].field_0 > block.number:
                                                    t = stor7[address(arg1)].field_0 + s / 2
                                                    s = s
                                                    continue 
                                                t = stor7[address(arg1)].field_0 + s / 2
                                                s = stor7[address(arg1)].field_0 + s / 2
                                                continue 
                                            require s < stor7[address(arg1)].field_0
                                            require stor7[address(arg1)][s].field_128 >= arg2
                                            if not stor10.length:
                                                stor10.length++
                                                if not stor10.length <= stor10.length + 1:
                                                    t = stor10.length + 1
                                                    while stor10.length > t:
                                                        stor10[t].field_0 = 0
                                                        stor10[t].field_0 = stor10[t].field_0
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
                                                            stor10[t].field_0 = stor10[t].field_0
                                                            t = t + 1
                                                            continue 
                                                    require stor10.length < stor10.length
                                                    stor10[stor10.length].field_0 = uint128(block.number)
                                                    stor10[stor10.length].field_128 = uint128(stor10[idx].field_128 - arg2)
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][s].field_128 - arg2)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][s].field_128 - arg2)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if not stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0 + 1:
                                                        idx = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > idx:
                                                            stor7[address(arg1)][idx].field_0 = 0
                                                            stor7[address(arg1)][idx].field_0 = stor7[address(arg1)][idx].field_0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][s].field_128 - arg2)
    emit Transfer(arg2, arg1, 0);
    return 1
}



}
