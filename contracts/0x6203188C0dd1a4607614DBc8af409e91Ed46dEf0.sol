contract main {


// =======================  Init code  ======================


uint256 stor1;
uint8 stor4;
uint8 stor4; offset 8
address stor7;
address stor8;
address stor9;

function _fallback() payable {
    stor1 = 0
    uint8(stor4.field_0) = 100
    uint8(stor4.field_8) = 0
    require not msg.value
    stor7 = msg.sender
    stor8 = 0
    stor9 = 0
    return code.data[99 len 5894]
}



// =====================  Runtime code  =====================


#
#  - partnerInfo(address arg1)
#
mapping of struct refferalPreICOBonus;
uint256 preico_holdersAmountInvestWithBonus;
mapping of address stor2;
mapping of struct partnerPreICOBonus;
uint16 ref_percent;
array of struct stor5;
uint256 amount_referral_invest;
address owner;
address contractPreICOAddress;
address contractICOAddress;
mapping of address stor99;

function partnerPreICOBonus(address arg1) {
    return uint256(partnerPreICOBonus[address(arg1)].field_768)
}

function contractPreICO() {
    return contractPreICOAddress
}

function amount_referral_invest() {
    return amount_referral_invest
}

function preico_holdersAmountInvestWithBonus() {
    return preico_holdersAmountInvestWithBonus
}

function owner() {
    return owner
}

function contractICO() {
    return contractICOAddress
}

function refferalPreICOBonus(address arg1) {
    return uint256(refferalPreICOBonus[address(arg1)].field_256)
}

function referralAmountInvest(address arg1) {
    return uint256(refferalPreICOBonus[address(arg1)].field_0)
}

function ref_percent() {
    return ref_percent
}

function _fallback() payable {
    revert
}

function setReferralPercent(uint16 arg1) {
    require owner == msg.sender
    ref_percent = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    owner = arg1
}

function setContractICO(address arg1) {
    require owner == msg.sender
    require not contractICOAddress
    require arg1
    require arg1 != this.address
    contractICOAddress = arg1
}

function setContractPreICO(address arg1) {
    require owner == msg.sender
    require not contractPreICOAddress
    require arg1
    require arg1 != this.address
    contractPreICOAddress = arg1
}

function setPartnerPercent(address arg1, uint16 arg2) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    require 1 == bool(uint8(partnerPreICOBonus[address(arg1)].field_1024))
    uint16(partnerPreICOBonus[address(arg1)].field_512) = arg2
}

