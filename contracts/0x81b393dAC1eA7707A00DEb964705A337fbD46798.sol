contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = code.data[830 len 32]
    stor1 = code.data[862 len 32]
    stor2 += msg.value
    return code.data[163 len 667]
}



// =====================  Runtime code  =====================


const WEI_PER_ETHER = 10^18


address stor0;
address stor1;
array of uint256 sub_b2709a7e;

function sub_b2709a7e(?) {
    require arg1 < sub_b2709a7e.length
    return sub_b2709a7e[arg1]
}

function _fallback() payable {
    revert 
}

function notarize(bytes32 arg1) {
    if stor0 == msg.sender:
        sub_b2709a7e.length++
        if not sub_b2709a7e.length <= sub_b2709a7e.length + 1:
            idx = sub_b2709a7e.length + 1
            while sub_b2709a7e.length > idx:
                sub_b2709a7e[idx] = 0
                idx = idx + 1
                continue 
    else:
        require stor1 == msg.sender
        sub_b2709a7e.length++
        if not sub_b2709a7e.length <= sub_b2709a7e.length + 1:
            idx = sub_b2709a7e.length + 1
            while sub_b2709a7e.length > idx:
                sub_b2709a7e[idx] = 0
                idx = idx + 1
                continue 
    sub_b2709a7e[sub_b2709a7e.length] = arg1
}



}
