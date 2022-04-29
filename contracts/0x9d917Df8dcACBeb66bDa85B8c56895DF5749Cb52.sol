contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint8 stor7B7C;
uint8 stor7077;
uint8 stor731D;
uint8 storABC2;
uint8 storB1F2;

function _fallback() payable {
    stor2 = 0x6ba73e18506c46b47a9f1ecaa8aaca6dbfcde86ce3b734262a1946c2fe3
    stor3 = 0xad3c4d11cefb1c53f626a2731f80c21d654180a860fcb4fee87f83c5e63
    stor4 = 0x6056598bbd9cff397eb87b0af4781068879ba487e0fae8a10fdedfd0966
    stor5 = 0x67408ee90044bd6c2f2d0eaa0db2e6688c4d4cdb821608f3c559328d174
    require not msg.value
    stor0 = msg.sender
    stor1[address(msg.sender)] = 1
    stor6 = code.data[7810 len 20]
    stor731D = 1
    stor7077 = 1
    stor7B7C = 1
    storABC2 = 1
    storB1F2 = 1
    return code.data[494 len 7304]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;

function isAllowed(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
  stop
}

function sub_44272a3e(?) {
    return (stor4 + arg1)
}

function sub_e288c0dd(?) {
    return (stor2 + arg1)
}

function sub_4817201c(?) {
    return uint8(stor5 + arg1)
}

function sub_d212942a(?) {
    return address(stor3 + arg1)
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    require arg1
    stor0 = arg1
}

function sub_12528ee8(?) {
    require stor0 == msg.sender
    stor2 = arg1
    stor3 = arg2
    stor4 = arg3
    stor5 = arg4
}

function transferEtherToOwner(uint256 arg1) {
    require stor1[address(msg.sender)]
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    require stor1[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function deposit() payable {
    require stor1[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function balanceOf(address arg1, address arg2) {
    require ext_code.size(stor6)
    call stor6.0xf7888aec with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function orderFills(address arg1, bytes32 arg2) {
    require ext_code.size(stor6)
    call stor6.0x19774d43 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function transferTokenToOwner(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, arg2
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_35d063f5(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor1[address(msg.sender)]
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * uint8(idx)) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function withdrawEtherToOwner(uint256 arg1) {
    require stor1[address(msg.sender)]
    require stor1[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require stor1[address(msg.sender)]
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function depositToken(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args stor6, arg2
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x338b5dea with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    require ext_code.size(stor6)
    call stor6.0x46be96c3 with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    return ext_call.return_data[0]
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    require ext_code.size(stor6)
    call stor6.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    return ext_call.return_data[0]
}

function testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) {
    require ext_code.size(stor6)
    call stor6.0x6c86888b with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11, arg12
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_15a2fc2a(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = arg1.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(idx) < mem[(32 * arg1.length) + 192]
        mem[(32 * arg1.length) + (32 * uint8(idx)) + 224] = stor2 + mem[(32 * uint8(idx)) + 128]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 224] = 32
    mem[(64 * arg1.length) + 256] = mem[(32 * arg1.length) + 192]
    _36 = mem[(32 * arg1.length) + 192]
    s = 0
    while None < 32 * _36:
        mem[None + (64 * arg1.length) + 288] = mem[(32 * arg1.length) + None + 224]
        s = None + 32
        continue 
    return 32, mem[(64 * arg1.length) + 256 len (32 * _36) + 32]
}

function sub_e6c65527(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = arg1.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(idx) < mem[(32 * arg1.length) + 192]
        mem[(32 * arg1.length) + (32 * uint8(idx)) + 224] = stor4 + mem[(32 * uint8(idx)) + 128]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 224] = 32
    mem[(64 * arg1.length) + 256] = mem[(32 * arg1.length) + 192]
    _36 = mem[(32 * arg1.length) + 192]
    s = 0
    while None < 32 * _36:
        mem[None + (64 * arg1.length) + 288] = mem[(32 * arg1.length) + None + 224]
        s = None + 32
        continue 
    return 32, mem[(64 * arg1.length) + 256 len (32 * _36) + 32]
}

function sub_b1203524(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = arg1.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(idx) < mem[(32 * arg1.length) + 192]
        mem[(32 * arg1.length) + (32 * uint8(idx)) + 224] = uint8(stor5 + mem[(32 * uint8(idx)) + 128])
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 224] = 32
    mem[(64 * arg1.length) + 256] = mem[(32 * arg1.length) + 192]
    _36 = mem[(32 * arg1.length) + 192]
    s = 0
    while None < 32 * _36:
        mem[None + (64 * arg1.length) + 288] = mem[(32 * arg1.length) + None + 224]
        s = None + 32
        continue 
    return 32, mem[(64 * arg1.length) + 256 len (32 * _36) + 32]
}

function sub_1b550b7e(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = arg1.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(idx) < mem[(32 * arg1.length) + 192]
        mem[(32 * arg1.length) + (32 * uint8(idx)) + 224] = address(stor3 + mem[(32 * uint8(idx)) + 128])
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 224] = 32
    mem[(64 * arg1.length) + 256] = mem[(32 * arg1.length) + 192]
    _36 = mem[(32 * arg1.length) + 192]
    s = 0
    while None < 32 * _36:
        mem[None + (64 * arg1.length) + 288] = mem[(32 * arg1.length) + None + 224]
        s = None + 32
        continue 
    return 32, mem[(64 * arg1.length) + 256 len (32 * _36) + 32]
}

function sub_9590cfce(?) {
    require stor1[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x19774d43 with:
         gas gas_remaining - 710 wei
        args address(call.data[452]), call.data[644]
    require ext_call.success
    if ext_call.return_data[0] + call.data[356] <= call.data[228]:
        require ext_code.size(stor6)
        call stor6.0x19774d43 with:
             gas gas_remaining - 710 wei
            args address(call.data[420]), call.data[580]
        require ext_call.success
        if ext_call.return_data[0] + call.data[196] <= call.data[68]:
            require ext_code.size(stor6)
            call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining - 710 wei
                args 0, call.data[68], address(call.data[484]), call.data[100], call.data[132], call.data[164], address(call.data[420]), call.data[4] << 248, call.data[516], call.data[548], call.data[196]
            require ext_call.success
            require ext_code.size(stor6)
            call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining - 710 wei
                args address(call.data[484]), call.data[228], 0, call.data[260], call.data[292], call.data[324], address(call.data[452]), call.data[36] << 248, stor2 + arg1, call.data[612], call.data[356]
            require ext_call.success
}

function sub_f40811ef(?) {
    require stor1[address(msg.sender)]
    require ext_code.size(stor6)
    call stor6.0x19774d43 with:
         gas gas_remaining - 710 wei
        args address(call.data[420]), call.data[548]
    require ext_call.success
    if ext_call.return_data[0] + call.data[196] <= call.data[68]:
        require ext_code.size(stor6)
        call stor6.0x19774d43 with:
             gas gas_remaining - 710 wei
            args address(call.data[452]), call.data[644]
        require ext_call.success
        if ext_call.return_data[0] + call.data[356] <= call.data[228]:
            require ext_code.size(stor6)
            call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining - 710 wei
                args 0, call.data[68], address(call.data[484]), call.data[100], call.data[132], call.data[164], address(call.data[420]), call.data[4] << 248, stor2 + arg1, call.data[516], call.data[196]
            require ext_call.success
            require ext_code.size(stor6)
            call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas gas_remaining - 710 wei
                args address(call.data[484]), call.data[228], 0, call.data[260], call.data[292], call.data[324], address(call.data[452]), call.data[36] << 248, call.data[580], call.data[612], call.data[356]
            require ext_call.success
}

function sub_0b247938(?) {
    require stor1[address(msg.sender)]
    if block.number >= (arg1 / 17777) + 1:
        if block.number < (arg1 / 17777) + 20:
            require stor1[address(msg.sender)]
            require ext_code.size(stor6)
            call stor6.0x19774d43 with:
                 gas gas_remaining - 710 wei
                args address(call.data[484]), call.data[676]
            require ext_call.success
            if ext_call.return_data[0] + call.data[388] <= call.data[260]:
                require ext_code.size(stor6)
                call stor6.0x19774d43 with:
                     gas gas_remaining - 710 wei
                    args address(call.data[452]), call.data[612]
                require ext_call.success
                if ext_call.return_data[0] + call.data[228] <= call.data[100]:
                    require ext_code.size(stor6)
                    call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args 0, call.data[100], address(call.data[516]), call.data[132], call.data[164], call.data[196], address(call.data[452]), call.data[4] << 248, call.data[548], call.data[580], call.data[228]
                    require ext_call.success
                    require ext_code.size(stor6)
                    call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[516]), call.data[260], 0, call.data[292], call.data[324], call.data[356], address(call.data[484]), call.data[36] << 248, stor2 + arg2, call.data[644], call.data[388]
                    require ext_call.success
}

function sub_2b71a3f1(?) {
    require stor1[address(msg.sender)]
    if block.number >= (arg1 / 17777) + 1:
        if block.number < (arg1 / 17777) + 20:
            require stor1[address(msg.sender)]
            require ext_code.size(stor6)
            call stor6.0x19774d43 with:
                 gas gas_remaining - 710 wei
                args address(call.data[452]), call.data[580]
            require ext_call.success
            if ext_call.return_data[0] + call.data[228] <= call.data[100]:
                require ext_code.size(stor6)
                call stor6.0x19774d43 with:
                     gas gas_remaining - 710 wei
                    args address(call.data[484]), call.data[676]
                require ext_call.success
                if ext_call.return_data[0] + call.data[388] <= call.data[260]:
                    require ext_code.size(stor6)
                    call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args 0, call.data[100], address(call.data[516]), call.data[132], call.data[164], call.data[196], address(call.data[452]), call.data[4] << 248, stor2 + arg2, call.data[548], call.data[228]
                    require ext_call.success
                    require ext_code.size(stor6)
                    call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[516]), call.data[260], 0, call.data[292], call.data[324], call.data[356], address(call.data[484]), call.data[36] << 248, call.data[612], call.data[644], call.data[388]
                    require ext_call.success
}

function sub_80c0794e(?) {
    require stor1[address(msg.sender)]
    if block.number >= (arg1 / 17777) + 2:
        if block.number < (arg1 / 17777) + 20:
            require stor1[address(msg.sender)]
            require ext_code.size(stor6)
            call stor6.0x19774d43 with:
                 gas gas_remaining - 710 wei
                args address(call.data[484]), call.data[676]
            require ext_call.success
            if ext_call.return_data[0] + call.data[388] <= call.data[260]:
                require ext_code.size(stor6)
                call stor6.0x19774d43 with:
                     gas gas_remaining - 710 wei
                    args address(call.data[452]), call.data[612]
                require ext_call.success
                if ext_call.return_data[0] + call.data[228] <= call.data[100]:
                    require ext_code.size(stor6)
                    call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args 0, call.data[100], address(call.data[516]), call.data[132], call.data[164], call.data[196], address(call.data[452]), call.data[4] << 248, call.data[548], call.data[580], call.data[228]
                    require ext_call.success
                    require ext_code.size(stor6)
                    call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[516]), call.data[260], 0, call.data[292], call.data[324], call.data[356], address(call.data[484]), call.data[36] << 248, stor2 + arg2, call.data[644], call.data[388]
                    require ext_call.success
}

function sub_b0a8ecd8(?) {
    require stor1[address(msg.sender)]
    if block.number >= (arg1 / 17777) + 2:
        if block.number < (arg1 / 17777) + 20:
            require stor1[address(msg.sender)]
            require ext_code.size(stor6)
            call stor6.0x19774d43 with:
                 gas gas_remaining - 710 wei
                args address(call.data[452]), call.data[580]
            require ext_call.success
            if ext_call.return_data[0] + call.data[228] <= call.data[100]:
                require ext_code.size(stor6)
                call stor6.0x19774d43 with:
                     gas gas_remaining - 710 wei
                    args address(call.data[484]), call.data[676]
                require ext_call.success
                if ext_call.return_data[0] + call.data[388] <= call.data[260]:
                    require ext_code.size(stor6)
                    call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args 0, call.data[100], address(call.data[516]), call.data[132], call.data[164], call.data[196], address(call.data[452]), call.data[4] << 248, stor2 + arg2, call.data[548], call.data[228]
                    require ext_call.success
                    require ext_code.size(stor6)
                    call stor6.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[516]), call.data[260], 0, call.data[292], call.data[324], call.data[356], address(call.data[484]), call.data[36] << 248, call.data[612], call.data[644], call.data[388]
                    require ext_call.success
}



}
