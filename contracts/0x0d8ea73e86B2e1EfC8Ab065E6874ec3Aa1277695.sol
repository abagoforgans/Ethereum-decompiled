contract main {




// =====================  Runtime code  =====================


#
#  - newPlots(uint256[] arg1, uint256[] arg2, bytes7[] arg3, bytes32[] arg4)
#
const name = 'HodlEarthToken'

const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000

const symbol = 'HEAR'


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
array of uint256 tokenURI;
uint8 paused; offset 160
address owner;
mapping of uint64 plotColours;
mapping of uint256 plotDescriptors;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function plotColours(uint256 arg1) {
    return Mask(56, 200, plotColours[arg1])
}

function plotDescriptors(uint256 arg1) {
    return plotDescriptors[arg1]
}

function exists(uint256 arg1) {
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function getPlotByReference(uint256 arg1) {
    return Mask(56, 200, plotColours[arg1]), plotDescriptors[arg1]
}

function calculatePlotPrice() {
    if tokenByIndex.length >= 250000:
        return 10^15
    return 4 * 10^14
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function validatePlotLatLng(uint256 arg1, uint256 arg2) {
    if arg1 % 5:
        return 0
    if arg2 % 8:
        return 0
    return 1
}

function pause() {
    require msg.sender == owner
    if paused:
        revert with 0, 'Contract is paused'
    paused = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    require msg.sender == owner
    if not paused:
        revert with 0, 'Contract is not paused'
    paused = 0
    emit Unpause()
}

function getPlot(uint256 arg1, uint256 arg2) {
    return (10^9 * arg1) + arg2, Mask(56, 200, plotColours[(10^9 * arg1) + arg2]), plotDescriptors[(10^9 * arg1) + arg2]
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function calculateTransactionFee(uint256 arg1, bool arg2) {
    require 10^14 * arg1 / 10^14 == arg1
    if arg2:
        return (10^14 * arg1)
    if 10^14 * arg1 >= 10^15:
        return ((10^14 * arg1) + 10^15)
    return 10^15
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function updatePlot(uint256 arg1, uint256 arg2, bytes7 arg3, bytes32 arg4) payable {
    if paused:
        revert with 0, 'Contract is paused'
    require ownerOf[(10^9 * arg1) + arg2]
    if ownerOf[(10^9 * arg1) + arg2] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Update can only be carried out by the plot owner.'
    if owner != msg.sender:
        if 10^14 > msg.value:
            revert with 0, 'Insufficient Eth sent.'
    if not Mask(56, 200, plotColours[(10^9 * arg1) + arg2]):
        revert with 0, 'Plot does not exist.'
    plotColours[(10^9 * arg1) + arg2] = Mask(56, 200, arg3) >> 200
    plotDescriptors[(10^9 * arg1) + arg2] = arg4
}

function newPlot(uint256 arg1, uint256 arg2, bytes7 arg3, bytes32 arg4) payable {
    if paused:
        revert with 0, 'Contract is paused'
    if tokenByIndex.length >= 250000:
        if owner != msg.sender:
            if msg.value < 2 * 10^15:
                revert with 0, 'Insufficient Eth sent.'
    else:
        if owner != msg.sender:
            if msg.value < 14 * 10^14:
                revert with 0, 'Insufficient Eth sent.'
    if arg1 % 5:
        revert with 0, 'Lat long is invalid'
    if arg2 % 8:
        revert with 0, 'Lat long is invalid'
    if Mask(56, 200, plotColours[(10^9 * arg1) + arg2]):
        revert with 0, 'Plot already exists.'
    plotColours[(10^9 * arg1) + arg2] = Mask(56, 200, arg3) >> 200
    plotDescriptors[(10^9 * arg1) + arg2] = arg4
    require msg.sender
    require not ownerOf[(10^9 * arg1) + arg2]
    ownerOf[(10^9 * arg1) + arg2] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = (10^9 * arg1) + arg2
    stor8[(10^9 * arg1) + arg2] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, (10^9 * arg1) + arg2);
    stor10[(10^9 * arg1) + arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = (10^9 * arg1) + arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if paused:
        revert with 0, 'Contract is paused'
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function updatePlots(uint256[] arg1, uint256[] arg2, bytes7[] arg3, bytes32[] arg4) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if paused:
        revert with 0, 'Contract is paused'
    require 10^14 * arg1.length / 10^14 == arg1.length
    if owner != msg.sender:
        if 10^14 * arg1.length > msg.value:
            revert with 0, 'Insufficient Eth sent.'
    idx = 0
    s = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < arg3.length
        require idx < arg4.length
        require idx < arg1.length
        require idx < arg2.length
        if not Mask(56, 200, plotColours[(10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]]):
            revert with 0, 'Plot does not exist.'
        require ownerOf[(10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]]
        if ownerOf[(10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]] != msg.sender:
            revert with 0, 'Update can only be carried out by the plot owner.'
        mem[0] = (10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]
        plotColours[(10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192 len 7]
        mem[32] = 14
        plotDescriptors[(10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        idx = idx + 1
        s = (10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        s = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    if paused:
        revert with 0, 'Contract is paused'
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    if paused:
        revert with 0, 'Contract is paused'
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    if paused:
        revert with 0, 'Contract is paused'
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    if paused:
        revert with 0, 'Contract is paused'
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    if paused:
        revert with 0, 'Contract is paused'
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function getPlotsByReference(uint256[] arg1) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[(98 * arg1.length) + 192] = arg1.length
        mem[64] = (131 * arg1.length) + 224
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * arg1.length) + (32 * idx) + 160] = mem[(32 * idx) + 128]
            require idx < mem[96]
            require idx < mem[(64 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * idx) + 192] = Mask(56, 200, plotColours[mem[(32 * idx) + 128]])
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 14
            require idx < mem[(98 * arg1.length) + 192]
            mem[(98 * arg1.length) + (32 * idx) + 224] = plotDescriptors[mem[(32 * idx) + 128]]
            idx = idx + 1
            continue 
        _54 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _56 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _56) + 128
        mem[(32 * _56) + _54 + 128] = mem[(64 * arg1.length) + 160]
        _97 = mem[(64 * arg1.length) + 160]
        mem[(32 * _56) + _54 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[_54 + 64] = (32 * _97) + (32 * _56) + 160
        mem[(32 * _97) + (32 * _56) + _54 + 160] = mem[(98 * arg1.length) + 192]
        _113 = mem[(98 * arg1.length) + 192]
        mem[(32 * _97) + (32 * _56) + _54 + 192 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        return memory
          from mem[64]
           len (32 * _113) + (32 * _97) + (32 * _56) + _54 + -mem[64] + 192
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[10180 len 32 * arg1.length]
    mem[(64 * arg1.length) + 160] = arg1.length
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[10180 len 32 * arg1.length]
    mem[(98 * arg1.length) + 192] = arg1.length
    mem[64] = (131 * arg1.length) + 224
    mem[(98 * arg1.length) + 224 len 32 * arg1.length] = code.data[10180 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * arg1.length) + (32 * idx) + 160] = mem[(32 * idx) + 128]
        require idx < mem[96]
        require idx < mem[(64 * arg1.length) + 160]
        mem[(64 * arg1.length) + (32 * idx) + 192] = Mask(56, 200, plotColours[mem[(32 * idx) + 128]])
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 14
        require idx < mem[(98 * arg1.length) + 192]
        mem[(98 * arg1.length) + (32 * idx) + 224] = plotDescriptors[mem[(32 * idx) + 128]]
        idx = idx + 1
        continue 
    _59 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
    _61 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[mem[64] + 32] = (32 * _61) + 128
    mem[(32 * _61) + _59 + 128] = mem[(64 * arg1.length) + 160]
    _100 = mem[(64 * arg1.length) + 160]
    mem[(32 * _61) + _59 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    mem[_59 + 64] = (32 * _100) + (32 * _61) + 160
    mem[(32 * _100) + (32 * _61) + _59 + 160] = mem[(98 * arg1.length) + 192]
    _116 = mem[(98 * arg1.length) + 192]
    mem[(32 * _100) + (32 * _61) + _59 + 192 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
    return memory
      from mem[64]
       len (32 * _116) + (32 * _100) + (32 * _61) + _59 + -mem[64] + 192
}

function getPlots(uint256[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg1.length
    if not arg1.length:
        mem[(32 * arg2.length) + (64 * arg1.length) + 192] = arg1.length
        mem[(32 * arg2.length) + (98 * arg1.length) + 224] = arg1.length
        mem[64] = (32 * arg2.length) + (131 * arg1.length) + 256
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = (10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg2.length) + (64 * arg1.length) + 192]
            mem[(32 * arg2.length) + (64 * arg1.length) + (32 * idx) + 224] = Mask(56, 200, plotColours[(10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]])
            mem[0] = (10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[32] = 14
            require idx < mem[(32 * arg2.length) + (98 * arg1.length) + 224]
            mem[(32 * arg2.length) + (98 * arg1.length) + (32 * idx) + 256] = plotDescriptors[(10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]]
            idx = idx + 1
            s = (10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
        _51 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _53 = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        mem[mem[64] + 128 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])] = mem[(32 * arg2.length) + (32 * arg1.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])]
        mem[mem[64] + 32] = (32 * _53) + 128
        mem[(32 * _53) + _51 + 128] = mem[(32 * arg2.length) + (64 * arg1.length) + 192]
        _90 = mem[(32 * arg2.length) + (64 * arg1.length) + 192]
        s = 0
        while arg1.length < 32 * _90:
            mem[arg1.length + (32 * _53) + _51 + 160] = mem[(66 * arg1.length) + (32 * arg2.length) + 224]
            s = arg1.length + 32
            continue 
        mem[_51 + 64] = (32 * _90) + (32 * _53) + 160
        mem[(32 * _90) + (32 * _53) + _51 + 160] = mem[(32 * arg2.length) + (98 * arg1.length) + 224]
        _106 = mem[(32 * arg2.length) + (98 * arg1.length) + 224]
        mem[(32 * _90) + (32 * _53) + _51 + 192 len floor32(mem[(32 * arg2.length) + (98 * arg1.length) + 224])] = mem[(32 * arg2.length) + (98 * arg1.length) + 256 len floor32(mem[(32 * arg2.length) + (98 * arg1.length) + 224])]
        return memory
          from mem[64]
           len (32 * _106) + (32 * _90) + (32 * _53) + _51 + -mem[64] + 192
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg1.length] = code.data[10180 len 32 * arg1.length]
    mem[(32 * arg2.length) + (64 * arg1.length) + 192] = arg1.length
    mem[(32 * arg2.length) + (64 * arg1.length) + 224 len 32 * arg1.length] = code.data[10180 len 32 * arg1.length]
    mem[(32 * arg2.length) + (98 * arg1.length) + 224] = arg1.length
    mem[64] = (32 * arg2.length) + (131 * arg1.length) + 256
    mem[(32 * arg2.length) + (98 * arg1.length) + 256 len 32 * arg1.length] = code.data[10180 len 32 * arg1.length]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] = (10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (64 * arg1.length) + 192]
        mem[(32 * arg2.length) + (64 * arg1.length) + (32 * idx) + 224] = Mask(56, 200, plotColours[(10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]])
        mem[0] = (10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[32] = 14
        require idx < mem[(32 * arg2.length) + (98 * arg1.length) + 224]
        mem[(32 * arg2.length) + (98 * arg1.length) + (32 * idx) + 256] = plotDescriptors[(10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]]
        idx = idx + 1
        s = (10^9 * mem[(32 * idx) + 128]) + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    _56 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
    _58 = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
    mem[mem[64] + 128 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])] = mem[(32 * arg2.length) + (32 * arg1.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])]
    mem[mem[64] + 32] = (32 * _58) + 128
    mem[(32 * _58) + _56 + 128] = mem[(32 * arg2.length) + (64 * arg1.length) + 192]
    _93 = mem[(32 * arg2.length) + (64 * arg1.length) + 192]
    s = 0
    while arg1.length < 32 * _93:
        mem[arg1.length + (32 * _58) + _56 + 160] = mem[(66 * arg1.length) + (32 * arg2.length) + 224]
        s = arg1.length + 32
        continue 
    mem[_56 + 64] = (32 * _93) + (32 * _58) + 160
    mem[(32 * _93) + (32 * _58) + _56 + 160] = mem[(32 * arg2.length) + (98 * arg1.length) + 224]
    _109 = mem[(32 * arg2.length) + (98 * arg1.length) + 224]
    mem[(32 * _93) + (32 * _58) + _56 + 192 len floor32(mem[(32 * arg2.length) + (98 * arg1.length) + 224])] = mem[(32 * arg2.length) + (98 * arg1.length) + 256 len floor32(mem[(32 * arg2.length) + (98 * arg1.length) + 224])]
    return memory
      from mem[64]
       len (32 * _109) + (32 * _93) + (32 * _58) + _56 + -mem[64] + 192
}



}
