contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 995]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdrawalToken(address arg1, uint256 arg2) {
    s = 0
    idx = 0
    while idx < arg2:
        mem[96 len 492] = code.data[460 len 492]
        create contract with 0 wei
                        code: code.data[460 len 492]
        require create.new_address
        mem[100] = arg1
        mem[132] = msg.sender
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x5934607f with:
             gas gas_remaining - 710 wei
            args address(arg1), msg.sender
        require ext_call.success
        emit Addr(address(create.new_address));
        mem[96] = 0x83197ef000000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x83197ef0 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        s = create.new_address
        idx = idx + 1
        continue 
}



}
