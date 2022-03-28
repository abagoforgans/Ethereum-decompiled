contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 2120]
}



// =====================  Runtime code  =====================


address owner;
address controllerAddress;
array of address dapps;
array of address sub_80f052d8;
array of address sub_539b072c;
array of address sub_5ddd1f24;

function sub_539b072c(?) {
    require arg2 < uint256(sub_539b072c[address(arg1)])
    return uint256(sub_539b072c[address(arg1)]), address(sub_539b072c[address(arg1)][arg2])
}

function sub_5ddd1f24(?) {
    require arg2 < uint256(sub_5ddd1f24[address(arg1)])
    return uint256(sub_5ddd1f24[address(arg1)]), address(sub_5ddd1f24[address(arg1)][arg2])
}

function sub_80f052d8(?) {
    require arg1 < sub_80f052d8.length
    return sub_80f052d8[arg1]
}

function owner() {
    return owner
}

function dapps(uint256 arg1) {
    require arg1 < dapps.length
    return dapps[arg1]
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert 
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_53d85919(?) {
    require arg1 < dapps.length
    return dapps.length, dapps[arg1]
}

function setController(address arg1) {
    require owner == msg.sender
    controllerAddress = arg1
}

function sub_ca958491(?) {
    require owner == msg.sender
    require arg1 < dapps.length
    dapps[arg1] = 0
}

function sub_d4868baa(?) {
    require arg1 < sub_80f052d8.length
    return sub_80f052d8.length, sub_80f052d8[arg1]
}

function sub_e79ecc60(?) {
    require owner == msg.sender
    require arg1 < sub_80f052d8.length
    sub_80f052d8[arg1] = 0
}

function sub_c6565ca5(?) {
    require controllerAddress == msg.sender
    uint256(sub_5ddd1f24[address(arg2)])++
    address(sub_5ddd1f24[address(arg2)][uint256(sub_5ddd1f24[address(arg2)])]) = arg1
    sub_80f052d8.length++
    sub_80f052d8[sub_80f052d8.length] = arg1
    return 1
}

function sub_529727ca(?) {
    require owner == msg.sender
    uint256(sub_539b072c[address(arg2)])++
    if not uint256(sub_539b072c[address(arg2)]) <= uint256(sub_539b072c[address(arg2)]) + 1:
        idx = uint256(sub_539b072c[address(arg2)]) + 1
        while uint256(sub_539b072c[address(arg2)]) > idx:
            uint256(sub_539b072c[address(arg2)][idx]) = 0
            idx = idx + 1
            continue 
    address(sub_539b072c[address(arg2)][uint256(sub_539b072c[address(arg2)])]) = arg1
    dapps.length++
    dapps[dapps.length] = arg1
}



}
