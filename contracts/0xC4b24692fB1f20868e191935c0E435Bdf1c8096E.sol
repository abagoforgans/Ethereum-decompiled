contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint16 stor13;

function _fallback() payable {
    stor13 = 0
    require not msg.value
    mem[96 len -6980] = code.data[7494 len -6980]
    mem[64] = -6884
    stor0 = msg.sender
    stor2 = mem[108 len 20]
    stor1 = mem[140 len 20]
    stor7 = mem[160]
    stor3[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor4[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor6 = 18
    stor9 = 0
    stor8 = block.number
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = '0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[514 len 6980]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - mint(address arg1, uint256 arg2)
#  - transfer(address arg1, uint256 arg2)
#
const TOKENS_ALLOCATED_TO_PROOF = 1181031 * 10^18

const TOTAL_PRESALE_TOKENS = 112386712924725508802400


address controllerAddress;
address parentTokenAddress;
address tokenFactoryAddress;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint8 decimals;
uint256 parentSnapShotBlock;
uint256 creationBlock;
uint8 stor9;
array of struct stor10;
mapping of uint256 allowance;
array of struct stor12;
uint8 mintingFinished;
uint8 presaleBalancesLocked; offset 8

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return name[0 len name.length]
}

function creationBlock() {
    return creationBlock
}

function presaleBalancesLocked() {
    return bool(presaleBalancesLocked)
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
    return bool(stor9)
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

function enableTransfers(bool arg1) {
    require controllerAddress == msg.sender
    stor9 = uint8(arg1)
}

function lockPresaleBalances() {
    require controllerAddress == msg.sender
    presaleBalancesLocked = 1
    return 1
}

function transferControl(address arg1) {
    require controllerAddress == msg.sender
    if arg1:
        controllerAddress = arg1
}

function finishMinting() {
    require controllerAddress == msg.sender
    mintingFinished = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require stor9
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require stor9
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
    if not stor12.length:
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
    require 0 < stor12.length
    if uint128(stor12.field_0) > arg1:
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
    if 0 == stor12.length:
        return 0
    require stor12.length - 1 < stor12.length
    if arg1 >= uint128(stor12[stor12.length].field_0):
        if stor12.length - 1 < stor12.length:
            return uint128(stor12[stor12.length].field_0)
    else:
        if 0 < stor12.length:
            if arg1 < uint128(stor12.field_0):
                return 0
            s = 0
            idx = 0
            while stor12.length - 1 > idx:
                require idx + stor12.length / 2 < stor12.length
                mem[0] = 12
                if uint128(stor12[0.5 / idx + stor12.length].field_0) > arg1:
                    s = idx + stor12.length / 2
                    idx = idx
                    continue 
                s = idx + stor12.length / 2
                idx = idx + stor12.length / 2
                continue 
            if idx < stor12.length:
                return uint128(stor12[idx].field_128)
    revert
}

function totalSupply() {
    if not stor12.length:
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
    require 0 < stor12.length
    if uint128(stor12.field_0) > block.number:
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
    if 0 == stor12.length:
        return 0
    require stor12.length - 1 < stor12.length
    if block.number >= uint128(stor12[stor12.length].field_0):
        if stor12.length - 1 < stor12.length:
            return uint128(stor12[stor12.length].field_0)
    else:
        if 0 < stor12.length:
            if block.number < uint128(stor12.field_0):
                return 0
            s = 0
            idx = 0
            while stor12.length - 1 > idx:
                require idx + stor12.length / 2 < stor12.length
                mem[0] = 12
                if uint128(stor12[0.5 / idx + stor12.length].field_0) > block.number:
                    s = idx + stor12.length / 2
                    idx = idx
                    continue 
                s = idx + stor12.length / 2
                idx = idx + stor12.length / 2
                continue 
            if idx < stor12.length:
                return uint128(stor12[idx].field_128)
    revert
}

function balanceOfAt(address arg1, uint256 arg2) {
    if not stor10[address(arg1)].field_0:
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
    require 0 < stor10[address(arg1)].field_0
    if uint128(stor10[address(arg1)].field_0) > arg2:
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
    if 0 == stor10[address(arg1)].field_0:
        return 0
    require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
    if arg2 >= uint128(stor10[address(arg1)][stor10[address(arg1)].field_0].field_0):
        if stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0:
            return uint128(stor10[address(arg1)][stor10[address(arg1)].field_0].field_0)
    else:
        if 0 < stor10[address(arg1)].field_0:
            if arg2 < uint128(stor10[address(arg1)].field_0):
                return 0
            s = 0
            idx = 0
            while stor10[address(arg1)].field_0 - 1 > idx:
                require idx + stor10[address(arg1)].field_0 / 2 < stor10[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 10)
                if uint128(stor10[address(arg1)][0.5 / idx + stor10[address(arg1)].field_0].field_0) > arg2:
                    s = idx + stor10[address(arg1)].field_0 / 2
                    idx = idx
                    continue 
                s = idx + stor10[address(arg1)].field_0 / 2
                idx = idx + stor10[address(arg1)].field_0 / 2
                continue 
            if idx < stor10[address(arg1)].field_0:
                return uint128(stor10[address(arg1)][idx].field_128)
    revert
}

function balanceOf(address arg1) {
    if not stor10[address(arg1)].field_0:
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
    require 0 < stor10[address(arg1)].field_0
    if uint128(stor10[address(arg1)].field_0) > block.number:
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
    if 0 == stor10[address(arg1)].field_0:
        return 0
    require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
    if block.number >= uint128(stor10[address(arg1)][stor10[address(arg1)].field_0].field_0):
        if stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0:
            return uint128(stor10[address(arg1)][stor10[address(arg1)].field_0].field_0)
    else:
        if 0 < stor10[address(arg1)].field_0:
            if block.number < uint128(stor10[address(arg1)].field_0):
                return 0
            s = 0
            idx = 0
            while stor10[address(arg1)].field_0 - 1 > idx:
                require idx + stor10[address(arg1)].field_0 / 2 < stor10[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 10)
                if uint128(stor10[address(arg1)][0.5 / idx + stor10[address(arg1)].field_0].field_0) > block.number:
                    s = idx + stor10[address(arg1)].field_0 / 2
                    idx = idx
                    continue 
                s = idx + stor10[address(arg1)].field_0 / 2
                idx = idx + stor10[address(arg1)].field_0 / 2
                continue 
            if idx < stor10[address(arg1)].field_0:
                return uint128(stor10[address(arg1)][idx].field_128)
    revert
}

function createCloneToken(uint256 arg1, string arg2, string arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0x59b58dba00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 324] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if arg1:
        if arg1 <= block.number:
            if not arg3.length % 32:
                require ext_code.size(tokenFactoryAddress)
                call tokenFactoryAddress.0x59b58dba with:
                     gas gas_remaining - 710 wei
                    args address(this.address), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 324 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 160
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 388 len arg3.length % 32]
                require ext_code.size(tokenFactoryAddress)
                call tokenFactoryAddress.0x59b58dba with:
                     gas gas_remaining - 710 wei
                    args address(this.address), arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 324 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 160
        else:
            if not arg3.length % 32:
                require ext_code.size(tokenFactoryAddress)
                call tokenFactoryAddress.0x59b58dba with:
                     gas gas_remaining - 710 wei
                    args address(this.address), block.number, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 324 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 160
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 388 len arg3.length % 32]
                require ext_code.size(tokenFactoryAddress)
                call tokenFactoryAddress.0x59b58dba with:
                     gas gas_remaining - 710 wei
                    args address(this.address), block.number, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 324 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 160
    else:
        if not arg3.length % 32:
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.0x59b58dba with:
                 gas gas_remaining - 710 wei
                args address(this.address), block.number, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 324 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 160
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 356] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 388 len arg3.length % 32]
            require ext_code.size(tokenFactoryAddress)
            call tokenFactoryAddress.0x59b58dba with:
                 gas gas_remaining - 710 wei
                args address(this.address), block.number, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 324 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 160
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x6d16fa41 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    emit NewCloneToken(address(ext_call.return_data[0]));
    return address(ext_call.return_data[0])
}

