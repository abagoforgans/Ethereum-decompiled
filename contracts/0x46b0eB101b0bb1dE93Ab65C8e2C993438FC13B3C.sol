contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 7352]




// =====================  Runtime code  =====================


address sysAddress;

function sys() {
    return sysAddress
}

function kill() {
    require sysAddress
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert 
}

function sub_b018ab16(?) {
    require not sysAddress
    create contract with 0 wei
                    code: code.data[588 len 3427], address(arg1)
    require create.new_address
    sysAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[4015 len 3337], address(arg2)
}



}
