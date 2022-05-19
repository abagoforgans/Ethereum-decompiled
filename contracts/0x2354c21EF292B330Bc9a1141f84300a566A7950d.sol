contract main {




// =====================  Runtime code  =====================


const bancorToken = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c

const bancorETHToken = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315

const ETH_TOKEN_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address owner;
address exchangeAdapterManagerAddress;
uint256 exchangeId;
uint256 name;
mapping of address tokenToConverter;
mapping of address tokenToRelay;
uint8 stor6;

function name() {
    return name
}

function exchangeId() {
    return exchangeId
}

function adapterEnabled() {
    return bool(stor6)
}

function isEnabled() {
    return bool(stor6)
}

function owner() {
    return owner
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
    return name, bool(stor6)
}

function enable() {
    require msg.sender == owner
    stor6 = 1
    return 1
}

function disable() {
    require msg.sender == owner
    stor6 = 0
    return 1
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

function setExchangeDetails(bytes32 arg1, bytes32 arg2) {
    require msg.sender == exchangeAdapterManagerAddress
    exchangeId = arg1
    name = arg2
    return 1
}

function supportsTradingPair(address arg1, address arg2) {
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        return not not tokenToConverter[address(arg2)]
    return not not tokenToConverter[address(arg1)]
}

function updateSupportedTokenList(address[] arg1, address[] arg2, address[] arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg1.length == arg2.length
    require arg3.length == arg2.length
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        tokenToConverter[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        require idx < arg3.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        tokenToRelay[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        idx = idx + 1
        continue 
    return 1
}

function getPath(address arg1, bool arg2) {
    if not arg2:
        if tokenToRelay[address(arg1)]:
            mem[416 len 0] = None
            return Array(len=7, data=mem[416 len 224])
        if arg1 != 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
            mem[352 len 0] = None
            return Array(len=5, data=mem[352 len 160])
        mem[288 len 0] = None
        return Array(len=3, data=mem[288 len 96])
    require ext_code.size(tokenToConverter[address(arg1)])
    call tokenToConverter[address(arg1)].getQuickBuyPathLength() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Error with pathLength'
    if ext_call.return_data[0]:
        mem[128 len 32 * ext_call.return_data[0]] = code.data[14275 len 32 * ext_call.return_data[0]]
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
    mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    return Array(len=ext_call.return_data[0], data=mem[128 len floor32(ext_call.return_data[0])], mem[(32 * ext_call.return_data[0]) + floor32(ext_call.return_data[0]) + 192 len (32 * ext_call.return_data[0]) - floor32(ext_call.return_data[0])]), 
}

function getPrice(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require ext_code.size(tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c])
        call tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c].getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenToConverter[address(arg2)])
        call tokenToConverter[address(arg2)].getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            args address(arg1), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 10^ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c])
        call tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c].getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3:
            return ext_call.return_data[0] * 10^ext_call.return_data[0] / arg3, 0
    ('iszero', ('param', 'arg3'))
    revert
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
        mem[128 len 32 * ext_call.return_data[0]] = code.data[14275 len 32 * ext_call.return_data[0]]
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
    require arg2
    mem[(32 * ext_call.return_data[0]) + 260 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    require ext_code.size(tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c])
    call tokenToConverter[0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value arg2 wei
         gas gas_remaining wei
        args Array(len=ext_call.return_data[0], data=mem[128 len floor32(ext_call.return_data[0])], mem[(32 * ext_call.return_data[0]) + floor32(ext_call.return_data[0]) + 260 len (32 * ext_call.return_data[0]) - floor32(ext_call.return_data[0])]), arg2, 10^18 * arg3 / arg2
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
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failure'
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
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tokenToConverter[address(arg1)], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tokenToConverter[address(arg1)], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2
    if tokenToRelay[address(arg1)]:
        mem[484 len 0] = None
        require ext_code.size(tokenToConverter[address(arg1)])
        call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args Array(len=7, data=mem[484 len 224]), arg2, arg3 * 10^ext_call.return_data[0] / arg2
    else:
        if arg1 != 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
            mem[420 len 0] = None
            require ext_code.size(tokenToConverter[address(arg1)])
            call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=5, data=mem[420 len 160]), arg2, arg3 * 10^ext_call.return_data[0] / arg2
        else:
            mem[356 len 0] = None
            require ext_code.size(tokenToConverter[address(arg1)])
            call tokenToConverter[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=3, data=mem[356 len 96]), arg2, arg3 * 10^ext_call.return_data[0] / arg2
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



}
