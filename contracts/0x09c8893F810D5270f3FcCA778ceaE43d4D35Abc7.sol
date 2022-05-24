contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function deposit() payable {
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    require 0x454527918d6dfc0c171364a70fd15d0396cc765f == msg.sender
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
         gas gas_remaining wei
        args call.data[4]
    require ext_call.success
}

function sub_72d93593(?) {
    if 0x454527918d6dfc0c171364a70fd15d0396cc765f != msg.sender:
        require msg.sender == 0x6474a8185d3e538b6f32ea3f2af7a53cf7a0a34e
    hash = sha256hash(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, call.data[4 len 20], mem[148 len 20], call.data[158 len 12], mem[180 len 40], call.data[170 len 12], mem[232 len 27], call.data[194 len 5], mem[264 len 24], call.data[199 len 8]) 
    require sha256hash.result
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args mem[328 len 12], call.data[207 len 20], hash
    require ext_call.success
    if mem[744 len 20], call.data[182 len 12] == mem[148 len 20], call.data[158 len 12] - ext_call.return_data[0]:
        hash = sha256hash(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, 0, mem[160 len 8], call.data[24 len 12], call.data[4 len 20], mem[200 len 20], call.data[36 len 12], mem[232 len 27], call.data[60 len 5], mem[264 len 24], call.data[65 len 8]) 
        require sha256hash.result
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args mem[328 len 12], call.data[73 len 20], hash
        require ext_call.success
        if mem[744 len 20], call.data[48 len 12] == 0, mem[160 len 8], call.data[24 len 12] - ext_call.return_data[0]:
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args mem[424 len 52], call.data[24 len 12], mem[488 len 12], call.data[4 len 20], mem[520 len 20], call.data[36 len 12], mem[552 len 27], call.data[60 len 5], mem[584 len 24], call.data[65 len 8], mem[616 len 12], call.data[73 len 20], mem[648 len 31], call.data[157 len 1], call.data[93], call.data[125], mem[744 len 20], call.data[48 len 12]
            require ext_call.success
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining wei
                args mem[424 len 12], call.data[4 len 20], mem[456 len 20], call.data[158 len 12], 0, mem[520 len 20], call.data[170 len 12], mem[552 len 27], call.data[194 len 5], mem[584 len 24], call.data[199 len 8], mem[616 len 12], call.data[207 len 20], mem[648 len 31], call.data[291 len 1], call.data[227], call.data[259], mem[744 len 20], call.data[182 len 12]
}



}
