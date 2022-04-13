contract main {


// =======================  Init code  ======================


array of struct stor0;
uint8 stor2;

function _fallback() payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor0[stor0.length].field_0 = msg.sender
    stor0[stor0.length].field_256 = msg.value
    stor2 = 0
    return code.data[287 len 2228]
}



// =====================  Runtime code  =====================


array of struct sub_626eff62;
mapping of uint256 sub_888ad4bf;
uint8 stor2;

function sub_626eff62(?) {
    require sub_626eff62.length - 1 < sub_626eff62.length
    return sub_626eff62[sub_626eff62.length - 1].field_256
}

function sub_76e9deaa(?) {
    require sub_626eff62.length - 2 < sub_626eff62.length
    return sub_626eff62[sub_626eff62.length - 2].field_256
}

function sub_76f23005(?) {
    require sub_626eff62.length - 1 < sub_626eff62.length
    return sub_626eff62[sub_626eff62.length - 1].field_0
}

function sub_888ad4bf(?) {
    return sub_888ad4bf[address(msg.sender)]
}

function sub_8af67ff1(?) {
    require sub_626eff62.length - 2 < sub_626eff62.length
    return sub_626eff62[sub_626eff62.length - 2].field_0
}

function sub_b35d11bf(?) {
    return sub_888ad4bf[arg1]
}

function totalBets() {
    return sub_626eff62.length
}

function gameFinished() {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function bets(uint256 arg1) {
    require arg1 < sub_626eff62.length
    return sub_626eff62[arg1].field_0, sub_626eff62[arg1].field_256
}

function withdrawPrize() {
    require sub_888ad4bf[address(msg.sender)] > 0
    sub_888ad4bf[address(msg.sender)] = 0
    call msg.sender with:
       value sub_888ad4bf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function finishGame() {
    require not stor2
    require sub_626eff62.length >= 2
    require sub_626eff62.length - 2 < sub_626eff62.length
    require sub_626eff62.length - 1 < sub_626eff62.length
    sub_888ad4bf[stor0[stor0.length - 2].field_0] += sub_626eff62[sub_626eff62.length - 1].field_256
    stor2 = 1
}

function sub_f14a8863(?) {
    if 1 == sub_626eff62.length:
        if sub_626eff62.length - 1 < sub_626eff62.length:
            return (sub_626eff62[sub_626eff62.length - 1].field_256 + 10^13)
    else:
        if sub_626eff62.length - 2 < sub_626eff62.length:
            if sub_626eff62.length - 1 < sub_626eff62.length:
                return ((2 * sub_626eff62[sub_626eff62.length - 1].field_256) - sub_626eff62[sub_626eff62.length - 2].field_256)
    revert
}

function bet() payable {
    require not stor2
    require sub_626eff62.length - 1 < sub_626eff62.length
    require msg.value >= sub_626eff62[sub_626eff62.length - 1].field_256 + 10^13
    if sub_626eff62.length >= 2:
        require sub_626eff62.length - 2 < sub_626eff62.length
        require msg.value >= (2 * sub_626eff62[sub_626eff62.length - 1].field_256) - sub_626eff62[sub_626eff62.length - 2].field_256
    require sub_626eff62.length - 1 < sub_626eff62.length
    sub_888ad4bf[stor0[stor0.length - 1].field_0] += msg.value
    sub_626eff62.length++
    if not sub_626eff62.length <= sub_626eff62.length + 1:
        idx = 2 * sub_626eff62.length + 1
        while 2 * sub_626eff62.length > idx:
            sub_626eff62[idx].field_0 = 0
            sub_626eff62[idx].field_256 = 0
            idx = idx + 2
            continue 
    sub_626eff62[sub_626eff62.length].field_0 = msg.sender
    sub_626eff62[sub_626eff62.length].field_256 = msg.value
}



}
