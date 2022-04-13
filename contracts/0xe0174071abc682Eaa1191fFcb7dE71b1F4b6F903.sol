contract main {


// =======================  Init code  ======================


address stor0;
array of struct stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = 2 * stor1.length + 1
        while 2 * stor1.length > idx:
            stor1[idx].field_0 = 0
            stor1[idx].field_256 = 0
            idx = idx + 2
            continue 
    stor1[stor1.length].field_0 = msg.sender
    stor1[stor1.length].field_256 = msg.value
    return code.data[300 len 1351]
}



// =====================  Runtime code  =====================


address stor0;
array of struct bets;
mapping of uint256 sub_b35d11bf;

function bets(uint256 arg1) {
    require arg1 < bets.length
    return bets[arg1].field_0, bets[arg1].field_256
}

function sub_b35d11bf(?) {
    return sub_b35d11bf[arg1]
}

function _fallback() payable {
    revert
}

function withdrawPrize() {
    require sub_b35d11bf[address(msg.sender)] > 0
    sub_b35d11bf[address(msg.sender)] = 0
    call msg.sender with:
       value sub_b35d11bf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function sub_f14a8863(?) {
    if 1 == bets.length:
        if bets.length - 1 < bets.length:
            return (bets[bets.length - 1].field_256 + 10^13)
    else:
        if bets.length - 2 < bets.length:
            if bets.length - 1 < bets.length:
                return ((2 * bets[bets.length - 1].field_256) - bets[bets.length - 2].field_256)
    revert
}

function bet() payable {
    require bets.length - 1 < bets.length
    require msg.value >= bets[bets.length - 1].field_256 + 10^13
    if bets.length >= 2:
        require bets.length - 2 < bets.length
        require msg.value >= (2 * bets[bets.length - 1].field_256) - bets[bets.length - 2].field_256
    require bets.length - 1 < bets.length
    require bets.length - 1 < bets.length
    sub_b35d11bf[stor1[stor1.length - 1].field_0] = msg.value - (msg.value - bets[bets.length - 1].field_256 / 10) + sub_b35d11bf[stor1[stor1.length - 1].field_0]
    sub_b35d11bf[stor0] += msg.value - bets[bets.length - 1].field_256 / 10
    bets.length++
    if not bets.length <= bets.length + 1:
        idx = 2 * bets.length + 1
        while 2 * bets.length > idx:
            bets[idx].field_0 = 0
            bets[idx].field_256 = 0
            idx = idx + 2
            continue 
    bets[bets.length].field_0 = msg.sender
    bets[bets.length].field_256 = msg.value
}



}
