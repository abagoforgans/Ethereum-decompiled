contract main {




// =====================  Runtime code  =====================


const getBalance = 10


array of address sub_bde0779b;
array of uint256 sub_e6b6de68;
array of struct stor3;
mapping of struct sub_d89ea0ec;
array of address sub_06f7e984;
address sub_871ee495Address;
address sub_a87b8877Address;
address sub_c0fddb21Address;
uint256 lastBlockNumber;
uint256 sub_301945ee;

function sub_06f7e984(?) {
    require arg1 < sub_06f7e984.length
    return sub_06f7e984[arg1]
}

function sub_0e3d7bf2(?) {
    return sub_a87b8877Address
}

function sub_10b17e31(?) {
    return sub_bde0779b.length
}

function lastBlockNumber() {
    return lastBlockNumber
}

function sub_301945ee(?) {
    return sub_301945ee
}

function sub_834c7983(?) {
    return sub_871ee495Address
}

function sub_871ee495(?) {
    return sub_871ee495Address
}

function sub_a87b8877(?) {
    return sub_a87b8877Address
}

function sub_bde0779b(?) {
    require arg1 < sub_bde0779b.length
    return sub_bde0779b[arg1]
}

function sub_c0fddb21(?) {
    return sub_c0fddb21Address
}

function sub_d89ea0ec(?) {
    require sub_d89ea0ec[arg1].field_256 <= 1
    return sub_d89ea0ec[arg1].field_0, sub_d89ea0ec[arg1].field_256, sub_d89ea0ec[arg1].field_264
}

function sub_e6b6de68(?) {
    return sub_e6b6de68[arg1][0 len sub_e6b6de68[arg1].length]
}

function _fallback() payable {
    revert
}

function sub_64a7328f(?) {
    return sha3(arg1, arg2)
}

function sub_763b45ff(?) {
    if sub_d89ea0ec[address(arg1)].field_264 <= 0:
        return 0
    return 1
}

function isVoter(address arg1) {
    idx = 128
    s = 0
    while stor3[address(arg1)].length + 96 > idx:
        mem[idx + 32] = stor3[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor3[address(arg1)].length:
        return 0
    return 1
}

function sub_ee258065(?) {
    if msg.sender == sub_871ee495Address:
        idx = 128
        s = 0
        while stor3[address(arg1)].length + 96 > idx:
            mem[idx + 32] = stor3[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not stor3[address(arg1)].length:
            sub_bde0779b.length++
            sub_bde0779b[sub_bde0779b.length] = arg1
            sub_e6b6de68.length++
            sub_e6b6de68[sub_e6b6de68.length][] = Array(len=arg2.length, data=arg2[all])
            stor3[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            sub_c0fddb21Address = arg1
            lastBlockNumber = block.number
}

function sub_1ae98bca(?) {
    if msg.sender == sub_a87b8877Address:
        require arg2 < sub_bde0779b.length
        if sub_bde0779b[arg2] == arg1:
            require arg2 < sub_bde0779b.length
            sub_bde0779b[arg2] = 0
            require arg2 < sub_e6b6de68.length
            sub_e6b6de68[arg2] = 0
            if 31 < sub_e6b6de68[arg2].length:
                idx = 0
                while sub_e6b6de68[arg2].length + 31 / 32 > idx:
                    sub_e6b6de68[arg2 + idx] = 0
                    idx = idx + 1
                    continue 
            stor3[address(arg1)].field_0 = 0
            if 31 < stor3[address(arg1)].length:
                idx = 0
                while stor3[address(arg1)].length + 31 / 32 > idx:
                    stor3[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
}

function sub_b85fa05b(?) {
    idx = 128
    s = 0
    while stor3[address(msg.sender)].length + 96 > idx:
        mem[idx + 32] = stor3[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor3[address(msg.sender)].length:
        if not sub_d89ea0ec[address(arg1)][2][address(msg.sender)].field_0:
            require 0 < sub_06f7e984.length
            if block.timestamp - sub_d89ea0ec[stor5].field_0 > 48 * 24 * 3600:
                require 0 < sub_06f7e984.length
                sub_d89ea0ec[stor5].field_0 = 0
                sub_d89ea0ec[stor5].field_256 = 0
                sub_d89ea0ec[stor5].field_264 = 0
                sub_06f7e984 = 0
            if sub_06f7e984.length < 1000:
                require arg2 <= 1
                sub_d89ea0ec[address(arg1)].field_0 = block.timestamp
                require arg2 <= 1
                sub_d89ea0ec[address(arg1)].field_256 = arg2
                sub_d89ea0ec[address(arg1)].field_264 = 1
                sub_d89ea0ec[address(arg1)].field_272 = 0
                sub_06f7e984.length++
                sub_06f7e984[sub_06f7e984.length] = arg1
}

function supportNewMoon(address arg1) {
    idx = 128
    s = 0
    while stor3[address(msg.sender)].length + 96 > idx:
        mem[idx + 32] = stor3[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor3[address(msg.sender)].length:
        if not sub_d89ea0ec[address(arg1)][2][address(msg.sender)].field_0:
            sub_d89ea0ec[address(arg1)][2][address(msg.sender)].field_0 = 1
            sub_d89ea0ec[address(arg1)].field_264 = uint64(sub_d89ea0ec[address(arg1)].field_264 + 1)
            require sub_bde0779b.length
            if uint64(100 * sub_d89ea0ec[address(arg1)].field_264) / sub_bde0779b.length >= 50:
                require sub_d89ea0ec[address(arg1)].field_256 <= 1
                if not sub_d89ea0ec[address(arg1)].field_256:
                    sub_871ee495Address = arg1
                else:
                    require sub_d89ea0ec[address(arg1)].field_256 <= 1
                    if sub_d89ea0ec[address(arg1)].field_256 == 1:
                        sub_a87b8877Address = arg1
                sub_d89ea0ec[address(arg1)].field_0 = 0
                sub_d89ea0ec[address(arg1)].field_256 = 0
                sub_d89ea0ec[address(arg1)].field_264 = 0
}



}
