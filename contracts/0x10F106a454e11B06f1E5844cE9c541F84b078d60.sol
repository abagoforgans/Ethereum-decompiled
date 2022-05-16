contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 0
    return code.data[102 len 4293]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_7326c587;
uint256 sub_e069357d;

function sub_7326c587(?) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 < sub_e069357d
    require arg2 >= 0
    require arg2 < sub_7326c587[arg1].field_256
    return sub_7326c587[arg1][2][arg2].field_0, sub_7326c587[arg1][2][arg2].field_256, sub_7326c587[arg1][2][arg2].field_512
}

function owner() {
    return owner
}

function sub_dc6bf00c(?) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 < sub_e069357d
    return sub_7326c587[arg1].field_0, sub_7326c587[arg1].field_256
}

function sub_e069357d(?) {
    return sub_e069357d
}

function sub_e9cb2261(?) {
    require msg.sender == owner
    return sub_7326c587[arg1].field_256
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0c4bdea1(?) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 < sub_e069357d
    sub_7326c587[arg1].field_0 = arg2
    return 1
}

function addStrategy(address arg1) {
    require msg.sender == owner
    sub_e069357d++
    sub_7326c587[stor2].field_0 = arg1
    sub_7326c587[stor2].field_256 = 0
    return 1
}

function sub_5ebf7ebd(?) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 < sub_e069357d
    sub_7326c587[arg1].field_0 = 0
    sub_7326c587[arg1].field_256 = 0
    return 1
}

function sub_8bc62c9e(?) {
    idx = 0
    s = -1
    while idx < sub_e069357d:
        mem[0] = idx
        mem[32] = 1
        if sub_7326c587[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = ('signextend', 3, ('var', 0))
        continue 
    return s
}

function sub_f9a9b4d1(?) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 < sub_e069357d
    require arg2 >= 0
    require arg2 < sub_7326c587[arg1].field_256
    require arg5 >= 0
    require arg5 <= 100
    sub_7326c587[arg1][2][arg2].field_0 = arg3
    sub_7326c587[arg1][2][arg2].field_256 = arg4
    sub_7326c587[arg1][2][arg2].field_512 = arg5
    return 1
}

function sub_2d4de50f(?) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 < sub_e069357d
    require arg4 >= 0
    require arg4 <= 100
    sub_7326c587[arg1].field_256++
    sub_7326c587[arg1][2][sub_7326c587[arg1].field_256].field_0 = arg2
    sub_7326c587[arg1][2][sub_7326c587[arg1].field_256].field_256 = arg3
    sub_7326c587[arg1][2][sub_7326c587[arg1].field_256].field_512 = arg4
    return 1
}

function sub_ebcfaf04(?) {
    require arg1 >= 0
    require arg1 < sub_e069357d
    idx = 0
    s = 0
    while idx < sub_7326c587[arg1].field_256:
        mem[0] = arg1
        mem[32] = 1
        if block.timestamp < sub_7326c587[arg1][2][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        if block.timestamp >= sub_7326c587[arg1][2][idx].field_256:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = sub_7326c587[arg1][2][idx].field_512
        continue 
    return s
}

function sub_4e180851(?) {
    require arg2 >= 0
    require arg2 < sub_e069357d
    require arg2 >= 0
    require arg2 < sub_e069357d
    idx = 0
    s = 0
    while idx < sub_7326c587[arg2].field_256:
        mem[0] = arg2
        mem[32] = 1
        if block.timestamp < sub_7326c587[arg2][2][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        if block.timestamp >= sub_7326c587[arg2][2][idx].field_256:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = sub_7326c587[arg2][2][idx].field_512
        continue 
    if not arg1:
        return 0
    if not s:
        return 0
    if not arg1:
        return 0
    if arg1:
        if arg1 * s / arg1 == s:
            return (arg1 * s / 100)
    revert
}



}
