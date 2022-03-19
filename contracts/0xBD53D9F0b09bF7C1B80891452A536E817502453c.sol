contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 stor11;

function _fallback() payable {
    mem[96 len -1893] = code.data[2433 len -1893]
    mem[64] = -1797
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor8 = 1
    if mem[128]:
        if mem[236 len 20] != 0:
            stor4 = mem[224]
            stor9[mem[236 len 20]][0] = mem[128]
            stor9[mem[236 len 20]][1] = 0
            stor11[stor8] = mem[224]
        else:
            stor4 = msg.sender or Mask(96, 160, stor4)
            stor9[address(msg.sender)][0] = mem[128]
            stor9[address(msg.sender)][1] = 0
            stor11[stor8] = msg.sender or Mask(96, 160, stor11[stor8])
        stor1 = mem[128]
    else:
        if mem[236 len 20] != 0:
            stor4 = mem[224]
            stor9[mem[236 len 20]][0] = 1000
            stor9[mem[236 len 20]][1] = 0
            stor11[stor8] = mem[224]
        else:
            stor4 = msg.sender or Mask(96, 160, stor4)
            stor9[address(msg.sender)][0] = 1000
            stor9[address(msg.sender)][1] = 0
            stor11[stor8] = msg.sender or Mask(96, 160, stor11[stor8])
        stor1 = 1000
    stor2.length = (2 * mem[mem[160] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[540 len 1893]
}



// =====================  Runtime code  =====================


address sub_e33247eaAddress;
uint256 sub_ec727e13;
array of uint256 sub_3e3fb23e;
array of uint256 sub_9fdd3630;
address issuerAddress;
address stor5;
uint256 sub_d1e93151;
uint256 sub_48756fd8;
uint256 sub_215d1343;
mapping of uint256 stor9;
mapping of uint8 frozenAccount;
mapping of address sub_76a39356;

function issuer() payable {
    return issuerAddress
}

function sub_215d1343(?) payable {
    return sub_215d1343
}

function sub_3e3fb23e(?) payable {
    return sub_3e3fb23e[0 len sub_3e3fb23e.length]
}

function sub_48756fd8(?) payable {
    return sub_48756fd8
}

function sub_76a39356(?) payable {
    return address(sub_76a39356[arg1])
}

function sub_9fdd3630(?) payable {
    return sub_9fdd3630[0 len sub_9fdd3630.length]
}

function frozenAccount(address arg1) payable {
    return uint8(frozenAccount[arg1])
}

function sub_d1e93151(?) payable {
    return sub_d1e93151
}

function sub_e33247ea(?) payable {
    return sub_e33247eaAddress
}

function sub_ec727e13(?) payable {
    return sub_ec727e13
}

function kill() payable {
    if stor5 != msg.sender:
    selfdestruct(stor5)
}

function _fallback() payable {
  stop
}

function sub_96d7ac7a(?) payable {
    require issuerAddress == msg.sender
    stor9[address(arg1)][0] += arg2
    emit Transfer(arg2, 0, arg1);
}

function freezeAccount(address arg1, bool arg2) payable {
    require issuerAddress == msg.sender
    uint256(frozenAccount[address(arg1)]) = arg2 or Mask(248, 8, uint256(frozenAccount[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require stor9[address(msg.sender)][0] >= arg2
    require arg2 + stor9[address(arg1)][0] >= stor9[address(arg1)][0]
    require not uint8(frozenAccount[address(msg.sender)])
    if 0 == stor9[address(arg1)][0]:
        sub_215d1343++
        uint256(sub_76a39356[stor8 + 1]) = arg1 or Mask(96, 160, uint256(sub_76a39356[stor8 + 1]))
    stor9[address(msg.sender)][0] -= arg2
    stor9[address(arg1)][0] += arg2
    stor9[address(msg.sender)][1] += -1 * arg2 * sub_48756fd8
    stor9[address(arg1)][1] += arg2 * sub_48756fd8
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function sub_a4ab866a(?) payable {
    if arg1 > sub_d1e93151:
        sub_d1e93151 = arg1
        sub_48756fd8 = arg1 / sub_ec727e13
        idx = 0
        s = 0
        t = 0
        u = 1000
        while idx < sub_215d1343:
            mem[0] = 1
            mem[32] = sha3(address(sub_76a39356[idx]), 9)
            if stor9[address(stor11[idx])][1] >= u:
                idx = idx + 1
                s = address(sub_76a39356[idx])
                t = t
                u = u
                continue 
            mem[0] = 1
            mem[32] = sha3(address(sub_76a39356[idx]), 9)
            idx = idx + 1
            s = address(sub_76a39356[idx])
            t = address(sub_76a39356[idx])
            u = stor9[address(stor11[idx])][1]
            continue 
        stor9[address(s)][1]++
        call sub_e33247eaAddress.0x489ffdbc with:
             gas gas_remaining - 25050 wei
            args address(s), 1
        require ext_call.success
}



}
