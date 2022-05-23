contract main {




// =====================  Runtime code  =====================


const bancorToken = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff

const bancorETHToken = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315

const ETH_TOKEN_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address owner;
address exchangeAdapterManagerAddress;
address sub_9efe1cd2Address;
uint256 exchangeId;
uint256 name;
mapping of address tokenToConverter;
mapping of address tokenToRelay;
uint8 stor7;

function name() {
    return name
}

function exchangeId() {
    return exchangeId
}

function adapterEnabled() {
    return bool(stor7)
}

function isEnabled() {
    return bool(stor7)
}

function owner() {
    return owner
}

function sub_9efe1cd2(?) {
    return sub_9efe1cd2Address
}

function exchangeAdapterManager() {
    return exchangeAdapterManagerAddress
}

function tokenToConverter(address arg1) {
    return tokenToConverter[arg1]
}

function tokenToRelay(address arg1) {
    return tokenToRelay[arg1]
}

function _fallback() payable {
    revert
}

function getExchangeDetails() {
    return name, bool(stor7)
}

function enable() {
    require msg.sender == owner
    stor7 = 1
    return 1
}

function disable() {
    require msg.sender == owner
    stor7 = 0
    return 1
}

function sub_926b7769(?) {
    require msg.sender == owner
    sub_9efe1cd2Address = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setExchangeAdapterManager(address arg1) {
    require msg.sender == owner
    exchangeAdapterManagerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function supportsTradingPair(address arg1, address arg2) {
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        return bool(tokenToConverter[address(arg2)])
    return bool(tokenToConverter[address(arg1)])
}

function setExchangeDetails(bytes32 arg1, bytes32 arg2) {
    if exchangeAdapterManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transaction sender is not the adapter manager'
    exchangeId = arg1
    name = arg2
    return 1
}

function approveToken(address arg1) {
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_9efe1cd2Address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_9efe1cd2Address, 0x8000000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function updateSupportedTokenList(address[] arg1, address[] arg2, address[] arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    if arg1.length != arg2.length:
        revert with 0, 'Arrays are not the same length'
    if arg3.length != arg2.length:
        revert with 0, 'Arrays are not the same length'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        tokenToConverter[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        require idx < arg3.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        tokenToRelay[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 204 len 20]
        idx = idx + 1
        continue 
    return 1
}

function getPath(address arg1, bool arg2) {
    if not arg2:
        if tokenToRelay[address(arg1)]:
            mem[384 len 0] = None
            return Array(len=5, data=mem[384 len 160]), 5
        if arg1 != 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff:
            mem[384 len 0] = None
            return Array(len=5, data=mem[384 len 160]), 5
        mem[320 len 0] = None
        return Array(len=3, data=mem[320 len 96]), 3
    require ext_code.size(tokenToConverter[address(arg1)])
    call tokenToConverter[address(arg1)].getQuickBuyPathLength() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Error with pathLength'
    if ext_call.return_data[0]:
        mem[128 len 32 * ext_call.return_data[0]] = code.data[10548 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 132] = idx
        require ext_code.size(tokenToConverter[address(arg1)])
        call tokenToConverter[address(arg1)].quickBuyPath(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ext_call.return_data[0]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * ext_call.return_data[0]) + 224 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    return Array(len=ext_call.return_data[0], data=mem[128 len floor32(ext_call.return_data[0])], mem[(32 * ext_call.return_data[0]) + floor32(ext_call.return_data[0]) + 224 len (32 * ext_call.return_data[0]) - floor32(ext_call.return_data[0])]), 
           ext_call.return_data[0]
}

function buyToken(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    if not tokenToConverter[address(arg1)]:
        revert with 0, 'Token not supported'
    if arg2 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Amount of Ether sent is not the same as the amount parameter'
    require ext_code.size(tokenToConverter[address(arg1)])
    call tokenToConverter[address(arg1)].getQuickBuyPathLength() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Error with pathLength'
    if ext_call.return_data[0]:
        mem[128 len 32 * ext_call.return_data[0]] = code.data[10548 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 132] = idx
        require ext_code.size(tokenToConverter[address(arg1)])
        call tokenToConverter[address(arg1)].quickBuyPath(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ext_call.return_data[0]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[10548 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require idx < ext_call.return_data[0]
        require idx < ext_call.return_data[0]
        mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    if not arg2:
        mem[(64 * ext_call.return_data[0]) + 160] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
        mem[(64 * ext_call.return_data[0]) + 196] = arg2
        mem[(64 * ext_call.return_data[0]) + 228] = 1
        mem[(64 * ext_call.return_data[0]) + 164] = 96
        mem[(64 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
        mem[(64 * ext_call.return_data[0]) + 292 len floor32(ext_call.return_data[0])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(ext_call.return_data[0])]
        require ext_code.size(tokenToConverter[address(arg1)])
        call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value arg2 wei
             gas gas_remaining wei
            args Array(len=ext_call.return_data[0], data=mem[(64 * ext_call.return_data[0]) + 292 len 32 * ext_call.return_data[0]]), arg2, 1
    else:
        if not arg3:
            require arg2
            mem[(64 * ext_call.return_data[0]) + 160] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 196] = arg2
            mem[(64 * ext_call.return_data[0]) + 228] = 0 / arg2
            mem[(64 * ext_call.return_data[0]) + 164] = 96
            mem[(64 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
            mem[(64 * ext_call.return_data[0]) + 292 len floor32(ext_call.return_data[0])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(ext_call.return_data[0])]
            require ext_code.size(tokenToConverter[address(arg1)])
            call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg2 wei
                 gas gas_remaining wei
                args Array(len=ext_call.return_data[0], data=mem[(64 * ext_call.return_data[0]) + 292 len 32 * ext_call.return_data[0]]), arg2, 0 / arg2
        else:
            require 10^18 * arg3 / arg3 == 10^18
            require arg2
            mem[(64 * ext_call.return_data[0]) + 160] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 196] = arg2
            mem[(64 * ext_call.return_data[0]) + 228] = 10^18 * arg3 / arg2
            mem[(64 * ext_call.return_data[0]) + 164] = 96
            mem[(64 * ext_call.return_data[0]) + 260] = ext_call.return_data[0]
            mem[(64 * ext_call.return_data[0]) + 292 len floor32(ext_call.return_data[0])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(ext_call.return_data[0])]
            require ext_code.size(tokenToConverter[address(arg1)])
            call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg2 wei
                 gas gas_remaining wei
                args Array(len=ext_call.return_data[0], data=mem[(64 * ext_call.return_data[0]) + 292 len 32 * ext_call.return_data[0]]), arg2, 10^18 * arg3 / arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'BancorConverter did not return any tokens'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg4), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sellToken(address arg1, uint256 arg2, uint256 arg3, address arg4) {
    if not tokenToConverter[address(arg1)]:
        revert with 0, 'Token not supported'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance of token is not sufficient in adapter'
    mem[128] = arg1
    if tokenToRelay[address(arg1)]:
        mem[160] = tokenToRelay[address(arg1)]
        mem[192] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff
        mem[224] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff
        mem[256] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
        mem[288] = 5
        idx = 0
        while idx < 5:
            require idx < 5
            require idx < 5
            mem[(32 * idx) + 320] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args tokenToConverter[address(arg1)], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args tokenToConverter[address(arg1)], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg2:
            mem[612 len 0] = None
            require ext_code.size(tokenToConverter[address(arg1)])
            call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=5, data=mem[612 len 160]), arg2, 1
        else:
            require ext_code.size(arg1)
            call arg1.0x313ce567 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                require arg2
                mem[612 len 0] = None
                require ext_code.size(tokenToConverter[address(arg1)])
                call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=5, data=mem[612 len 160]), arg2, 0 / arg2
            else:
                require 10^ext_call.return_data[0] * arg3 / arg3 == 10^ext_call.return_data[0]
                require arg2
                mem[612 len 0] = None
                require ext_code.size(tokenToConverter[address(arg1)])
                call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=5, data=mem[612 len 160]), arg2, 10^ext_call.return_data[0] * arg3 / arg2
    else:
        mem[160] = arg1
        if 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff == arg1:
            mem[192] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
            mem[224] = 3
            idx = 0
            while idx < 3:
                require idx < 3
                require idx < 3
                mem[(32 * idx) + 256] = mem[(32 * idx) + 140 len 20]
                idx = idx + 1
                continue 
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args tokenToConverter[address(arg1)], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args tokenToConverter[address(arg1)], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                mem[484 len 0] = None
                require ext_code.size(tokenToConverter[address(arg1)])
                call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=3, data=mem[484 len 96]), arg2, 1
            else:
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg3:
                    require arg2
                    mem[484 len 0] = None
                    require ext_code.size(tokenToConverter[address(arg1)])
                    call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Array(len=3, data=mem[484 len 96]), arg2, 0 / arg2
                else:
                    require 10^ext_call.return_data[0] * arg3 / arg3 == 10^ext_call.return_data[0]
                    require arg2
                    mem[484 len 0] = None
                    require ext_code.size(tokenToConverter[address(arg1)])
                    call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Array(len=3, data=mem[484 len 96]), arg2, 10^ext_call.return_data[0] * arg3 / arg2
        else:
            mem[192] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff
            mem[224] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff
            mem[256] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
            mem[288] = 5
            idx = 0
            while idx < 5:
                require idx < 5
                require idx < 5
                mem[(32 * idx) + 320] = mem[(32 * idx) + 140 len 20]
                idx = idx + 1
                continue 
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args tokenToConverter[address(arg1)], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args tokenToConverter[address(arg1)], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                mem[612 len 0] = None
                require ext_code.size(tokenToConverter[address(arg1)])
                call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args Array(len=5, data=mem[612 len 160]), arg2, 1
            else:
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg3:
                    require arg2
                    mem[612 len 0] = None
                    require ext_code.size(tokenToConverter[address(arg1)])
                    call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Array(len=5, data=mem[612 len 160]), arg2, 0 / arg2
                else:
                    require 10^ext_call.return_data[0] * arg3 / arg3 == 10^ext_call.return_data[0]
                    require arg2
                    mem[612 len 0] = None
                    require ext_code.size(tokenToConverter[address(arg1)])
                    call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args Array(len=5, data=mem[612 len 160]), arg2, 10^ext_call.return_data[0] * arg3 / arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'BancorConverter did not return any ETH'
    call arg4 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getPrice(address arg1, address arg2, uint256 arg3) {
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not get the price for amount zero'
    require ext_code.size(tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff000000000000000000000000])
    call tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff000000000000000000000000].getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff == arg2:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                if not ext_call.return_data[0]:
                    if arg3:
                        return 0 / arg3, 0
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18:
                        if arg3:
                            return 10^18 * ext_call.return_data[0] / arg3, 0
            else:
                require ext_code.size(tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff000000000000000000000000])
                call tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff000000000000000000000000].getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if arg3:
                        return 0 / arg3, 0
                else:
                    if 10^ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == 10^ext_call.return_data[0]:
                        if arg3:
                            return 10^ext_call.return_data[0] * ext_call.return_data[0] / arg3, 0
        else:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                require ext_code.size(tokenToConverter[address(arg2)])
                call tokenToConverter[address(arg2)].getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff, address(arg2), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if arg3:
                        return 0 / arg3, 0
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18:
                        if arg3:
                            return 10^18 * ext_call.return_data[0] / arg3, 0
            else:
                require ext_code.size(arg2)
                call arg2.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenToConverter[address(arg2)])
                call tokenToConverter[address(arg2)].getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg2), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff, 10^ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff000000000000000000000000])
                call tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff000000000000000000000000].getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if arg3:
                        return 0 / arg3, 0
                else:
                    if 10^ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == 10^ext_call.return_data[0]:
                        if arg3:
                            return 10^ext_call.return_data[0] * ext_call.return_data[0] / arg3, 0
    else:
        if 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff == arg1:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                if not ext_call.return_data[0]:
                    if arg3:
                        return 0 / arg3, 0
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18:
                        if arg3:
                            return 10^18 * ext_call.return_data[0] / arg3, 0
            else:
                require ext_code.size(tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff000000000000000000000000])
                call tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff000000000000000000000000].getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if arg3:
                        return 0 / arg3, 0
                else:
                    if 10^ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == 10^ext_call.return_data[0]:
                        if arg3:
                            return 10^ext_call.return_data[0] * ext_call.return_data[0] / arg3, 0
        else:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                require ext_code.size(tokenToConverter[address(arg1)])
                call tokenToConverter[address(arg1)].getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff, address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if arg3:
                        return 0 / arg3, 0
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18:
                        if arg3:
                            return 10^18 * ext_call.return_data[0] / arg3, 0
            else:
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenToConverter[address(arg1)])
                call tokenToConverter[address(arg1)].getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff, 10^ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff000000000000000000000000])
                call tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff000000000000000000000000].getReturn(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0x313ce567 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if arg3:
                        return 0 / arg3, 0
                else:
                    if 10^ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == 10^ext_call.return_data[0]:
                        if arg3:
                            return 10^ext_call.return_data[0] * ext_call.return_data[0] / arg3, 0
    revert
}



}
