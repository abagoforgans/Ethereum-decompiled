contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
address stor9;
address stor9; offset 24
mapping of uint256 stor12;
mapping of uint256 stor13;
uint8 stor14; offset 168
uint128 stor14; offset 168

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'tmed' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'TMED' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 1500307354
    address(stor9.field_24) = 0x85196da9269b24bdf5ffd2624abb387fca05382b
    if not uint8(stor14):
        Mask(88, 0, stor14) = 1
        stor12[address(stor9.field_0)] += 10^18
        stor4 += 10^18
        stor13[address(stor9.field_0)] = 10
    return code.data[792 len 9768]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 startTime;
uint256 totalSupply;
uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of address returnChildForParentNew;
uint8 stor9;
uint8 stor9; offset 8
uint8 stor9; offset 16
uint8 stor9; offset 184
address devAddress; offset 24
uint256 stor9; offset 16
uint256 stor9; offset 8
mapping of uint256 returnAmountOfTmex;
mapping of uint256 stor11;
mapping of uint256 balanceOf;
mapping of uint256 numRewardsAvailable;
uint8 tMEXAddressSet;
address tMEXAddress; offset 8

function returnChildForParentNew(address arg1) {
    return returnChildForParentNew[arg1]
}

function frozen() {
    return bool(uint8(stor9.field_8))
}

function name() {
    return name[0 len name.length]
}

function numRewardsAvailable(address arg1) {
    return numRewardsAvailable[arg1]
}

function totalSupply() {
    return totalSupply
}

function returnAmountOfTmexAddressCanProduce(address arg1) {
    return returnAmountOfTmex[address(arg1)]
}

function decimals() {
    return decimals
}

function devAddress() {
    return devAddress
}

function freezeProhibited() {
    return bool(uint8(stor9.field_16))
}

function numRewardsAvailableSetForChildAddress(address arg1) {
    return bool(stor6[arg1])
}

function TMEXAddressSet() {
    return bool(tMEXAddressSet)
}

