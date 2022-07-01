contract main {




// =====================  Runtime code  =====================


#
#  - sub_5b35c977(?)
#
array of address sub_0c8c9a17;
array of address sub_7f785622;
array of uint256 sub_6a63ae3e;
array of uint256 sub_0f5374cc;
array of uint256 sub_068f91ca;
array of uint256 sub_cd4f8576;
mapping of uint256 sub_c7278f6f;
mapping of uint8 stor7;
mapping of uint256 sub_2b57521e;
mapping of uint256 sub_540493e9;
mapping of address sub_d73464cc;
array of uint256 sub_d90e8623;
mapping of uint256 accounts;
array of uint256 sub_669f702c;
mapping of uint256 sub_58efc216;
uint256 votePrice;
uint256 sub_e21ac9f3;
uint256 sub_34af0380;
uint256 sub_c47d74b8;
uint256 sub_e27549d3;
uint256 sub_f6297e40;
uint256 sub_7e0b29ad;
uint256 ownerAccount;
address stor23;

function sub_068f91ca(?) {
    return sub_068f91ca[arg1][0 len sub_068f91ca[arg1].length]
}

function sub_0c8c9a17(?) {
    require arg2 < uint256(sub_0c8c9a17[arg1])
    return address(sub_0c8c9a17[arg1][arg2])
}

function sub_0f5374cc(?) {
    return sub_0f5374cc[arg1][0 len sub_0f5374cc[arg1].length]
}

function sub_2b57521e(?) {
    return sub_2b57521e[arg1]
}

function sub_308fb96e(?) {
    return bool(stor7[arg1])
}

function sub_34af0380(?) {
    return sub_34af0380
}

function sub_540493e9(?) {
    return sub_540493e9[arg1]
}

function sub_58efc216(?) {
    return sub_58efc216[arg1]
}

function accounts(address arg1) {
    return accounts[arg1]
}

function sub_669f702c(?) {
    return sub_669f702c[arg1][0 len sub_669f702c[arg1].length]
}

function sub_6a63ae3e(?) {
    return sub_6a63ae3e[arg1][0 len sub_6a63ae3e[arg1].length]
}

function sub_7e0b29ad(?) {
    return sub_7e0b29ad
}

function sub_7f785622(?) {
    require arg2 < uint256(sub_7f785622[arg1])
    return address(sub_7f785622[arg1][arg2])
}

function votePrice() {
    return votePrice
}

function sub_c47d74b8(?) {
    return sub_c47d74b8
}

function sub_c7278f6f(?) {
    return sub_c7278f6f[arg1]
}

function sub_cd4f8576(?) {
    return sub_cd4f8576[arg1][0 len sub_cd4f8576[arg1].length]
}

function sub_d73464cc(?) {
    return sub_d73464cc[arg1]
}

function sub_d90e8623(?) {
    return sub_d90e8623[arg1][0 len sub_d90e8623[arg1].length]
}

function sub_e21ac9f3(?) {
    return sub_e21ac9f3
}

function sub_e27549d3(?) {
    return sub_e27549d3
}

function ownerAccount() {
    return ownerAccount
}

function sub_f6297e40(?) {
    return sub_f6297e40
}

function _fallback() payable {
    revert
}

function sub_ecd594f2(?) {
    require msg.sender == stor23
    sub_f6297e40 = arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == stor23
    votePrice = arg1
    sub_e21ac9f3 = arg2
}

function setRates(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == stor23
    require arg1 + arg2 + arg3 == 100
    sub_34af0380 = arg1
    sub_c47d74b8 = arg2
    sub_e27549d3 = arg3
}

function sub_63291504(?) {
    require msg.sender == sub_d73464cc[arg1]
    sub_068f91ca[stor21][] = Array(len=arg2.length, data=arg2[all])
    sub_cd4f8576[stor21][] = Array(len=arg3.length, data=arg3[all])
}

function withdraw() {
    accounts[address(msg.sender)] = 0
    call msg.sender with:
       value accounts[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function ownerWithdraw() {
    require msg.sender == stor23
    ownerAccount = 0
    call stor23 with:
       value ownerAccount wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_59ab6995(?) payable {
    if msg.value < sub_e21ac9f3:
        require msg.sender == stor23
    stor7[stor21] = 1
    require accounts[stor23] + msg.value >= accounts[stor23]
    accounts[stor23] += msg.value
    sub_d73464cc[stor21] = msg.sender
    sub_c7278f6f[stor21] = block.number + sub_f6297e40
    sub_6a63ae3e[stor21][] = Array(len=arg1.length, data=arg1[all])
    sub_0f5374cc[stor21][] = Array(len=arg2.length, data=arg2[all])
    sub_068f91ca[stor21][] = Array(len=arg3.length, data=arg3[all])
    sub_cd4f8576[stor21][] = Array(len=arg4.length, data=arg4[all])
    sub_7e0b29ad++
}

function vote(uint256 arg1, uint256 arg2) payable {
    require msg.value >= votePrice
    if arg2 != 1:
        require arg2 == 2
    require stor7[arg1]
    if msg.value:
        require msg.value
        require msg.value * sub_34af0380 / msg.value == sub_34af0380
    if msg.value:
        require msg.value
        require msg.value * sub_c47d74b8 / msg.value == sub_c47d74b8
    if msg.value:
        require msg.value
        require msg.value * sub_e27549d3 / msg.value == sub_e27549d3
    require accounts[stor23] + (msg.value * sub_34af0380 / 100) >= accounts[stor23]
    accounts[stor23] += msg.value * sub_34af0380 / 100
    require accounts[stor10[arg1]] + (msg.value * sub_c47d74b8 / 100) >= accounts[stor10[arg1]]
    accounts[stor10[arg1]] += msg.value * sub_c47d74b8 / 100
    require sub_58efc216[arg1] + (msg.value * sub_e27549d3 / 100) >= sub_58efc216[arg1]
    sub_58efc216[arg1] += msg.value * sub_e27549d3 / 100
    if arg2 != 1:
        uint256(sub_7f785622[arg1])++
        address(sub_7f785622[arg1][uint256(sub_7f785622[arg1])]) = msg.sender
    else:
        uint256(sub_0c8c9a17[arg1])++
        address(sub_0c8c9a17[arg1][uint256(sub_0c8c9a17[arg1])]) = msg.sender
}

function endFight(uint256 arg1) {
    if block.number <= sub_c7278f6f[arg1]:
        require msg.sender == stor23
    require stor7[arg1]
    stor7[arg1] = 0
    if uint256(sub_0c8c9a17[arg1]) > uint256(sub_7f785622[arg1]):
        require uint256(sub_0c8c9a17[arg1])
        idx = 0
        s = sub_58efc216[arg1]
        while idx < uint256(sub_0c8c9a17[arg1]):
            require idx < uint256(sub_0c8c9a17[arg1])
            if s < sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1]):
                require accounts[address(stor0[arg1][idx])] + s >= accounts[address(stor0[arg1][idx])]
                require idx < uint256(sub_0c8c9a17[arg1])
                accounts[address(stor0[arg1][idx])] += s
                mem[0] = arg1
                mem[32] = 0
                idx = idx + 1
                s = s
                continue 
            require accounts[address(stor0[arg1][idx])] + (sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1])) >= accounts[address(stor0[arg1][idx])]
            require idx < uint256(sub_0c8c9a17[arg1])
            accounts[address(stor0[arg1][idx])] += sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1])
            require sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1]) <= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s - (sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1]))
            continue 
    if uint256(sub_0c8c9a17[arg1]) < uint256(sub_7f785622[arg1]):
        require uint256(sub_7f785622[arg1])
        idx = 0
        s = sub_58efc216[arg1]
        while idx < uint256(sub_7f785622[arg1]):
            require idx < uint256(sub_7f785622[arg1])
            if s < sub_58efc216[arg1] / uint256(sub_7f785622[arg1]):
                require accounts[address(stor1[arg1][idx])] + s >= accounts[address(stor1[arg1][idx])]
                require idx < uint256(sub_7f785622[arg1])
                accounts[address(stor1[arg1][idx])] += s
                mem[0] = arg1
                mem[32] = 1
                idx = idx + 1
                s = s
                continue 
            require accounts[address(stor1[arg1][idx])] + (sub_58efc216[arg1] / uint256(sub_7f785622[arg1])) >= accounts[address(stor1[arg1][idx])]
            require idx < uint256(sub_7f785622[arg1])
            accounts[address(stor1[arg1][idx])] += sub_58efc216[arg1] / uint256(sub_7f785622[arg1])
            require sub_58efc216[arg1] / uint256(sub_7f785622[arg1]) <= s
            mem[0] = arg1
            mem[32] = 1
            idx = idx + 1
            s = s - (sub_58efc216[arg1] / uint256(sub_7f785622[arg1]))
            continue 
    if uint256(sub_0c8c9a17[arg1]) == uint256(sub_7f785622[arg1]):
        require uint256(sub_0c8c9a17[arg1]) + uint256(sub_7f785622[arg1])
        idx = 0
        s = sub_58efc216[arg1]
        while idx < uint256(sub_0c8c9a17[arg1]):
            if s < sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1]) + uint256(sub_7f785622[arg1]):
                mem[0] = arg1
                mem[32] = 0
                idx = idx + 1
                s = s
                continue 
            require idx < uint256(sub_0c8c9a17[arg1])
            require accounts[address(stor0[arg1][idx])] + (sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1]) + uint256(sub_7f785622[arg1])) >= accounts[address(stor0[arg1][idx])]
            require idx < uint256(sub_0c8c9a17[arg1])
            accounts[address(stor0[arg1][idx])] += sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1]) + uint256(sub_7f785622[arg1])
            require idx < uint256(sub_7f785622[arg1])
            require accounts[address(stor1[arg1][idx])] + (sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1]) + uint256(sub_7f785622[arg1])) >= accounts[address(stor1[arg1][idx])]
            require idx < uint256(sub_7f785622[arg1])
            accounts[address(stor1[arg1][idx])] += sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1]) + uint256(sub_7f785622[arg1])
            require 2 * sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1]) + uint256(sub_7f785622[arg1]) <= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s - (2 * sub_58efc216[arg1] / uint256(sub_0c8c9a17[arg1]) + uint256(sub_7f785622[arg1]))
            continue 
}



}