function importPresaleBalances(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require controllerAddress == msg.sender
    require not presaleBalancesLocked
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[32] = 10
        require idx < arg2.length
        if not stor10[mem[(32 * idx) + 140 len 20]].field_0:
            stor10[mem[(32 * idx) + 140 len 20]].field_0++
            if not stor10[mem[(32 * idx) + 140 len 20]].field_0 > stor10[mem[(32 * idx) + 140 len 20]].field_0 + 1:
                require stor10[mem[(32 * idx) + 140 len 20]].field_0 < stor10[mem[(32 * idx) + 140 len 20]].field_0
                mem[0] = sha3(mem[(32 * idx) + 140 len 20], 10)
                uint128(stor10[mem[(32 * idx) + 140 len 20]][stor10[mem[(32 * idx) + 140 len 20]].field_0].field_0) = uint128(block.number)
                uint128(stor10[mem[(32 * idx) + 140 len 20]][stor10[mem[(32 * idx) + 140 len 20]].field_0].field_128) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                require idx < arg1.length
                _92 = mem[(32 * idx) + 128]
                require idx < arg2.length
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_92));
            else:
                s = stor10[mem[(32 * idx) + 140 len 20]].field_0 + sha3(sha3(mem[(32 * idx) + 140 len 20], 10)) + 1
                while sha3(sha3(mem[(32 * idx) + 140 len 20], 10)) + stor10[mem[(32 * idx) + 140 len 20]].field_0 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                require stor10[mem[(32 * idx) + 140 len 20]].field_0 < stor10[mem[(32 * idx) + 140 len 20]].field_0
                mem[0] = sha3(mem[(32 * idx) + 140 len 20], 10)
                uint128(stor10[mem[(32 * idx) + 140 len 20]][stor10[mem[(32 * idx) + 140 len 20]].field_0].field_0) = uint128(block.number)
                uint128(stor10[mem[(32 * idx) + 140 len 20]][stor10[mem[(32 * idx) + 140 len 20]].field_0].field_128) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                require idx < arg1.length
                _133 = mem[(32 * idx) + 128]
                require idx < arg2.length
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_133));
        else:
            require stor10[mem[(32 * idx) + 140 len 20]].field_0 - 1 < stor10[mem[(32 * idx) + 140 len 20]].field_0
            if uint128(stor10[mem[(32 * idx) + 140 len 20]][stor10[mem[(32 * idx) + 140 len 20]].field_0].field_0) >= block.number:
                require stor10[mem[(32 * idx) + 140 len 20]].field_0 - 1 < stor10[mem[(32 * idx) + 140 len 20]].field_0
                mem[0] = sha3(mem[(32 * idx) + 140 len 20], 10)
                uint128(stor10[mem[(32 * idx) + 140 len 20]][stor10[mem[(32 * idx) + 140 len 20]].field_0].field_0) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                require idx < arg1.length
                _88 = mem[(32 * idx) + 128]
                require idx < arg2.length
                mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_88));
            else:
                stor10[mem[(32 * idx) + 140 len 20]].field_0++
                if not stor10[mem[(32 * idx) + 140 len 20]].field_0 > stor10[mem[(32 * idx) + 140 len 20]].field_0 + 1:
                    require stor10[mem[(32 * idx) + 140 len 20]].field_0 < stor10[mem[(32 * idx) + 140 len 20]].field_0
                    mem[0] = sha3(mem[(32 * idx) + 140 len 20], 10)
                    uint128(stor10[mem[(32 * idx) + 140 len 20]][stor10[mem[(32 * idx) + 140 len 20]].field_0].field_0) = uint128(block.number)
                    uint128(stor10[mem[(32 * idx) + 140 len 20]][stor10[mem[(32 * idx) + 140 len 20]].field_0].field_128) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    require idx < arg1.length
                    _105 = mem[(32 * idx) + 128]
                    require idx < arg2.length
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_105));
                else:
                    s = stor10[mem[(32 * idx) + 140 len 20]].field_0 + sha3(sha3(mem[(32 * idx) + 140 len 20], 10)) + 1
                    while sha3(sha3(mem[(32 * idx) + 140 len 20], 10)) + stor10[mem[(32 * idx) + 140 len 20]].field_0 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    require stor10[mem[(32 * idx) + 140 len 20]].field_0 < stor10[mem[(32 * idx) + 140 len 20]].field_0
                    mem[0] = sha3(mem[(32 * idx) + 140 len 20], 10)
                    uint128(stor10[mem[(32 * idx) + 140 len 20]][stor10[mem[(32 * idx) + 140 len 20]].field_0].field_0) = uint128(block.number)
                    uint128(stor10[mem[(32 * idx) + 140 len 20]][stor10[mem[(32 * idx) + 140 len 20]].field_0].field_128) = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
                    require idx < arg1.length
                    _135 = mem[(32 * idx) + 128]
                    require idx < arg2.length
                    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_135));
        idx = idx + 1
        continue 
    if not stor12.length:
        stor12.length++
        if not stor12.length <= stor12.length + 1:
            idx = stor12.length + 1
            while stor12.length > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
        require stor12.length < stor12.length
        uint128(stor12[stor12.length].field_0) = uint128(block.number)
        Mask(80, 0, stor12[stor12.length].field_128) = 112386712924725508802400
        stor12[stor12.length].field_208 % 281474976710656 = 0
    else:
        require stor12.length - 1 < stor12.length
        if uint128(stor12[stor12.length].field_0) >= block.number:
            require stor12.length - 1 < stor12.length
            Mask(80, 0, stor12[stor12.length].field_0) = 112386712924725508802400
            stor12[stor12.length].field_0 % 281474976710656 = 0
        else:
            stor12.length++
            if not stor12.length <= stor12.length + 1:
                idx = stor12.length + 1
                while stor12.length > idx:
                    stor12[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            require stor12.length < stor12.length
            uint128(stor12[stor12.length].field_0) = uint128(block.number)
            Mask(80, 0, stor12[stor12.length].field_128) = 112386712924725508802400
            stor12[stor12.length].field_208 % 281474976710656 = 0
    return 1
}



}
