contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor2;
address stor3;
address stor4;
array of address stor5;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    stor0 = msg.sender
    stor2[address(msg.sender)] = 1
    stor4 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    stor3 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    address(stor5[stor5.length]) = 0
    stor7 = 10^16
    return code.data[321 len 13089]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
address stor3;
address sub_10ee1715Address;
array of address sub_49120cfe;
mapping of uint256 stor6;
uint256 minProfit;
address sub_32cbbaf2Address;
uint32 stor9;
uint256 sub_0393e385;
address sub_3acace3fAddress;
uint256 sub_01a154ac;
uint256 sub_c5c19c2f;
uint256 sub_332fd165;
uint8 stor14;
uint8 sub_26a6eeb8; offset 160
address sub_b9a2cd10Address;
uint256 sub_7ec3682b;
uint256 sub_fc104447;

function sub_01a154ac(?) {
    return sub_01a154ac
}

function sub_0393e385(?) {
    return uint256(sub_0393e385)
}

function sub_10ee1715(?) {
    return sub_10ee1715Address
}

function sub_26a6eeb8(?) {
    return sub_26a6eeb8
}

function sub_32cbbaf2(?) {
    return sub_32cbbaf2Address
}

function sub_332fd165(?) {
    return sub_332fd165
}

function sub_3acace3f(?) {
    return sub_3acace3fAddress
}

function sub_49120cfe(?) {
    require arg1 < sub_49120cfe.length
    return address(sub_49120cfe[arg1])
}

function minProfit() {
    return minProfit
}

function sub_7ec3682b(?) {
    return sub_7ec3682b
}

function owner() {
    return owner
}

function sub_b9a2cd10(?) {
    return sub_b9a2cd10Address
}

function sub_c5c19c2f(?) {
    return sub_c5c19c2f
}

function newOwner() {
    return newOwner
}

function sub_fc104447(?) {
    return sub_fc104447
}

function _fallback() payable {
  stop
}

