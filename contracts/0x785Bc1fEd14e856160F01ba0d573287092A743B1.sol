contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 5
    require not msg.value
    stor0[code.data[2309 len 20]] = 1
    return code.data[152 len 2145]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 sub_43639794;

function sub_43639794(?) {
    return sub_43639794
}

function sub_a4fbc8e3(?) {
    return bool(stor1[arg1])
}

function managers(address arg1) {
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function sub_83b184b1(?) {
    require stor0[address(msg.sender)]
    sub_43639794 = arg1
}

function sub_064ecc0f(?) {
    require stor0[address(msg.sender)]
    require sha3(arg1) == arg2
    stor1[address(arg1)] = 0
}

function sub_1c29b2a7(?) {
    require stor0[address(msg.sender)]
    require sha3(arg1) == arg2
    stor0[address(arg1)] = 1
}

function sub_9310d1c4(?) {
    require stor0[address(msg.sender)]
    require sha3(arg1) == arg2
    stor1[address(arg1)] = 1
}

function sub_b49c6e82(?) {
    require stor0[address(msg.sender)]
    require sha3(arg1) == arg2
    stor0[address(arg1)] = 0
}

function sub_bf61301e(?) {
    if sub_43639794 >= 0:
        return sub_43639794
    if arg1 < 10 * 10^18:
        return 10
    if arg1 >= 50 * 10^18:
        return 3
    return 5
}



}
