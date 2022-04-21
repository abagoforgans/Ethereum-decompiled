contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 4616]
}



// =====================  Runtime code  =====================


address stor0;

function destroy() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if msg.value > 0:
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function put() payable {
    require msg.sender == stor0
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_cf29e97c(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor0
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.mem[ceil32(arg1.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.mem[ceil32(arg1.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
    require ext_call.success
}

function sub_3b933770(?) {
    require msg.sender == stor0
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x19774d43 with:
         gas gas_remaining - 710 wei
        args address(call.data[100] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf), call.data[612] xor 0xc1728175fc5cd03c1a2ff88609ac175d181de229943aec85b11d4deb2279710e
    require ext_call.success
    require ext_call.return_data[0] + call.data[292] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf <= call.data[164] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf
    require call.data[164] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x508493bc with:
         gas gas_remaining - 710 wei
        args address(call.data[68] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf), address(call.data[100] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf)
    require ext_call.success
    require ext_call.return_data[0] >= call.data[292] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf * call.data[196] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf / call.data[164] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x19774d43 with:
         gas gas_remaining - 710 wei
        args address(call.data[132] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf), call.data[644] xor 0xc1728175fc5cd03c1a2ff88609ac175d181de229943aec85b11d4deb2279710e
    require ext_call.success
    require ext_call.return_data[0] + call.data[452] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf <= call.data[324] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf
    require call.data[324] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x508493bc with:
         gas gas_remaining - 710 wei
        args 0, address(call.data[132] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf)
    require ext_call.success
    require ext_call.return_data[0] >= call.data[452] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf * call.data[356] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf / call.data[324] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, call.data[164] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf, address(call.data[68] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf), call.data[196] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf, call.data[228] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf, call.data[260] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf, address(call.data[100] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf), call.data[4] << 248, call.data[484] xor 0xc1728175fc5cd03c1a2ff88609ac175d181de229943aec85b11d4deb2279710e, call.data[516] xor 0xc1728175fc5cd03c1a2ff88609ac175d181de229943aec85b11d4deb2279710e, call.data[292] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf
    require ext_call.success
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args address(call.data[68] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf), call.data[324] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf, 0, call.data[356] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf, call.data[388] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf, call.data[420] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf, address(call.data[132] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf), call.data[36] << 248, call.data[548] xor 0xc1728175fc5cd03c1a2ff88609ac175d181de229943aec85b11d4deb2279710e, call.data[580] xor 0xc1728175fc5cd03c1a2ff88609ac175d181de229943aec85b11d4deb2279710e, call.data[452] xor 0x1480e1c8c794be9c5c0a28874f6642fc2814bbdf
    require ext_call.success
}



}
