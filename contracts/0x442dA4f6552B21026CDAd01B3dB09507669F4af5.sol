contract main {


// =======================  Init code  ======================


const _fallback = code.data[20 len 496]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function go(uint8 arg1) payable {
    create contract with 0 wei
                    code: code.data[383 len 113]
    require create.new_address
    if arg1 <= 0:
        # nil
    else:
        require ext_code.size(address(create.new_address))
        call address(create.new_address).a() with:
           value arg1 wei
             gas 5500 wei
        require ext_call.success
        # nil
}



}
