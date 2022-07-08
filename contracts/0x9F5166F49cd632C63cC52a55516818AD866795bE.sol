contract main {




// =====================  Runtime code  =====================


mapping of uint256 stakes;
array of address sub_c93a633a;
mapping of uint256 lockedTill;

function sub_0297a6db(?) {
    return sub_c93a633a.length
}

function stakes(address arg1) {
    return stakes[arg1]
}

function lockedTill(address arg1) {
    return lockedTill[arg1]
}

function sub_c93a633a(?) {
    require arg1 < sub_c93a633a.length
    return sub_c93a633a[arg1]
}

function close() {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_7c6b313e(?) {
    stakes[address(arg1)] = arg2
    lockedTill[address(arg1)] = arg3
    sub_c93a633a.length++
    sub_c93a633a[sub_c93a633a.length] = arg1
}

function totalStake() {
    idx = 0
    s = 0
    while idx < sub_c93a633a.length:
        mem[0] = sub_c93a633a[idx]
        mem[32] = 0
        idx = idx + 1
        s = s + stakes[stor1[idx]]
        continue 
    return (s * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length * sub_c93a633a.length)
}



}