function isNewParent(address arg1) {
    return bool(stor7[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function TMEXAddress() {
    return tMEXAddress
}

function burnAmountAllowed(address arg1) {
    return returnAmountOfTmex[arg1]
}

function startTime() {
    return startTime
}

function symbol() {
    return symbol[0 len symbol.length]
}

function genesisImportsComplete() {
    return bool(uint8(stor9.field_0))
}

function balanceImportsComplete() {
    return bool(stor5)
}

function _fallback() payable {
    revert
}

function lockBalanceChanges() {
    if tx.origin == devAddress:
        stor5 = 1
}

function lockGenesisImports() {
    if tx.origin == devAddress:
        uint8(stor9.field_0) = 1
}

function prohibitFreeze() {
    if tx.origin == devAddress:
        Mask(240, 0, stor9.field_16) = 1
}

function freezeTransfers() {
    if tx.origin == devAddress:
        if not uint8(stor9.field_16):
            Mask(248, 0, stor9.field_8) = 1
}

function approve(address arg1, uint256 arg2) {
    stor11[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTMEXAddress(address arg1) {
    if tx.origin == devAddress:
        if not tMEXAddressSet:
            tMEXAddressSet = 1
            tMEXAddress = arg1
}

function returnChildAddressForParent(address arg1) {
    require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
    call 0xee22430595ae400a30ffba37883363fbf293e24e.0xb9afd6e1 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function returnIsParentAddress(address arg1) {
    require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
    call 0xee22430595ae400a30ffba37883363fbf293e24e.parentAddress(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function setNumRewardsAvailableForAddresses(uint256[] arg1, address[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if tx.origin == devAddress:
        if not uint8(stor9.field_184):
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                mem[32] = 13
                numRewardsAvailable[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] = mem[(32 * idx) + 128]
                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor9.field_8):
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if stor11[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    stor11[address(arg1)][address(msg.sender)] -= arg3
    if arg2 == tMEXAddress:
        totalSupply -= arg3
        returnAmountOfTmex[address(msg.sender)] = arg3
        require ext_code.size(tMEXAddress)
        call tMEXAddress.createAmountFromTmedForAddress(uint256 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args arg3, msg.sender
        require ext_call.success
        returnAmountOfTmex[address(msg.sender)] = 0
    balanceOf[address(arg2)] += arg3
    return 1
}

function importAmountForAddresses(uint256[] arg1, address[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if tx.origin == devAddress:
        if not stor5:
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                mem[32] = 12
                balanceOf[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] += mem[(32 * idx) + 128]
                totalSupply += mem[(32 * idx) + 128]
                s = mem[(32 * idx) + 128]
                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                idx = idx + 1
                continue 
}

function removeAmountForAddresses(uint256[] arg1, address[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if tx.origin == devAddress:
        if not stor5:
            s = 0
            s = 0
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                mem[32] = 12
                balanceOf[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] -= mem[(32 * idx) + 128]
                totalSupply -= mem[(32 * idx) + 128]
                s = mem[(32 * idx) + 128]
                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                idx = idx + 1
                continue 
}

function importGenesisPairs(address[] arg1, address[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if tx.origin == devAddress:
        if not uint8(stor9.field_0):
            s = 0
            s = 0
            idx = 0
            while idx < arg1.length:
                require idx < arg2.length
                require idx < arg1.length
                stor7[mem[(32 * idx) + 140 len 20]] = 1
                returnChildForParentNew[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                balanceOf[address(mem[(32 * idx) + (32 * arg1.length) + 160])] += 10^18
                totalSupply += 10^18
                numRewardsAvailable[address(mem[(32 * idx) + (32 * arg1.length) + 160])] = 10
                mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                mem[32] = 6
                stor6[address(mem[(32 * idx) + (32 * arg1.length) + 160])] = 1
                s = mem[(32 * idx) + 128]
                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                idx = idx + 1
                continue 
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor9.field_8):
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
        call 0xee22430595ae400a30ffba37883363fbf293e24e.parentAddress(address rg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xb9afd6e1 with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            if msg.sender == ext_call.return_data[12 len 20]:
                if not stor6[address(msg.sender)]:
                    require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
                    call 0xee22430595ae400a30ffba37883363fbf293e24e.numRewardsUsed(address rg1) with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    numRewardsAvailable[address(msg.sender)] = -ext_call.return_data[0] + 10
                    stor6[address(msg.sender)] = 1
                if numRewardsAvailable[address(msg.sender)] > 0:
                    numRewardsAvailable[address(msg.sender)]--
                    if block.timestamp < startTime + (87600 * 24 * 3600):
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                        totalSupply = totalSupply + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                    else:
                        balanceOf[address(msg.sender)] += 5000 * 10^18
                        totalSupply += 5000 * 10^18
            else:
                if returnChildForParentNew[address(arg1)] == msg.sender:
                    if not stor6[address(msg.sender)]:
                        require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
                        call 0xee22430595ae400a30ffba37883363fbf293e24e.numRewardsUsed(address rg1) with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        numRewardsAvailable[address(msg.sender)] = -ext_call.return_data[0] + 10
                        stor6[address(msg.sender)] = 1
                    if numRewardsAvailable[address(msg.sender)] > 0:
                        numRewardsAvailable[address(msg.sender)]--
                        if block.timestamp < startTime + (87600 * 24 * 3600):
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                            totalSupply = totalSupply + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                        else:
                            balanceOf[address(msg.sender)] += 5000 * 10^18
                            totalSupply += 5000 * 10^18
        else:
            if stor7[address(arg1)]:
                require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
                call 0xee22430595ae400a30ffba37883363fbf293e24e.0xb9afd6e1 with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                if msg.sender == ext_call.return_data[12 len 20]:
                    if not stor6[address(msg.sender)]:
                        require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
                        call 0xee22430595ae400a30ffba37883363fbf293e24e.numRewardsUsed(address rg1) with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        numRewardsAvailable[address(msg.sender)] = -ext_call.return_data[0] + 10
                        stor6[address(msg.sender)] = 1
                    if numRewardsAvailable[address(msg.sender)] > 0:
                        numRewardsAvailable[address(msg.sender)]--
                        if block.timestamp < startTime + (87600 * 24 * 3600):
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                            totalSupply = totalSupply + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                        else:
                            balanceOf[address(msg.sender)] += 5000 * 10^18
                            totalSupply += 5000 * 10^18
                else:
                    if returnChildForParentNew[address(arg1)] == msg.sender:
                        if not stor6[address(msg.sender)]:
                            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
                            call 0xee22430595ae400a30ffba37883363fbf293e24e.numRewardsUsed(address rg1) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            numRewardsAvailable[address(msg.sender)] = -ext_call.return_data[0] + 10
                            stor6[address(msg.sender)] = 1
                        if numRewardsAvailable[address(msg.sender)] > 0:
                            numRewardsAvailable[address(msg.sender)]--
                            if block.timestamp < startTime + (87600 * 24 * 3600):
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                                totalSupply = totalSupply + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                            else:
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                totalSupply += 5000 * 10^18
        if arg1 == tMEXAddress:
            totalSupply -= arg2
            returnAmountOfTmex[address(msg.sender)] = arg2
            require ext_code.size(tMEXAddress)
            call tMEXAddress.createAmountFromTmedForAddress(uint256 rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args arg2, msg.sender
            require ext_call.success
            returnAmountOfTmex[address(msg.sender)] = 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
}



}
