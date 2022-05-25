contract main {




// =====================  Runtime code  =====================


const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 stor5;
address owner;
array of uint256 stor99;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    return approved[arg1]
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

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_ea3c9c34(?) {
    require msg.sender == owner
    stor5.length++
    stor36B6[stor5.length] = arg1
    stor[sha3((3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db1)][] = Array(len=arg2.length, data=arg2[all])
    stor[sha3((3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2)][] = Array(len=arg3.length, data=arg3[all])
    require owner
    require not ownerOf[stor5.length]
    ownerOf[stor5.length] = owner
    require balanceOf[stor6] + 1 >= balanceOf[stor6]
    balanceOf[stor6]++
    emit Transfer(0, owner, stor5.length);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
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
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
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

function sub_e60fed91(?) {
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1:
        _70 = mem[64]
        mem[64] = mem[64] + 96
        mem[_70] = arg2
        mem[_70 + 32] = 96
        mem[_70 + 64] = ceil32(arg3.length) + 128
        stor5.length++
        stor36B6[stor5.length] = arg2
        stor36B6[stor5.length] = (2 * mem[96]) + 1
        t = sha3((3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db1)
        s = 128
        while mem[96] + 128 > s:
            stor[t] = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3((3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db1) + (Mask(251, 0, mem[96] + 31) >> 5)
        while sha3((3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db1) + (stor[(3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db1].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        mem[0] = (3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2
        stor36B6[stor5.length] = (2 * mem[ceil32(arg3.length) + 128]) + 1
        t = sha3((3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2)
        s = ceil32(arg3.length) + 160
        while ceil32(arg3.length) + mem[ceil32(arg3.length) + 128] + 160 > s:
            stor[t] = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3((3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2) + (Mask(251, 0, mem[ceil32(arg3.length) + 128] + 31) >> 5)
        while sha3((3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2) + (stor[(3 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2].length + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        require owner
        require not ownerOf[stor5.length]
        ownerOf[stor5.length] = owner
        require balanceOf[stor6] + 1 >= balanceOf[stor6]
        mem[0] = owner
        mem[32] = 3
        balanceOf[stor6]++
        emit Transfer(0, owner, stor5.length);
        s = stor5.length
        idx = idx + 1
        continue 
}

function sub_80fed10f(?) {
    require arg1 < stor5.length
    mem[96] = stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length
    mem[128] = stor[sha3((3 * arg1) + ('name', 'stor5', 5) + 1)].field_0
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor5', 5) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 160
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + 128] = stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length
    mem[0] = (3 * arg1) + sha3(5) + 2
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + 160] = stor[sha3((3 * arg1) + ('name', 'stor5', 5) + 2)].field_0
    idx = ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + 160
    s = 0
    while ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor5', 5) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 160] = stor5[arg1].field_0
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 192] = 96
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 256] = stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 288 len ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length)] = mem[128 len ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length)]
    mem[ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 224] = stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length + 128
    mem[stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 288] = stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length
    mem[stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 320 len ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length)] = mem[ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + 160 len ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length)]
    if not stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length % 32:
        return stor5[arg1].field_0, 
               Array(len=stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length, data=mem[128 len ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length)], mem[(2 * ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length)) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 288 len stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length + stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length + -ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + 32]),
               stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length + 128
    mem[floor32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 320] = mem[floor32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + -stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length % 32 + 352 len stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length % 32]
    return stor5[arg1].field_0, 
           Array(len=stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length, data=mem[128 len ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length)], mem[(2 * ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length)) + ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + 288 len floor32(stor[(3 * arg1) + ('name', 'stor5', 5) + 2].length) + stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length + -ceil32(stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length) + 64]),
           stor[(3 * arg1) + ('name', 'stor5', 5) + 1].length + 128
}



}
