contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
array of struct stor11;
uint256 sub_bf4abd3f;
mapping of uint256 sub_60085875;
mapping of uint256 sub_a97cfe8c;
array of uint256 tokenMessage;
array of uint256 info;
array of uint256 baseTokenURI;
array of struct sub_33f326b8;
address stor19;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_33f326b8(?) payable {
    return sub_33f326b8[0 len sub_33f326b8.length].field_0
}

function info() payable {
    return info[0 len info.length]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function sub_60085875(?) payable {
    require calldata.size - 4 >= 32
    return sub_60085875[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a97cfe8c(?) payable {
    require calldata.size - 4 >= 32
    return sub_a97cfe8c[arg1]
}

function sub_bf4abd3f(?) payable {
    return sub_bf4abd3f
}

function baseTokenURI() payable {
    return baseTokenURI[0 len baseTokenURI.length]
}

function tokenMessage(uint256 arg1) payable {
    return tokenMessage[arg1][0 len tokenMessage[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return not not ownerOf[arg1]
}

function checkPatternExistance(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return not not ownerOf[stor13[arg1]]
}

function userHasPattern(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    if balanceOf[address(arg1)] < 1:
        return 0
    return 1
}

function sub_45941ee0(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == 0x59ab67d9ba5a748591bb79ce223606a8c2892e6d
    require arg1
    stor19 = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function changeInfo(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == stor19
    info[] = Array(len=arg1.length, data=arg1[all])
}

function sub_e40e97a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == stor19
    baseTokenURI[] = Array(len=arg1.length, data=arg1[all])
}

function sub_0dbd7142(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == stor19
    sub_33f326b8[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function setMessage(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ownerOf[arg1]
    require msg.sender == ownerOf[arg1]
    require ownerOf[arg1]
    tokenMessage[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function verifyOwner(bytes32 arg1, address arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require ownerOf[stor13[arg1]]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if ownerOf[stor13[arg1]] != address(signer):
        return 0
    if arg2 != address(signer):
        return 0
    return 1
}

function changeMessage(bytes32 arg1, string arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ownerOf[stor13[arg1]]
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == ownerOf[stor13[arg1]]
    require ownerOf[stor13[arg1]]
    tokenMessage[stor13[arg1]][] = Array(len=arg2.length, data=arg2[all])
    return 'ok'
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
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
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function transferPattern(bytes32 arg1, address arg2, string arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require ownerOf[stor13[arg1]]
    mem[ceil32(arg3.length) + 160] = address(arg2)
    mem[ceil32(arg3.length) + 128] = 20
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == ownerOf[stor13[arg1]]
    require ownerOf[stor13[arg1]]
    require ownerOf[stor13[arg1]] == ownerOf[stor13[arg1]]
    require arg2
    if approved[stor13[arg1]]:
        approved[stor13[arg1]] = 0
    require 1 <= balanceOf[stor1[stor13[arg1]]]
    balanceOf[stor1[stor13[arg1]]]--
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    ownerOf[stor13[arg1]] = arg2
    emit Transfer(ownerOf[stor13[arg1]], arg2, sub_60085875[arg1]);
    require 1 <= tokenOfOwnerByIndex[stor1[stor13[arg1]]]
    if stor6[stor13[arg1]] != tokenOfOwnerByIndex[stor1[stor13[arg1]]] - 1:
        require tokenOfOwnerByIndex[stor1[stor13[arg1]]] - 1 < tokenOfOwnerByIndex[stor1[stor13[arg1]]]
        require stor6[stor13[arg1]] < tokenOfOwnerByIndex[stor1[stor13[arg1]]]
        tokenOfOwnerByIndex[stor1[stor13[arg1]]][stor6[stor13[arg1]]] = tokenOfOwnerByIndex[stor1[stor13[arg1]]][tokenOfOwnerByIndex[stor1[stor13[arg1]]]]
        stor6[stor5[stor1[stor13[arg1]]][stor5[stor1[stor13[arg1]]]]] = stor6[stor13[arg1]]
    tokenOfOwnerByIndex[stor1[stor13[arg1]]]--
    if tokenOfOwnerByIndex[stor1[stor13[arg1]]] > tokenOfOwnerByIndex[stor1[stor13[arg1]]] - 1:
        idx = tokenOfOwnerByIndex[stor1[stor13[arg1]]] - 1
        while tokenOfOwnerByIndex[stor1[stor13[arg1]]] > idx:
            tokenOfOwnerByIndex[stor1[stor13[arg1]]][idx] = 0
            idx = idx + 1
            continue 
    stor6[stor13[arg1]] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = sub_60085875[arg1]
    require ownerOf[stor13[arg1]]
    tokenMessage[stor13[arg1]][] = Array(len=arg3.length, data=arg3[all])
    return 'ok'
}

function sub_549dd829(?) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    mem[96] = sub_33f326b8.length
    mem[128] = uint256(sub_33f326b8.field_0)
    idx = 128
    s = 0
    while sub_33f326b8.length + 96 > idx:
        mem[idx + 32] = sub_33f326b8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ownerOf[arg1]
    mem[32] = 11
    mem[64] = ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160
    mem[ceil32(sub_33f326b8.length) + 128] = stor11[arg1].length
    mem[0] = sha3(arg1, 11)
    mem[ceil32(sub_33f326b8.length) + 160] = stor11[arg1].field_0
    idx = ceil32(sub_33f326b8.length) + 160
    s = 0
    while ceil32(sub_33f326b8.length) + stor11[arg1].length + 128 > idx:
        mem[idx + 32] = stor11[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 192 len floor32(sub_33f326b8.length)] = mem[128 len floor32(sub_33f326b8.length)]
    mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + floor32(sub_33f326b8.length) + -sub_33f326b8.length % 32 + 224 len sub_33f326b8.length % 32] = mem[floor32(sub_33f326b8.length) + -sub_33f326b8.length % 32 + 160 len sub_33f326b8.length % 32]
    mem[sub_33f326b8.length + ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 192 len floor32(stor11[arg1].length)] = mem[ceil32(sub_33f326b8.length) + 160 len floor32(stor11[arg1].length)]
    mem[sub_33f326b8.length + ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + floor32(stor11[arg1].length) + 192] = mem[ceil32(sub_33f326b8.length) + floor32(stor11[arg1].length) + -stor11[arg1].length % 32 + 192 len stor11[arg1].length % 32] or Mask(8 * -stor11[arg1].length % 32 + 32, -(8 * -stor11[arg1].length % 32 + 32) + 256, mem[sub_33f326b8.length + ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + floor32(stor11[arg1].length) + 192])
    mem[stor11[arg1].length + sub_33f326b8.length + ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 192] = 32
    mem[stor11[arg1].length + sub_33f326b8.length + ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 224] = mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160]
    mem[stor11[arg1].length + sub_33f326b8.length + ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 256 len ceil32(mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160])] = mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 192 len ceil32(mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160])]
    if not mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160] % 32:
        return 32, mem[stor11[arg1].length + sub_33f326b8.length + ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 224 len mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160] + 32], 
    mem[floor32(mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160]) + stor11[arg1].length + sub_33f326b8.length + ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 256] = mem[floor32(mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160]) + stor11[arg1].length + sub_33f326b8.length + ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + -(mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160] % 32) + 288 len mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160] % 32]
    return Array(len=mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160], data=mem[stor11[arg1].length + sub_33f326b8.length + ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 256 len floor32(mem[ceil32(sub_33f326b8.length) + ceil32(stor11[arg1].length) + 160]) + 32]), 
}

