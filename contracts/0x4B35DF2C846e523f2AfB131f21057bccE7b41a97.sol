contract main {


// =======================  Init code  ======================


array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;
uint256 stor15; offset 56
uint256 stor15; offset 48
uint256 stor15; offset 40
uint256 stor15; offset 32
uint256 stor15; offset 24
uint256 stor15; offset 16
uint256 stor15; offset 8
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 9
    stor3.length.field_8 = 'CLP Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'CLP' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 9
    stor6 = 0
    stor7 = 1525132801
    stor8 = 1541030401
    stor9 = 1556668801
    stor10 = 1572566401
    stor11 = 1541030401
    stor12 = 1572566401
    stor13 = 1604188801
    stor14 = 1635724801
    uint8(stor15.field_0) = 0
    Mask(248, 0, stor15.field_8) = 0
    Mask(240, 0, stor15.field_16) = 0
    Mask(232, 0, stor15.field_24) = 0
    Mask(224, 0, stor15.field_32) = 0
    Mask(216, 0, stor15.field_40) = 0
    Mask(208, 0, stor15.field_48) = 0
    Mask(200, 0, stor15.field_56) = 0
    stor16 = 0
    stor17 = 87 * 10^6 * 10^stor5
    stor18 = 39 * 10^6 * 10^stor5
    stor19 = 24 * 10^6 * 10^stor5
    require not msg.value
    stor6 = msg.sender
    return code.data[835 len 8206]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address founderAddress;
uint256 month6companyUnlock;
uint256 month12companyUnlock;
uint256 month18companyUnlock;
uint256 month24companyUnlock;
uint256 year1Unlock;
uint256 year2Unlock;
uint256 year3Unlock;
uint256 year4Unlock;
uint8 stor15;
uint8 stor15; offset 8
uint8 stor15; offset 16
uint8 stor15; offset 24
uint8 stor15; offset 32
uint8 stor15; offset 40
uint8 stor15; offset 48
uint8 stor15; offset 56
uint256 stor15; offset 56
uint256 stor15; offset 48
uint256 stor15; offset 40
uint256 stor15; offset 32
uint256 stor15; offset 24
uint256 stor15; offset 16
uint256 stor15; offset 8
uint256 stor16;
uint256 totalTokensSale;
uint8 stor18;
uint256 stor18; offset 2
uint256 totalTokensReserve;
uint8 stor19;
uint256 stor19; offset 2
uint256 totalTokensCompany;

function name() {
    return name[0 len name.length]
}

function year4Unlock() {
    return year4Unlock
}

function totalSupply() {
    return totalSupply
}

function allocated2Year() {
    return bool(uint8(stor15.field_8))
}

function decimals() {
    return decimals
}

function allocated4Year() {
    return bool(uint8(stor15.field_24))
}

function year3Unlock() {
    return year3Unlock
}

function totalTokensReserve() {
    return totalTokensReserve
}

function totalTokensCompany() {
    return totalTokensCompany
}

function founder() {
    return founderAddress
}

function totalTokensSale() {
    return totalTokensSale
}

function allocated3Year() {
    return bool(uint8(stor15.field_16))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function month12companyUnlock() {
    return month12companyUnlock
}

function month6companyUnlock() {
    return month6companyUnlock
}

function allocated1Year() {
    return bool(uint8(stor15.field_0))
}

function allocated12Months() {
    return bool(uint8(stor15.field_40))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allocated18Months() {
    return bool(uint8(stor15.field_48))
}

function month24companyUnlock() {
    return month24companyUnlock
}

function allocated6Months() {
    return bool(uint8(stor15.field_32))
}

function allocated24Months() {
    return bool(uint8(stor15.field_56))
}

function month18companyUnlock() {
    return month18companyUnlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function year2Unlock() {
    return year2Unlock
}

function year1Unlock() {
    return year1Unlock
}

function _fallback() payable {
    revert
}

function getTotalCurrentSaled() {
    require msg.sender == founderAddress
    return 0
}

function changeFounder(address arg1) {
    require msg.sender == founderAddress
    founderAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function addInvestorList(address arg1, uint256 arg2) {
    require msg.sender == founderAddress
    if stor16 + arg2 > totalTokensSale:
        return 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    require stor16 + arg2 >= stor16
    require stor16 + arg2 >= arg2
    stor16 += arg2
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
    return 1
}

function allocateReserveTokens() {
    require msg.sender == founderAddress
    if block.timestamp <= year1Unlock:
        if block.timestamp <= year2Unlock:
            if block.timestamp <= year3Unlock:
                require block.timestamp > year4Unlock
                require not uint8(stor15.field_24)
                Mask(232, 0, stor15.field_24) = 1
            else:
                if not uint8(stor15.field_16):
                    Mask(240, 0, stor15.field_16) = 1
                else:
                    require block.timestamp > year4Unlock
                    require not uint8(stor15.field_24)
                    Mask(232, 0, stor15.field_24) = 1
        else:
            if not uint8(stor15.field_8):
                Mask(248, 0, stor15.field_8) = 1
            else:
                if block.timestamp <= year3Unlock:
                    require block.timestamp > year4Unlock
                    require not uint8(stor15.field_24)
                    Mask(232, 0, stor15.field_24) = 1
                else:
                    if not uint8(stor15.field_16):
                        Mask(240, 0, stor15.field_16) = 1
                    else:
                        require block.timestamp > year4Unlock
                        require not uint8(stor15.field_24)
                        Mask(232, 0, stor15.field_24) = 1
    else:
        if not uint8(stor15.field_0):
            uint8(stor15.field_0) = 1
        else:
            if block.timestamp <= year2Unlock:
                if block.timestamp <= year3Unlock:
                    require block.timestamp > year4Unlock
                    require not uint8(stor15.field_24)
                    Mask(232, 0, stor15.field_24) = 1
                else:
                    if not uint8(stor15.field_16):
                        Mask(240, 0, stor15.field_16) = 1
                    else:
                        require block.timestamp > year4Unlock
                        require not uint8(stor15.field_24)
                        Mask(232, 0, stor15.field_24) = 1
            else:
                if not uint8(stor15.field_8):
                    Mask(248, 0, stor15.field_8) = 1
                else:
                    if block.timestamp <= year3Unlock:
                        require block.timestamp > year4Unlock
                        require not uint8(stor15.field_24)
                        Mask(232, 0, stor15.field_24) = 1
                    else:
                        if not uint8(stor15.field_16):
                            Mask(240, 0, stor15.field_16) = 1
                        else:
                            require block.timestamp > year4Unlock
                            require not uint8(stor15.field_24)
                            Mask(232, 0, stor15.field_24) = 1
    require totalTokensReserve == (4 * Mask(254, 0, stor18.field_2)) + stor18.field_0 % 4
    require balanceOf[stor6] + Mask(254, 0, stor18.field_2) >= balanceOf[stor6]
    require balanceOf[stor6] + Mask(254, 0, stor18.field_2) >= Mask(254, 0, stor18.field_2)
    balanceOf[stor6] += Mask(254, 0, stor18.field_2)
    require totalSupply + Mask(254, 0, stor18.field_2) >= totalSupply
    require totalSupply + Mask(254, 0, stor18.field_2) >= Mask(254, 0, stor18.field_2)
    totalSupply += Mask(254, 0, stor18.field_2)
    emit AllocateTokens(msg.sender);
}

function allocateReserveCompanyTokens() {
    require msg.sender == founderAddress
    if block.timestamp <= month6companyUnlock:
        if block.timestamp <= month12companyUnlock:
            if block.timestamp <= month18companyUnlock:
                require block.timestamp > month24companyUnlock
                require not uint8(stor15.field_56)
                Mask(200, 0, stor15.field_56) = 1
            else:
                if not uint8(stor15.field_48):
                    Mask(208, 0, stor15.field_48) = 1
                else:
                    require block.timestamp > month24companyUnlock
                    require not uint8(stor15.field_56)
                    Mask(200, 0, stor15.field_56) = 1
        else:
            if not uint8(stor15.field_40):
                Mask(216, 0, stor15.field_40) = 1
            else:
                if block.timestamp <= month18companyUnlock:
                    require block.timestamp > month24companyUnlock
                    require not uint8(stor15.field_56)
                    Mask(200, 0, stor15.field_56) = 1
                else:
                    if not uint8(stor15.field_48):
                        Mask(208, 0, stor15.field_48) = 1
                    else:
                        require block.timestamp > month24companyUnlock
                        require not uint8(stor15.field_56)
                        Mask(200, 0, stor15.field_56) = 1
    else:
        if not uint8(stor15.field_32):
            Mask(224, 0, stor15.field_32) = 1
        else:
            if block.timestamp <= month12companyUnlock:
                if block.timestamp <= month18companyUnlock:
                    require block.timestamp > month24companyUnlock
                    require not uint8(stor15.field_56)
                    Mask(200, 0, stor15.field_56) = 1
                else:
                    if not uint8(stor15.field_48):
                        Mask(208, 0, stor15.field_48) = 1
                    else:
                        require block.timestamp > month24companyUnlock
                        require not uint8(stor15.field_56)
                        Mask(200, 0, stor15.field_56) = 1
            else:
                if not uint8(stor15.field_40):
                    Mask(216, 0, stor15.field_40) = 1
                else:
                    if block.timestamp <= month18companyUnlock:
                        require block.timestamp > month24companyUnlock
                        require not uint8(stor15.field_56)
                        Mask(200, 0, stor15.field_56) = 1
                    else:
                        if not uint8(stor15.field_48):
                            Mask(208, 0, stor15.field_48) = 1
                        else:
                            require block.timestamp > month24companyUnlock
                            require not uint8(stor15.field_56)
                            Mask(200, 0, stor15.field_56) = 1
    require totalTokensCompany == (4 * Mask(254, 0, stor19.field_2)) + stor19.field_0 % 4
    require balanceOf[stor6] + Mask(254, 0, stor19.field_2) >= balanceOf[stor6]
    require balanceOf[stor6] + Mask(254, 0, stor19.field_2) >= Mask(254, 0, stor19.field_2)
    balanceOf[stor6] += Mask(254, 0, stor19.field_2)
    require totalSupply + Mask(254, 0, stor19.field_2) >= totalSupply
    require totalSupply + Mask(254, 0, stor19.field_2) >= Mask(254, 0, stor19.field_2)
    totalSupply += Mask(254, 0, stor19.field_2)
    emit AllocateTokens(msg.sender);
}



}
