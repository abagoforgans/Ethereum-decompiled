contract main {


// =======================  Init code  ======================


uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
array of struct stor7;
uint256 stor9;
mapping of uint256 stor10;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;

function _fallback() payable {
    mem[96 len -1834] = code.data[2546 len -1834]
    mem[64] = -1738
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor9 = 1
    if mem[128] != 0:
        if mem[236 len 20] != 0:
            stor4 = mem[224]
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                idx = (3 * stor7.length) + 3
                while 3 * stor7.length > idx:
                    address(stor7[idx].field_0) = 0
                    stor7[idx].field_256 = 0
                    stor7[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor7.length < stor7.length
            stor7[stor7.length].field_0 = mem[224]
            storA66C[stor7.length] = mem[128]
            stor10[mem[236 len 20]] = mem[128]
        else:
            stor4 = msg.sender or Mask(96, 160, stor4)
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                idx = (3 * stor7.length) + 3
                while 3 * stor7.length > idx:
                    address(stor7[idx].field_0) = 0
                    stor7[idx].field_256 = 0
                    stor7[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor7.length < stor7.length
            stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
            storA66C[stor7.length] = mem[128]
            stor10[address(msg.sender)] = mem[128]
        stor1 = mem[128]
    else:
        if mem[236 len 20] != 0:
            stor4 = mem[224]
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                idx = (3 * stor7.length) + 3
                while 3 * stor7.length > idx:
                    address(stor7[idx].field_0) = 0
                    stor7[idx].field_256 = 0
                    stor7[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor7.length < stor7.length
            stor7[stor7.length].field_0 = mem[224]
            storA66C[stor7.length] = 1000
            stor10[mem[236 len 20]] = 1000
        else:
            stor4 = msg.sender or Mask(96, 160, stor4)
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                idx = (3 * stor7.length) + 3
                while 3 * stor7.length > idx:
                    address(stor7[idx].field_0) = 0
                    stor7[idx].field_256 = 0
                    stor7[idx].field_512 = 0
                    idx = idx + 1
                    continue 
            require stor7.length < stor7.length
            stor7[stor7.length].field_0 = msg.sender or Mask(96, 160, stor7[stor7.length].field_0)
            storA66C[stor7.length] = 1000
            stor10[address(msg.sender)] = 1000
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
    return code.data[712 len 1834]
}



// =====================  Runtime code  =====================


address sub_e33247eaAddress;
uint256 sub_ec727e13;
array of uint256 sub_3e3fb23e;
array of uint256 sub_9fdd3630;
address issuerAddress;
address stor5;
uint256 sub_d1e93151;
array of struct stor7;
uint256 sub_58287e85;
uint256 sub_48756fd8;
mapping of uint256 balanceOf;
mapping of uint8 frozenAccount;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;

function issuer() payable {
    return issuerAddress
}

function sub_3e3fb23e(?) payable {
    return sub_3e3fb23e[0 len sub_3e3fb23e.length]
}

function sub_48756fd8(?) payable {
    return sub_48756fd8
}

function sub_58287e85(?) payable {
    return sub_58287e85
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
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

function sub_76a39356(?) payable {
    require arg1 < stor7.length
    return stor7[arg1].field_0, storA66C[arg1], storA66C[arg1]
}

function sub_96d7ac7a(?) payable {
    require issuerAddress == msg.sender
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function freezeAccount(address arg1, bool arg2) payable {
    require issuerAddress == msg.sender
    uint256(frozenAccount[address(arg1)]) = arg2 or Mask(248, 8, uint256(frozenAccount[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require not uint8(frozenAccount[address(msg.sender)])
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = (3 * stor7.length) + 3
        while 3 * stor7.length > idx:
            stor7[idx].field_0 = 0
            stor7[idx].field_256 = 0
            stor7[idx].field_512 = 0
            idx = idx + 1
            continue 
    require stor7.length < stor7.length
    stor7[stor7.length].field_0 = arg1 or Mask(96, 160, stor7[stor7.length].field_0)
    stor7[stor7.length].field_256 = arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return stor7.length
}

function sub_a4ab866a(?) payable {
    sub_d1e93151 = arg1
    s = 0
    idx = sub_58287e85
    s = arg1 - sub_d1e93151
    while idx < stor7.length:
        mem[0] = 7
        if s <= 0:
            sub_48756fd8++
            s = (3 * idx) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978
            idx = idx + 1
            s = s
            continue 
        if storA66C[idx] / storA66C[idx] >= sub_48756fd8:
            sub_48756fd8++
            s = (3 * idx) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978
            idx = idx + 1
            s = s
            continue 
        storA66C[idx]++
        sub_58287e85++
        if stor7.length == sub_58287e85 + 1:
            sub_58287e85 = 0
        if s - 1 != 0:
            s = (3 * idx) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978
            idx = idx + 1
            s = s - 1
            continue 
}



}
