contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 916]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_a3b43b07(?) payable {
    create contract with 0 wei
                    code: code.data[291 len 625]
    call address(create.new_address).transfer(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    emit ProxyCreated(address(create.new_address), msg.sender, arg1);
    return address(create.new_address)
}

function createProxy() payable {
    create contract with 0 wei
                    code: code.data[291 len 625]
    call address(create.new_address).transfer(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    emit ProxyCreated(address(create.new_address), msg.sender, msg.sender);
    return address(create.new_address)
}



}