function setMinProfit(uint256 arg1) {
    require owner == msg.sender
    minProfit = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function addOperator(address arg1) {
    require owner == msg.sender
    stor2[address(arg1)] = 1
}

function removeOperator(address arg1) {
    require owner == msg.sender
    stor2[address(arg1)] = 0
}

function changeAddress(address arg1) {
    require owner == msg.sender
    sub_10ee1715Address = arg1
    stor3 = arg1
}

function acceptOwnership() {
    if newOwner == msg.sender:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function sub_a777057b(?) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function cashOut() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function deposit() payable {
    require ext_code.size(stor3)
    call stor3.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9050 wei
    require ext_call.success
}

function depositAmount(uint256 arg1) payable {
    require ext_code.size(stor3)
    call stor3.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9050 wei
    require ext_call.success
}

function sub_f6d1c0df(?) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args owner, arg2
    require ext_call.success
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(stor3)
    call stor3.0x2e1a7d4d with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function balanceOf(address arg1, address arg2) {
    require ext_code.size(stor3)
    call stor3.0xf7888aec with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(stor3)
    call stor3.0x9e281a98 with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_ee98950a(?) {
    require arg1 < sub_49120cfe.length
    require ext_code.size(stor3)
    call stor3.0xf7888aec with:
         gas gas_remaining - 50 wei
        args address(sub_49120cfe[arg1]), this.address
    require ext_call.success
    return address(sub_49120cfe[arg1]), ext_call.return_data[0]
}

function sub_6ceba7c6(?) {
    require stor2[address(msg.sender)]
    sub_32cbbaf2Address = arg1
    uint256(sub_0393e385) = arg2
    sub_3acace3fAddress = arg3
    sub_01a154ac = arg4
    sub_c5c19c2f = arg5
    sub_332fd165 = arg6
    sub_b9a2cd10Address = arg7
    sub_26a6eeb8 = arg8
    sub_7ec3682b = arg9
    sub_fc104447 = arg10
}

function sub_11546edd(?) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require stor2[address(msg.sender)]
    require ext_code.size(stor3)
    call stor3.0x278b8c0e with:
         gas gas_remaining - 50 wei
        args 0, 0, arg2, address(arg3), arg4, arg5, arg6, arg7 << 248, arg8, arg9
    require ext_call.success
}

function order(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require stor2[address(msg.sender)]
    require ext_code.size(stor3)
    call stor3.order(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
         gas gas_remaining - 50 wei
        args 0, 0, arg2, address(arg3), arg4, arg5, arg6
    require ext_call.success
}

function amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    require ext_code.size(stor3)
    call stor3.0x46be96c3 with:
         gas gas_remaining - 50 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    return ext_call.return_data[0]
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    require ext_code.size(stor3)
    call stor3.0xfb6e155f with:
         gas gas_remaining - 50 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    return ext_call.return_data[0]
}

function testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) {
    require ext_code.size(stor3)
    call stor3.0x6c86888b with:
         gas gas_remaining - 50 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11, arg12
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_66fe732a(?) {
    require owner == msg.sender
    if not stor6[address(arg1)]:
        if arg1:
            sub_49120cfe.length++
            if not sub_49120cfe.length <= sub_49120cfe.length + 1:
                idx = sub_49120cfe.length + 1
                while sub_49120cfe.length > idx:
                    uint256(sub_49120cfe[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_49120cfe[sub_49120cfe.length]) = arg1
            stor6[address(arg1)] = sub_49120cfe.length + 1
}

function sub_3eb9f046(?) {
    require owner == msg.sender
    require ext_code.size(stor3)
    call stor3.0xf7888aec with:
         gas gas_remaining - 50 wei
        args 0, this.address
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x2e1a7d4d with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require stor2[address(msg.sender)]
    require ext_code.size(stor3)
    call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 50 wei
        args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
    require ext_call.success
}

function sub_0b9cb098(?) {
    require stor2[address(msg.sender)]
    require ext_code.size(stor3)
    call stor3.0x6c86888b with:
         gas gas_remaining - 50 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10, this.address
    require ext_call.success
    if not ext_call.return_data[0]:
    require ext_code.size(stor3)
    call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 50 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
    require ext_call.success
}

function depositToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    if not stor6[address(arg1)]:
        if arg1:
            sub_49120cfe.length++
            if not sub_49120cfe.length <= sub_49120cfe.length + 1:
                idx = sub_49120cfe.length + 1
                while sub_49120cfe.length > idx:
                    uint256(sub_49120cfe[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_49120cfe[sub_49120cfe.length]) = arg1
            stor6[address(arg1)] = sub_49120cfe.length + 1
    require ext_code.size(stor3)
    call stor3.0x338b5dea with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_c104fbe7(?) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args sub_10ee1715Address, arg2
    require ext_call.success
    require owner == msg.sender
    if not stor6[address(arg1)]:
        if arg1:
            sub_49120cfe.length++
            if not sub_49120cfe.length <= sub_49120cfe.length + 1:
                idx = sub_49120cfe.length + 1
                while sub_49120cfe.length > idx:
                    uint256(sub_49120cfe[idx]) = 0
                    idx = idx + 1
                    continue 
            address(sub_49120cfe[sub_49120cfe.length]) = arg1
            stor6[address(arg1)] = sub_49120cfe.length + 1
    require ext_code.size(stor3)
    call stor3.0x338b5dea with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_9ada15b4(?) {
    require owner == msg.sender
    idx = 1
    while idx < sub_49120cfe.length:
        mem[0] = 5
        mem[128] = 0
        mem[100] = this.address
        require ext_code.size(address(sub_49120cfe[idx]))
        call address(sub_49120cfe[idx]).0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        require idx < sub_49120cfe.length
        mem[0] = 5
        require owner == msg.sender
        require ext_code.size(address(sub_49120cfe[idx]))
        call address(sub_49120cfe[idx]).0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        mem[100] = owner
        mem[132] = ext_call.return_data[0]
        require ext_code.size(address(sub_49120cfe[idx]))
        call address(sub_49120cfe[idx]).0xa9059cbb with:
             gas gas_remaining - 50 wei
            args owner, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}

function sub_938bd0c6(?) {
    require owner == msg.sender
    idx = 1
    while idx < sub_49120cfe.length + 1:
        require idx < sub_49120cfe.length
        require ext_code.size(stor3)
        call stor3.0xf7888aec with:
             gas gas_remaining - 50 wei
            args address(sub_49120cfe[idx]), this.address
        require ext_call.success
        require ext_code.size(stor3)
        call stor3.0x9e281a98 with:
             gas gas_remaining - 50 wei
            args address(sub_49120cfe[idx]), ext_call.return_data[0]
        require ext_call.success
        require idx < sub_49120cfe.length
        mem[0] = 5
        require owner == msg.sender
        require ext_code.size(address(sub_49120cfe[idx]))
        call address(sub_49120cfe[idx]).0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        mem[100] = owner
        mem[132] = ext_call.return_data[0]
        require ext_code.size(address(sub_49120cfe[idx]))
        call address(sub_49120cfe[idx]).0xa9059cbb with:
             gas gas_remaining - 50 wei
            args owner, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}

function sub_badf46d8(?) {
    require stor2[address(msg.sender)]
    require ext_code.size(stor3)
    call stor3.0xfb6e155f with:
         gas gas_remaining - 50 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9
    require ext_call.success
    if ext_call.return_data[0] < arg11:
    if ext_call.return_data[0] >= arg10:
        if ext_code.size(stor3):
            call stor3.0x6c86888b with:
                 gas gas_remaining - 50 wei
                args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10, this.address
            if ext_call.success:
                if not ext_call.return_data[0]:
                if ext_code.size(stor3):
                    call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 50 wei
                        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
                    if ext_call.success:
    else:
        if ext_code.size(stor3):
            call stor3.0x6c86888b with:
                 gas gas_remaining - 50 wei
                args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, ext_call.return_data[0], this.address
            if ext_call.success:
                if not ext_call.return_data[0]:
                if ext_code.size(stor3):
                    call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas gas_remaining - 50 wei
                        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, ext_call.return_data[0]
                    if ext_call.success:
    revert
}

function sub_0827a357(?) {
    require stor2[address(msg.sender)]
    require ext_code.size(stor3)
    call stor3.0x6c86888b with:
         gas gas_remaining - 50 wei
        args 0, 0, uint32(stor9), sub_3acace3fAddress, sub_01a154ac, sub_c5c19c2f, sub_332fd165, sub_b9a2cd10Address, stor14, sub_7ec3682b, sub_fc104447, arg11, this.address
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(stor3)
        call stor3.0xfb6e155f with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9
        require ext_call.success
        require ext_code.size(stor3)
        call stor3.feeTake() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if arg10:
            require arg10
            require ext_call.return_data[0] * arg10 / arg10 == ext_call.return_data[0]
        require (ext_call.return_data[0] * arg10 / 10^18) + arg10 >= arg10
        require (ext_call.return_data[0] * arg10 / 10^18) + arg10 >= ext_call.return_data[0] * arg10 / 10^18
        if (ext_call.return_data[0] * arg10 / 10^18) + arg10 <= ext_call.return_data[0]:
            require ext_code.size(stor3)
            call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 50 wei
                args 0, 0, uint32(stor9), sub_3acace3fAddress, sub_01a154ac, sub_c5c19c2f, sub_332fd165, sub_b9a2cd10Address, stor14, sub_7ec3682b, sub_fc104447, arg11
            require ext_call.success
            require ext_code.size(stor3)
            call stor3.0x6c86888b with:
                 gas gas_remaining - 50 wei
                args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10, this.address
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(stor3)
            call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 50 wei
                args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
            require ext_call.success
            require owner == msg.sender
            if not stor6[stor10]:
                if sub_3acace3fAddress:
                    sub_49120cfe.length++
                    if not sub_49120cfe.length <= sub_49120cfe.length + 1:
                        idx = sub_49120cfe.length + 1
                        while sub_49120cfe.length > idx:
                            uint256(sub_49120cfe[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(sub_49120cfe[sub_49120cfe.length]) = sub_3acace3fAddress
                    stor6[stor10] = sub_49120cfe.length + 1
}

function sub_64b75991(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require stor2[address(msg.sender)]
    require 0 < arg2.length
    require 2 < arg1.length
    require 1 < arg2.length
    require 2 < arg2.length
    _13 = mem[(32 * arg1.length) + 224]
    require 3 < arg2.length
    _15 = mem[(32 * arg1.length) + 256]
    require 0 < arg1.length
    require 0 < arg3.length
    require 0 < arg4.length
    _21 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
    require 1 < arg4.length
    _23 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256]
    require 8 < arg2.length
    _25 = mem[(32 * arg1.length) + 416]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 228] = 0
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 260] = mem[(32 * arg1.length) + 160]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 292] = mem[204 len 20]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 324] = mem[(32 * arg1.length) + 192]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 356] = _13
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 388] = _15
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 420] = mem[140 len 20]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 452] = mem[(32 * arg2.length) + (32 * arg1.length) + 223 len 1]
    require ext_code.size(stor3)
    call stor3.0x6c86888b with:
         gas gas_remaining - 50 wei
        args 0, mem[(32 * arg1.length) + 160], mem[204 len 20], mem[(32 * arg1.length) + 192], _13, _15, mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 420 len 64], _21, _23, _25, this.address
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        require 2 < arg1.length
        require 4 < arg2.length
        _34 = mem[(32 * arg1.length) + 288]
        require 5 < arg2.length
        _36 = mem[(32 * arg1.length) + 320]
        require 6 < arg2.length
        _38 = mem[(32 * arg1.length) + 352]
        require 7 < arg2.length
        _40 = mem[(32 * arg1.length) + 384]
        require 1 < arg1.length
        require 1 < arg3.length
        require 2 < arg4.length
        _46 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288]
        require 3 < arg4.length
        _48 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 260] = mem[(32 * arg1.length) + 288]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 292] = 0
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 324] = _36
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 356] = _38
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 388] = _40
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 420] = mem[172 len 20]
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 452] = mem[(32 * arg2.length) + (32 * arg1.length) + 255 len 1]
        require ext_code.size(stor3)
        call stor3.0xfb6e155f with:
             gas gas_remaining - 50 wei
            args mem[204 len 20], _34, 0, _36, _38, _40, mem[172 len 20], mem[(32 * arg2.length) + (32 * arg1.length) + 224] << 248, _46, _48
        require ext_call.success
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256] = 0
        require ext_code.size(stor3)
        call stor3.feeTake() with:
             gas gas_remaining - 50 wei
        mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = ext_call.return_data[0]
        require ext_call.success
        require 9 < arg2.length
        require 9 < arg2.length
        if mem[(32 * arg1.length) + 448] + (mem[(32 * arg1.length) + 448] * ext_call.return_data[0] / 10^18) <= ext_call.return_data[0]:
            require 0 < arg2.length
            require 2 < arg1.length
            require 1 < arg2.length
            require 2 < arg2.length
            _70 = mem[(32 * arg1.length) + 224]
            require 3 < arg2.length
            _72 = mem[(32 * arg1.length) + 256]
            require 0 < arg1.length
            require 0 < arg3.length
            require 0 < arg4.length
            _78 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
            require 1 < arg4.length
            _80 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256]
            require 8 < arg2.length
            _82 = mem[(32 * arg1.length) + 416]
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = 0xa19b14a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 228] = 0
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 260] = mem[(32 * arg1.length) + 160]
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 292] = mem[204 len 20]
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 324] = mem[(32 * arg1.length) + 192]
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 356] = _70
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 388] = _72
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 420] = mem[140 len 20]
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 452] = mem[(32 * arg2.length) + (32 * arg1.length) + 223 len 1]
            require ext_code.size(stor3)
            call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 50 wei
                args 0, mem[(32 * arg1.length) + 160], mem[204 len 20], mem[(32 * arg1.length) + 192], _70, _72, mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 420 len 64], _78, _80, _82
            require ext_call.success
            require 2 < arg1.length
            require 4 < arg2.length
            _88 = mem[(32 * arg1.length) + 288]
            require 5 < arg2.length
            _90 = mem[(32 * arg1.length) + 320]
            require 6 < arg2.length
            _92 = mem[(32 * arg1.length) + 352]
            require 7 < arg2.length
            _94 = mem[(32 * arg1.length) + 384]
            require 1 < arg1.length
            require 1 < arg3.length
            _98 = mem[(32 * arg2.length) + (32 * arg1.length) + 224]
            require 2 < arg4.length
            _100 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288]
            require 3 < arg4.length
            _102 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
            require 9 < arg2.length
            _104 = mem[(32 * arg1.length) + 448]
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 228] = mem[204 len 20]
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 260] = _88
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 292] = 0
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 324] = _90
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 356] = _92
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 388] = _94
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 420] = mem[172 len 20]
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 452] = uint8(_98)
            require ext_code.size(stor3)
            call stor3.0x6c86888b with:
                 gas gas_remaining - 50 wei
                args mem[204 len 20], _88, 0, _90, _92, _94, mem[172 len 20], _98 << 248, _100, _102, _104, this.address
            mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require 2 < arg1.length
            require 4 < arg2.length
            require 5 < arg2.length
            require 6 < arg2.length
            require 7 < arg2.length
            require 1 < arg1.length
            require 1 < arg3.length
            require 2 < arg4.length
            require 3 < arg4.length
            require 9 < arg2.length
            require ext_code.size(stor3)
            call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 50 wei
                args mem[204 len 20], mem[(32 * arg1.length) + 288], 0, mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + 352], mem[(32 * arg1.length) + 384], mem[172 len 20], mem[(32 * arg2.length) + (32 * arg1.length) + 224] << 248, mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320], mem[(32 * arg1.length) + 448]
            require ext_call.success
            require 2 < arg1.length
            require owner == msg.sender
            if not stor6[mem[204 len 20]]:
                if mem[204 len 20]:
                    sub_49120cfe.length++
                    if not sub_49120cfe.length <= sub_49120cfe.length + 1:
                        idx = sub_49120cfe.length + 1
                        while sub_49120cfe.length > idx:
                            uint256(sub_49120cfe[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(sub_49120cfe[sub_49120cfe.length]) = mem[204 len 20]
                    stor6[address(mem[192])] = sub_49120cfe.length + 1
}



}
