contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 882]




// =====================  Runtime code  =====================


array of uint256 stor0;
array of address stor1;

function _fallback() payable {
    revert 
}

function sub_bc8b2d21(?) {
    require arg1 < stor1.length
    require ext_code.size(stor1[arg1])
    call stor1[arg1].0x948e1968 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require arg1 < stor0.length
    stor0[arg1] = ext_call.return_data[0]
}

function sub_79e68003(?) {
    create contract with 0 wei
                    code: code.data[541 len 341], arg1, arg2, msg.sender
    require create.new_address
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    stor0[stor0.length] = arg2
    stor1.length++
    stor1[stor1.length] = address(create.new_address)
}



}
