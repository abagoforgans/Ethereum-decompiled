contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 542]




// =====================  Runtime code  =====================


array of address sub_f509d183;
mapping of uint8 stor1;

function sub_c9f42cd6(?) {
    return bool(stor1[address(arg1)])
}

function sub_f509d183(?) {
    require arg1 < sub_f509d183.length
    return address(sub_f509d183[arg1])
}

function _fallback() payable {
    revert
}

function ap() {
    if not stor1[address(msg.sender)]:
        stor1[address(msg.sender)] = 1
        sub_f509d183.length++
        if not sub_f509d183.length <= sub_f509d183.length + 1:
            idx = sub_f509d183.length + 1
            while sub_f509d183.length > idx:
                uint256(sub_f509d183[idx]) = 0
                idx = idx + 1
                continue 
        address(sub_f509d183[sub_f509d183.length]) = msg.sender
}



}
