contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ac49ce2(?)
#
mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint256 transferFee;
address feeReceiverAddress;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor9;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor11;
array of uint256 tokenByIndex;
mapping of uint256 stor13;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
array of uint256 sub_8bd5ead8;

function supportsInterface(bytes4 arg1) {
    return bool(stor3[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function isAdmin(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function isOwner(address arg1) {
    require arg1
    return bool(stor2[address(arg1)])
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function isVerifier(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_8bd5ead8(?) {
    return sub_8bd5ead8[arg1][0 len sub_8bd5ead8[arg1].length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transferFee() {
    return transferFee
}

function feeReceiver() {
    return feeReceiverAddress
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor9[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setTransferFee(uint256 arg1) {
    require msg.sender
    require stor2[address(msg.sender)]
    transferFee = arg1
}

function setFeeReceiver(address arg1) {
    require msg.sender
    require stor2[address(msg.sender)]
    feeReceiverAddress = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor9[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor9[stor6[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_970284d5(?) {
    require msg.sender
    if not stor1[address(msg.sender)]:
        require msg.sender
        require stor2[address(msg.sender)]
    require arg1
    if call.data[36]:
        if call.data[36]:
            require arg1
            if not stor0[address(arg1)]:
                stor0[address(arg1)] = 1
                emit VerifierAdded(arg1);
    else:
        require arg1
        if stor0[address(arg1)]:
            stor0[address(arg1)] = 0
            emit VerifierRemoved(arg1);
        else:
            if call.data[36]:
                require arg1
                if not stor0[address(arg1)]:
                    stor0[address(arg1)] = 1
                    emit VerifierAdded(arg1);
    if call.data[68]:
        if call.data[68]:
            require arg1
            if not stor1[address(arg1)]:
                stor1[address(arg1)] = 1
                emit AdminAdded(arg1);
    else:
        require arg1
        if stor1[address(arg1)]:
            stor1[address(arg1)] = 0
            emit AdminRemoved(arg1);
        else:
            if call.data[68]:
                require arg1
                if not stor1[address(arg1)]:
                    stor1[address(arg1)] = 1
                    emit AdminAdded(arg1);
    require msg.sender
    if stor2[address(msg.sender)]:
        if call.data[100]:
            if call.data[100]:
                require arg1
                if not stor2[address(arg1)]:
                    stor2[address(arg1)] = 1
                    emit OwnerAdded(arg1);
        else:
            require arg1
            if stor2[address(arg1)]:
                stor2[address(arg1)] = 0
                emit OwnerRemoved(arg1);
            else:
                if call.data[100]:
                    require arg1
                    if not stor2[address(arg1)]:
                        stor2[address(arg1)] = 1
                        emit OwnerAdded(arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor9[stor6[arg3]][address(msg.sender)]
    require arg2
    require msg.value == transferFee
    if msg.value > 0:
        call feeReceiverAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    require stor11[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor11[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor11[arg3] = 0
    stor11[stor10[address(arg1)][stor10[address(arg1)]]] = stor11[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor11[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor9[stor6[arg3]][address(msg.sender)]
    require arg2
    require msg.value == transferFee
    if msg.value > 0:
        call feeReceiverAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    require stor11[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor11[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor11[arg3] = 0
    stor11[stor10[address(arg1)][stor10[address(arg1)]]] = stor11[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor11[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor9[stor6[arg3]][address(msg.sender)]
    require arg2
    require msg.value == transferFee
    if msg.value > 0:
        call feeReceiverAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    require stor11[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor11[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor11[arg3] = 0
    stor11[stor10[address(arg1)][stor10[address(arg1)]]] = stor11[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor11[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_cee19048(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require msg.sender
    if not stor0[address(msg.sender)]:
        require msg.sender
        if not stor1[address(msg.sender)]:
            require msg.sender
            require stor2[address(msg.sender)]
    require arg1
    require not ownerOf[stor12.length]
    ownerOf[stor12.length] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenByIndex.length
    stor11[stor12.length] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, tokenByIndex.length);
    stor13[stor12.length] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenByIndex.length
    sub_8bd5ead8[stor12.length][] = Array(len=arg2.length, data=arg2[all])
    require ownerOf[stor12.length]
    tokenURI[stor12.length][] = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 64
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 256] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0xdc7d6dc7: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 256 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 96, arg1, tokenByIndex.length
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 288] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 320 len arg3.length % 32]
        emit 0xdc7d6dc7: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 256 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 96, arg1, tokenByIndex.length
}



}