function checkPromo(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    mem[ceil32(arg1.length) + 128] = not not stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function checkPartner(address arg1) {
    if not uint8(partnerPreICOBonus[address(arg1)].field_1024):
        return bool(uint8(partnerPreICOBonus[address(arg1)].field_1024)), '-1'
    mem[224] = uint256(partnerPreICOBonus[address(arg1)][1].field_0)
    idx = 224
    s = 0
    while partnerPreICOBonus[address(arg1)][1].length + 192 > idx:
        mem[idx + 32] = uint256(partnerPreICOBonus[address(arg1)][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(partnerPreICOBonus[address(arg1)].field_1024)), 
           Array(len=partnerPreICOBonus[address(arg1)][1].length, data=mem[224 len partnerPreICOBonus[address(arg1)][1].length])
}

function setPromoToPartner(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    require not stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    require not uint8(partnerPreICOBonus[address(msg.sender)].field_1024)
    mem[ceil32(arg1.length) + 128] = 0
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, mem[128] * 2^(8 * idx)):
            s = mem[128] * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[ceil32(arg1.length) + floor32(arg1.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mem', ('range', 128, 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mem', ('range', 128, 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = mem[128] * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    require s > 0
    _37 = mem[128]
    t = 0
    idx = 0
    t = 0
    while idx < 32:
        if not Mask(8, 248, _37 * 2^(8 * idx)):
            t = _37 * 2^(8 * idx)
            idx = idx + 1
            t = t
            continue 
        require t < 32
        mem[(ceil32(arg1.length) + max(floor32(arg1.length) + s, floor32(arg1.length) + 1048, (2 * floor32(arg1.length)) + 1112) + 232) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('var', '_37'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('var', '_37'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        t = _37 * 2^(8 * idx)
        idx = idx + 1
        t = t + 1
        continue 
    require t <= 6
    mem[(ceil32(arg1.length) + max(floor32(arg1.length) + s, floor32(arg1.length) + 1048, (2 * floor32(arg1.length)) + 1112) + 232) + 1056 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(ceil32(arg1.length) + max(floor32(arg1.length) + s, floor32(arg1.length) + 1048, (2 * floor32(arg1.length)) + 1112) + 232) + floor32(arg1.length) + -(arg1.length % 32) + 1088 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + (ceil32(arg1.length) + max(floor32(arg1.length) + s, floor32(arg1.length) + 1048, (2 * floor32(arg1.length)) + 1112) + 232) + 1056] = 2
    stor[mem[(ceil32(arg1.length) + max(floor32(arg1.length) + s, floor32(arg1.length) + 1048, (2 * floor32(arg1.length)) + 1112) + 232) + floor32(arg1.length) + 1056 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = msg.sender
    uint256(partnerPreICOBonus[address(msg.sender)].field_0) = 0
    uint256(partnerPreICOBonus[address(msg.sender)][1][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint8(partnerPreICOBonus[address(msg.sender)].field_1024) = 1
}

function add_referral(address arg1, string arg2, uint256 arg3) {
    if not stor2[arg2[all]]:
        return 0
    if stor2[arg2[all]] == arg1:
        return 0
    if contractPreICOAddress == msg.sender:
        uint256(refferalPreICOBonus[address(arg1)].field_0) += arg3
        amount_referral_invest += arg3
        uint256(partnerPreICOBonus[stor2[arg2[all]]].field_0) += arg3
        uint256(stor5[stor2[arg2[all]]].field_0)++
        if not uint256(stor5[stor2[arg2[all]]].field_0) <= uint256(stor5[stor2[arg2[all]]].field_0) + 1:
            idx = (3 * uint256(stor5[stor2[arg2[all]]].field_0)) + 3
            while 3 * uint256(stor5[stor2[arg2[all]]].field_0) > idx:
                uint256(stor5[stor2[arg2[all]]][idx].field_0) = 0
                stor5[stor2[arg2[all]]][idx].field_256 = 0
                uint256(stor5[stor2[arg2[all]]][idx].field_512) = 0
                idx = idx + 3
                continue 
        uint256(stor5[stor2[arg2[all]]][uint256(stor5[stor2[arg2[all]]].field_0)].field_0) = block.timestamp
        stor5[stor2[arg2[all]]][uint256(stor5[stor2[arg2[all]]].field_0)].field_256 = arg1
        uint256(stor5[stor2[arg2[all]]][uint256(stor5[stor2[arg2[all]]].field_0)].field_512) = arg3
        if uint16(partnerPreICOBonus[stor2[arg2[all]]].field_512) > 0:
            if arg3 * uint16(partnerPreICOBonus[stor2[arg2[all]]].field_512) / 10000 > 0:
                uint256(partnerPreICOBonus[stor2[arg2[all]]].field_768) += arg3 * uint16(partnerPreICOBonus[stor2[arg2[all]]].field_512) / 10000
        else:
            if uint256(partnerPreICOBonus[stor2[arg2[all]]].field_0) > 0:
                if uint256(partnerPreICOBonus[stor2[arg2[all]]].field_0) < 3 * 10^18:
                    if 300 * arg3 / 10000 > 0:
                        uint256(partnerPreICOBonus[stor2[arg2[all]]].field_768) += 300 * arg3 / 10000
                else:
                    if uint256(partnerPreICOBonus[stor2[arg2[all]]].field_0) < 10 * 10^18:
                        if 500 * arg3 / 10000 > 0:
                            uint256(partnerPreICOBonus[stor2[arg2[all]]].field_768) += 500 * arg3 / 10000
                    else:
                        if uint256(partnerPreICOBonus[stor2[arg2[all]]].field_0) >= 100 * 10^18:
                            if 1000 * arg3 / 10000 > 0:
                                uint256(partnerPreICOBonus[stor2[arg2[all]]].field_768) += 1000 * arg3 / 10000
                        else:
                            if 700 * arg3 / 10000 > 0:
                                uint256(partnerPreICOBonus[stor2[arg2[all]]].field_768) += 700 * arg3 / 10000
        if arg3 * ref_percent / 10000 > 0:
            uint256(refferalPreICOBonus[address(arg1)].field_256) += arg3 * ref_percent / 10000
            preico_holdersAmountInvestWithBonus += arg3
    if contractICOAddress != msg.sender:
        return stor2[arg2[all]], 0, 0
    uint256(refferalPreICOBonus[address(arg1)].field_0) += arg3
    amount_referral_invest += arg3
    uint256(partnerPreICOBonus[stor2[arg2[all]]].field_0) += arg3
    uint256(stor5[stor2[arg2[all]]].field_0)++
    if not uint256(stor5[stor2[arg2[all]]].field_0) <= uint256(stor5[stor2[arg2[all]]].field_0) + 1:
        idx = (3 * uint256(stor5[stor2[arg2[all]]].field_0)) + 3
        while 3 * uint256(stor5[stor2[arg2[all]]].field_0) > idx:
            uint256(stor5[stor2[arg2[all]]][idx].field_0) = 0
            stor5[stor2[arg2[all]]][idx].field_256 = 0
            uint256(stor5[stor2[arg2[all]]][idx].field_512) = 0
            idx = idx + 3
            continue 
    uint256(stor5[stor2[arg2[all]]][uint256(stor5[stor2[arg2[all]]].field_0)].field_0) = block.timestamp
    stor5[stor2[arg2[all]]][uint256(stor5[stor2[arg2[all]]].field_0)].field_256 = arg1
    uint256(stor5[stor2[arg2[all]]][uint256(stor5[stor2[arg2[all]]].field_0)].field_512) = arg3
    if uint16(partnerPreICOBonus[stor2[arg2[all]]].field_512) > 0:
        return stor2[arg2[all]], arg3 * uint16(partnerPreICOBonus[stor2[arg2[all]]].field_512) / 10000, arg3 * ref_percent / 10000
    if uint256(partnerPreICOBonus[stor2[arg2[all]]].field_0) <= 0:
        return stor2[arg2[all]], 0, arg3 * ref_percent / 10000
    if uint256(partnerPreICOBonus[stor2[arg2[all]]].field_0) < 3 * 10^18:
        return stor2[arg2[all]], 300 * arg3 / 10000, arg3 * ref_percent / 10000
    if uint256(partnerPreICOBonus[stor2[arg2[all]]].field_0) < 10 * 10^18:
        return stor2[arg2[all]], 500 * arg3 / 10000, arg3 * ref_percent / 10000
    if uint256(partnerPreICOBonus[stor2[arg2[all]]].field_0) >= 100 * 10^18:
        return stor2[arg2[all]], 1000 * arg3 / 10000, arg3 * ref_percent / 10000
    return stor2[arg2[all]], 700 * arg3 / 10000, arg3 * ref_percent / 10000
}



}
