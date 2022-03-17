contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of address stor1;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    mem[96 len -2252] = code.data[3265 len -2252]
    mem[64] = -2156
    stor9 = msg.sender or Mask(96, 160, stor9)
    stor10 = this.address or Mask(96, 160, stor10)
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1.length = mem[mem[128] + 96]
    mem[0] = 1
    if not mem[mem[128] + 96]:
        idx = 0
        while stor1.length > idx:
            address(stor1[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
            uint256(stor1[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
        while stor1.length > idx:
            address(stor1[idx]) = 0
            idx = idx + 1
            continue 
    stor2 = 0
    stor8 = mem[mem[128] + 96]
    stor3[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    bool(stor4.length) = 0
    stor4.length.field_1 = 2
    stor4.length.field_8 = 'My' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    return code.data[1013 len 2252]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of address stor1;
uint8 stor2;
array of struct stor3;
array of struct stor4;
uint8 stor5;
array of address funders;
uint256 amountRaised;
uint256 fundingGoal;
address chairpersonAddress;
address sub_701456bcAddress;
mapping of uint8 canSign;
mapping of uint8 sub_0555ff41;

function sub_0555ff41(?) payable {
    return sub_0555ff41[arg1]
}

function chairperson() payable {
    return chairpersonAddress
}

function sub_701456bc(?) payable {
    return sub_701456bcAddress
}

function fundingGoal() payable {
    return fundingGoal
}

function amountRaised() payable {
    return amountRaised
}

function canSign(address arg1) payable {
    return canSign[arg1]
}

function funders(uint256 arg1) payable {
    require arg1 < funders.length
    return address(funders[arg1])
}

function sub_7d525f42(?) payable {
    if funders.length >= stor1.length:
        return 1
    else:
        return 0
}

function sub_1f4339d8(?) payable {
    mem[192] = uint256(stor0.field_0)
    idx = 192
    s = 0
    while stor0.length + 192 > idx + 32:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0.length, data=mem[192 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]), stor2
}

function _fallback() payable {
    if canSign[address(msg.sender)]:
        sub_0555ff41[address(msg.sender)] = 1
        funders.length++
        if not funders.length <= funders.length + 1:
            idx = funders.length + 1
            while funders.length > idx:
                address(funders[idx]) = 0
                idx = idx + 1
                continue 
        require funders.length < funders.length
        uint256(funders[funders.length]) = msg.sender or Mask(96, 160, uint256(funders[funders.length]))
        if funders.length >= stor1.length:
            stor2 = 1
    if msg.sender == chairpersonAddress:
        idx = 0
        while idx < stor1.length:
            mem[32] = 11
            canSign[stor1[idx]] = 1
            mem[0] = 1
            call stor1[idx] with:
               value 6 * 10^15 wei
                 gas 0 wei
            idx = idx + 1
            continue 
}

function token() payable {
    mem[224] = uint256(stor3.field_0)
    idx = 224
    s = 0
    while stor3.length + 224 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 224] = stor4.length
    mem[stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 256] = uint256(stor4.field_0)
    idx = stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 256
    s = 0
    while stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + stor4.length + 256 > idx + 32:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor3.length, data=mem[224 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32) + 32]), 
           stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 128,
           stor5
}



}