function createPattern(bytes32 arg1, string arg2, address arg3, string arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + arg4.length + 160] = 0
    require msg.sender == stor19
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = arg2.length
    mem[64] = (2 * ceil32(arg2.length)) + ceil32(arg4.length) + 192
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg2.length
            if mem[idx + 128 len 1] < 97:
                require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                require idx < arg2.length
                require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                if mem[idx + 128 len 1] > 122:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                else:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
            idx = idx + 1
            continue 
        _276 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 224 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
        mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 224] = mem[ceil32(arg2.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 224])
        mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 192] = _276
        require not sub_60085875[mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 224 len _276]]
        sub_bf4abd3f++
        sub_60085875[mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 224 len _276]] = sub_bf4abd3f
        sub_a97cfe8c[stor12] = sha3(mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 224 len _276])
    else:
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 192 len arg2.length] = code.data[15883 len arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg2.length
            if mem[idx + 128 len 1] < 97:
                require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                require idx < arg2.length
                require idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                if mem[idx + 128 len 1] > 122:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                else:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
            idx = idx + 1
            continue 
        _279 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 224 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
        mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 224] = mem[ceil32(arg2.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 224])
        mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 192] = _279
        require not sub_60085875[mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 224 len _279]]
        sub_bf4abd3f++
        sub_60085875[mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 224 len _279]] = sub_bf4abd3f
        sub_a97cfe8c[stor12] = sha3(mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 224 len _279])
    require arg3
    require not ownerOf[stor12]
    ownerOf[stor12] = arg3
    require balanceOf[address(arg3)] + 1 >= balanceOf[address(arg3)]
    balanceOf[address(arg3)]++
    emit Transfer(0, arg3, sub_bf4abd3f);
    stor6[stor12] = tokenOfOwnerByIndex[address(arg3)]
    tokenOfOwnerByIndex[address(arg3)]++
    tokenOfOwnerByIndex[address(arg3)][tokenOfOwnerByIndex[address(arg3)]] = sub_bf4abd3f
    stor8[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = sub_bf4abd3f
    require ownerOf[stor12]
    stor11[stor12][].field_0 = Array(len=Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)], data=mem[ceil32(arg2.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    require ownerOf[stor12]
    tokenMessage[stor12][] = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    return 'ok'
}



}
