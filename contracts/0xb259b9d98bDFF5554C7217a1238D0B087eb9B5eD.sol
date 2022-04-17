contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;

function _fallback() {
    stor2[address(msg.sender)] = 1
    return code.data[118 len 1895]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 sub_830775ce;
mapping of uint8 stor2;
array of uint256 sub_d3d04fdd;
uint256 sub_9a865eb3;

function owners(address arg1) {
    return bool(stor2[arg1])
}

function sub_14011bae(?) {
    return bool(stor0[arg1])
}

function sub_830775ce(?) {
    return sub_830775ce[arg1]
}

function sub_9a865eb3(?) {
    return sub_9a865eb3
}

function getInt(bytes32 arg1, bytes32 arg2) {
    return sub_830775ce[arg1][arg2]
}

function sub_d3d04fdd(?) {
    require arg1 < sub_d3d04fdd.length
    return sub_d3d04fdd[arg1]
}

function _fallback() payable {
    revert
}

function sub_beaaa512(?) {
    require bool(stor2[address(msg.sender)]) == 1
    stor2[address(arg1)] = uint8(arg2)
    return 1
}

function sub_44330716(?) {
    require bool(stor2[address(msg.sender)]) == 1
    sub_830775ce[arg1] = arg2
    if not stor0[arg1]:
        stor0[arg1] = 1
        sub_d3d04fdd.length++
        if not sub_d3d04fdd.length <= sub_d3d04fdd.length + 1:
            idx = sub_d3d04fdd.length + 1
            while sub_d3d04fdd.length > idx:
                sub_d3d04fdd[idx] = 0
                idx = idx + 1
                continue 
        sub_d3d04fdd[sub_d3d04fdd.length] = arg1
        sub_9a865eb3++
    return 1
}

function sub_8ebfaf13(?) {
    require bool(stor2[address(msg.sender)]) == 1
    sub_830775ce[arg1][arg2] = arg3
    if not stor0[arg1][arg2]:
        stor0[arg1][arg2] = 1
        sub_d3d04fdd.length++
        if not sub_d3d04fdd.length <= sub_d3d04fdd.length + 1:
            idx = sub_d3d04fdd.length + 1
            while sub_d3d04fdd.length > idx:
                sub_d3d04fdd[idx] = 0
                idx = idx + 1
                continue 
        sub_d3d04fdd[sub_d3d04fdd.length] = sha3(arg1, arg2)
        sub_9a865eb3++
    return 1
}



}
