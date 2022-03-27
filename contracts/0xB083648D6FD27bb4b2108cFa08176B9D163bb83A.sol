contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 689]




// =====================  Runtime code  =====================


array of uint256 domains;
array of address stor1;

function domains(uint256 arg1) {
    require arg1 < domains.length
    return domains[arg1]
}

function _fallback() {
    revert 
}

function sub_bc8b2d21(?) {
    require arg1 < stor1.length
    require ext_code.size(address(stor1[arg1]))
    call address(stor1[arg1]).0x948e1968 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require arg1 < domains.length
    domains[arg1] = ext_call.return_data[0]
}

function sub_79e68003(?) {
    create contract with 0 wei
                    code: code.data[522 len 167], arg1, arg2
    require create.new_address
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = address(create.new_address)
}



}
