contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
array of address stor2;

function _fallback() {
    mem[96 len -6664] = code.data[7215 len -6664]
    mem[64] = -6568
    stor0 = msg.sender
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    mem[0] = 2
    address(stor2[stor2.length]) = 0
    require stor0 == msg.sender
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    require stor0 == msg.sender
    idx = 0
    while idx < mem[mem[128] + 96]:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            s = stor2.length + sha3(2) + 1
            while sha3(2) + stor2.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 2
        require idx < mem[mem[128] + 96]
        address(stor2[stor2.length]) = mem[(32 * idx) + mem[128] + 140 len 20]
        idx = idx + 1
        continue 
    return code.data[551 len 6664]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
array of address sub_1880c1cd;

function sub_1880c1cd(?) {
    require arg1 < sub_1880c1cd.length
    return address(sub_1880c1cd[arg1])
}

function kill(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor0 == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _39 = mem[(32 * idx) + 128]
        require stor0 == msg.sender
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
        call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0xf7888aec with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], address(this.address)
        require ext_call.success
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
        call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0x9e281a98 with:
             gas gas_remaining wei
            args address(_39), ext_call.return_data[0]
        require ext_call.success
        mem[(32 * arg1.length) + 132] = stor0
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_39))
        call address(_39).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0xf7888aec with:
         gas gas_remaining wei
        args 0, this.address
    require ext_call.success
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    require ext_call.success
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function transferEth(uint256 arg1, address arg2) {
    require stor0 == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_d8c38886(?) {
    hash = sha256hash(0x8d12a197cb00d4747a1fe03395095ce2a5cc68000000000000000000000000, 0, arg1, arg2, arg3, arg4, arg5) 
    require sha256hash.result
    return hash
}

function deposit() payable {
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
}

function sub_d6034e1f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor0 == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_3122a272(?) {
    require 0x9b30b999c85058dcd342d7548729bcccb16b4c == tx.origin
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas 629145 wei
        args uint256(sub_1880c1cd[mem[0 len 28]][call.data[100 len 4]]), call.data[4], 0, call.data[36], 0, call.data[104 len 4], call.data[68], 0, call.data[112 len 20], 28, call.data[132 len 96]
}

function sub_3cbc6138(?) {
    require 0x9b30b999c85058dcd342d7548729bcccb16b4c == tx.origin
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas 629145 wei
        args 0, call.data[4], uint256(sub_1880c1cd[mem[0 len 28]][call.data[100 len 4]]), call.data[36], 0, call.data[104 len 4], call.data[68], 0, call.data[112 len 20], 27, call.data[132 len 96]
}

function sub_6fc7738b(?) {
    require 0x9b30b999c85058dcd342d7548729bcccb16b4c == tx.origin
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas 629145 wei
        args 0, call.data[4], uint256(sub_1880c1cd[mem[0 len 28]][call.data[100 len 4]]), call.data[36], 0, call.data[104 len 4], call.data[68], 0, call.data[112 len 20], 28, call.data[132 len 96]
}

function sub_d9c6a54d(?) {
    require 0x9b30b999c85058dcd342d7548729bcccb16b4c == tx.origin
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas 629145 wei
        args uint256(sub_1880c1cd[mem[0 len 28]][call.data[100 len 4]]), call.data[4], 0, call.data[36], 0, call.data[104 len 4], call.data[68], 0, call.data[112 len 20], 27, call.data[132 len 96]
}

function sub_84f1bbf4(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor0 == msg.sender
    idx = 0
    while idx < arg1.length:
        sub_1880c1cd.length++
        if not sub_1880c1cd.length <= sub_1880c1cd.length + 1:
            s = sub_1880c1cd.length + sha3(2) + 1
            while sha3(2) + sub_1880c1cd.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 2
        require idx < arg1.length
        address(sub_1880c1cd[sub_1880c1cd.length]) = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function depositToken(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
        require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0x8d12a197cb00d4747a1fe03395095ce2a5cc68, arg2
        require ext_call.success
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
        call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0x338b5dea with:
             gas gas_remaining wei
            args address(arg1), arg2
        require ext_call.success
}

function sub_66f3d585(?) {
    require (tx.origin == 0xbd1f96df54abe78d34fba23f2f4a5190c0e0b6) + (tx.origin == 0xcf4212623cc5f81025e5af515cfad847f922bc90) + (tx.origin == 0xb85054903ed866cdb1c0799286323bb789d448) + (tx.origin == 0x9b30b999c85058dcd342d7548729bcccb16b4c)
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining wei
        args 0, arg1, uint256(sub_1880c1cd[arg3]), call.data[4 len 256]
    call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining wei
        args uint256(sub_1880c1cd[arg3]), arg2, 0, call.data[260 len 256]
}

function withdraw(uint256 arg1, address arg2) {
    require stor0 == msg.sender
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
    if arg1:
        call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0x2e1a7d4d with:
             gas gas_remaining wei
            args arg1
        require ext_call.success
        call arg2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0xf7888aec with:
             gas gas_remaining wei
            args 0, this.address
        require ext_call.success
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
        call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        require ext_call.success
        call arg2 with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
}

function withdrawToken(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
    if arg2:
        call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0x9e281a98 with:
             gas gas_remaining wei
            args address(arg1), arg2
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, arg2
    else:
        call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0xf7888aec with:
             gas gas_remaining wei
            args address(arg1), this.address
        require ext_call.success
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc68)
        call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.0x9e281a98 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
    require ext_call.success
}

function sub_7464e61b(?) {
    if call.data[100] > block.number:
        staticcall 0x8d12a197cb00d4747a1fe03395095ce2a5cc68.0x508493bc with:
                gas gas_remaining wei
               args 0, arg1
        if call.data[68] * call.data[196] / call.data[36] > ext_call.return_data[0] != 1:
            hash = sha256hash(0xce8d12a197cb00d4747a1fe03395095ce2a5cc68, address(sub_1880c1cd[call.data[228]]), call.data[36], 0, call.data[68], call.data[100], call.data[132]) 
            staticcall 0x8d12a197cb00d4747a1fe03395095ce2a5cc68.0x19774d43 with:
                    gas gas_remaining wei
                   args address(arg1), hash
            if ext_call.return_data[0] > call.data[36] - call.data[196] != 1:
                require (tx.origin == 0xbd1f96df54abe78d34fba23f2f4a5190c0e0b6) + (tx.origin == 0xcf4212623cc5f81025e5af515cfad847f922bc90) + (tx.origin == 0xb85054903ed866cdb1c0799286323bb789d448) + (tx.origin == 0x9b30b999c85058dcd342d7548729bcccb16b4c)
                call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining wei
                    args uint256(sub_1880c1cd[call.data[228]]), call.data[36], 0, call.data[68], call.data[100], call.data[132], address(arg1), call.data[164], call.data[260], call.data[292], call.data[196]
}

function sub_e8c6b145(?) {
    if call.data[100] > block.number:
        staticcall 0x8d12a197cb00d4747a1fe03395095ce2a5cc68.0x508493bc with:
                gas gas_remaining wei
               args uint256(sub_1880c1cd[call.data[228]]), arg1
        if call.data[68] * call.data[196] / call.data[36] > ext_call.return_data[0] != 1:
            hash = sha256hash(0xce8d12a197cb00d4747a1fe03395095ce2a5cc68, 0, call.data[36], address(sub_1880c1cd[call.data[228]]), call.data[68], call.data[100], call.data[132]) 
            staticcall 0x8d12a197cb00d4747a1fe03395095ce2a5cc68.0x19774d43 with:
                    gas gas_remaining wei
                   args address(arg1), hash
            if ext_call.return_data[0] > call.data[36] - call.data[196] != 1:
                require (tx.origin == 0xbd1f96df54abe78d34fba23f2f4a5190c0e0b6) + (tx.origin == 0xcf4212623cc5f81025e5af515cfad847f922bc90) + (tx.origin == 0xb85054903ed866cdb1c0799286323bb789d448) + (tx.origin == 0x9b30b999c85058dcd342d7548729bcccb16b4c)
                call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining wei
                    args 0, call.data[36], uint256(sub_1880c1cd[call.data[228]]), call.data[68], call.data[100], call.data[132], address(arg1), call.data[164], call.data[260], call.data[292], call.data[196]
}

function sub_b5cfb13d(?) {
    if call.data[132] > block.number:
        if call.data[324] > block.number:
            staticcall 0x8d12a197cb00d4747a1fe03395095ce2a5cc68.0x508493bc with:
                    gas gas_remaining wei
                   args 0, call.data[36]
            if call.data[292] * call.data[420] / call.data[260] > ext_call.return_data[0] != 1:
                staticcall 0x8d12a197cb00d4747a1fe03395095ce2a5cc68.0x508493bc with:
                        gas gas_remaining wei
                       args uint256(sub_1880c1cd[call.data[452]]), call.data[4]
                if call.data[100] * call.data[228] / call.data[68] > ext_call.return_data[0] != 1:
                    hash = sha256hash(0xce8d12a197cb00d4747a1fe03395095ce2a5cc68, 0, call.data[68], address(sub_1880c1cd[call.data[452]]), call.data[100], call.data[132], call.data[164]) 
                    staticcall 0x8d12a197cb00d4747a1fe03395095ce2a5cc68.0x19774d43 with:
                            gas gas_remaining wei
                           args call.data[4], hash
                    if ext_call.return_data[0] > call.data[68] - call.data[228] != 1:
                        hash = sha256hash(0xce8d12a197cb00d4747a1fe03395095ce2a5cc68, address(sub_1880c1cd[call.data[452]]), call.data[260], 0, call.data[292], call.data[324], call.data[356]) 
                        staticcall 0x8d12a197cb00d4747a1fe03395095ce2a5cc68.0x19774d43 with:
                                gas gas_remaining wei
                               args call.data[36], hash
                        if ext_call.return_data[0] > call.data[260] - call.data[420] != 1:
                            require (tx.origin == 0xbd1f96df54abe78d34fba23f2f4a5190c0e0b6) + (tx.origin == 0xcf4212623cc5f81025e5af515cfad847f922bc90) + (tx.origin == 0xb85054903ed866cdb1c0799286323bb789d448) + (tx.origin == 0x9b30b999c85058dcd342d7548729bcccb16b4c)
                            call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                 gas gas_remaining wei
                                args 0, call.data[68], uint256(sub_1880c1cd[call.data[452]]), call.data[100], call.data[132], call.data[164], call.data[4], call.data[196], call.data[484], call.data[516], call.data[228]
                            call 0x008d12a197cb00d4747a1fe03395095ce2a5cc68.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                 gas gas_remaining wei
                                args uint256(sub_1880c1cd[call.data[452]]), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[36], call.data[388], call.data[548], call.data[580], call.data[420]
}



}
