contract main {




// =====================  Runtime code  =====================


uint256 sub_565e2453;
address stor1;
uint256 sub_c88fd6d1;
array of uint256 stor3;
array of uint256 location;
mapping of uint256 sub_1ca14f19;

function sub_1ca14f19(?) {
    return sub_1ca14f19[arg1]
}

function sub_565e2453(?) {
    return sub_565e2453
}

function getLocation(uint256 arg1) {
    return location[arg1][0 len location[arg1].length]
}

function sub_c88fd6d1(?) {
    return sub_c88fd6d1
}

function _fallback() payable {
    revert
}

function sub_f05bf917(?) {
    require msg.sender == stor1
    sub_c88fd6d1++
    sub_565e2453 = arg1
    uint256(stor3[]) = Array(len=arg2.length, data=arg2[all])
    sub_1ca14f19[stor2] = sub_565e2453
    if 31 >= stor3.length:
        location[stor2] = stor3.length
        idx = 0
        while location[stor2].length + 31 / 32 > idx:
            location[stor2][idx] = 0
            idx = idx + 1
            continue 
    else:
        location[stor2] = Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length) + 1
        if not Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length):
            idx = 0
            while location[stor2].length + 31 / 32 > idx:
                location[stor2][idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor3.length + 31 / 32 > idx:
                location[stor2][s] = uint256(stor3[idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor3.length + 31 / 32
            while location[stor2].length + 31 / 32 > idx:
                location[stor2][idx] = 0
                idx = idx + 1
                continue 
}



}
