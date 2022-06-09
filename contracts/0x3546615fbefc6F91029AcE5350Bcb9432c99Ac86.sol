contract main {




// =====================  Runtime code  =====================


#
#  - sub_35359dec(?)
#
const sub_10f01d18(?) = msg.sender

const getContractBalance = eth.balance(this.address)


mapping of address stor0;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of struct tokenByIndex;
mapping of uint256 stor9;
array of uint256 tokenURI;
array of uint256 tokenName;
mapping of struct sub_0b02a3fe;
mapping of uint256 sub_e46706a1;
mapping of uint256 sub_fd140cc6;
address sub_046bfb47Address;
mapping of struct stor16;
array of struct stor19;

function sub_006b93a9(?) {
    return tokenByIndex.length
}

function sub_046bfb47(?) {
    return sub_046bfb47Address
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function sub_0b02a3fe(?) {
    return sub_0b02a3fe[arg1].field_1024, 
           sub_0b02a3fe[arg1].field_1280,
           sub_0b02a3fe[arg1].field_1536,
           sub_0b02a3fe[arg1].field_1792
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_2f2de109(?) {
    return sub_0b02a3fe[arg1].field_0, sub_0b02a3fe[arg1].field_256, sub_0b02a3fe[arg1].field_512, sub_0b02a3fe[arg1].field_768
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function getTokenName(uint256 arg1) {
    return tokenName[arg1][0 len tokenName[arg1].length]
}

function sub_e46706a1(?) {
    return sub_e46706a1[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor3[address(arg1)][address(arg2)])
}

function sub_fd140cc6(?) {
    return sub_fd140cc6[arg1]
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not stor0[arg1]
}

function GetBalance(address arg1) {
    return address(arg1), eth.balance(arg1)
}

function ownerOf(uint256 arg1) {
    if not stor0[arg1]:
        return 0
    return stor0[arg1]
}

function GetOwner(uint256 arg1) {
    if not stor0[arg1]:
        return 0
    return stor0[arg1]
}

function UpdateName(uint256 arg1, string arg2) {
    tokenName[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    if not stor0[arg2]:
        require arg1
        if msg.sender:
            require stor3[0][address(msg.sender)]
        if approved[arg2]:
            approved[arg2] = arg1
            emit Approval(arg2, 0, arg1);
        else:
            if arg1:
                approved[arg2] = arg1
                emit Approval(arg2, 0, arg1);
    else:
        require arg1 != stor0[arg2]
        if stor0[arg2] != msg.sender:
            require stor3[stor0[arg2]][address(msg.sender)]
        if approved[arg2]:
            approved[arg2] = arg1
            emit Approval(arg2, stor0[arg2], arg1);
        else:
            if arg1:
                approved[arg2] = arg1
                emit Approval(arg2, stor0[arg2], arg1);
}

function sub_c69f10e1(?) {
    if not stor16[arg1].field_0:
        mem[(32 * stor16[arg1].field_0) + 128] = 32
        mem[(32 * stor16[arg1].field_0) + 160] = stor16[arg1].field_0
        mem[(32 * stor16[arg1].field_0) + 192 len floor32(stor16[arg1].field_0)] = mem[128 len floor32(stor16[arg1].field_0)]
        return memory
          from (32 * stor16[arg1].field_0) + 128
           len (96 * stor16[arg1].field_0) + 64
    mem[128] = stor16[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor16[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor16[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor16[arg1].field_0) + 192 len floor32(stor16[arg1].field_0)] = mem[128 len floor32(stor16[arg1].field_0)]
    return Array(len=stor16[arg1].field_0, data=mem[128 len floor32(stor16[arg1].field_0)], mem[(32 * stor16[arg1].field_0) + floor32(stor16[arg1].field_0) + 192 len (32 * stor16[arg1].field_0) - floor32(stor16[arg1].field_0)]), 
}

function sub_461439c3(?) {
    stor0[stor8.length + 1] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)].field_0++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenByIndex.length + 1
    stor7[stor8.length + 1] = tokenOfOwnerByIndex[address(msg.sender)].field_0
    emit Transfer((tokenByIndex.length + 1), 0, msg.sender);
    stor9[stor8.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + 1
    sub_fd140cc6[stor8.length + 1] = arg10
    sub_e46706a1[stor8.length + 1] = arg1
    sub_0b02a3fe[stor8.length + 1].field_0 = arg2
    sub_0b02a3fe[stor8.length + 1].field_256 = arg3
    sub_0b02a3fe[stor8.length + 1].field_512 = arg4
    sub_0b02a3fe[stor8.length + 1].field_768 = arg5
    sub_0b02a3fe[stor8.length + 1].field_1024 = arg6
    sub_0b02a3fe[stor8.length + 1].field_1280 = arg7
    sub_0b02a3fe[stor8.length + 1].field_1536 = arg8
    sub_0b02a3fe[stor8.length + 1].field_1792 = arg9
    stor19.length++
    stor19[stor19.length].field_0 = msg.sender
}

function getTokenOwner() {
    if tokenByIndex.length:
        mem[128] = uint256(tokenByIndex.field_0)
        idx = 128
        s = 0
        while (32 * tokenByIndex.length) + 96 > idx:
            mem[idx + 32] = tokenByIndex[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor19.length:
        mem[(32 * tokenByIndex.length) + 160] = address(stor19.field_0)
        idx = (32 * tokenByIndex.length) + 160
        s = 0
        while (32 * tokenByIndex.length) + (32 * stor19.length) + 128 > idx:
            mem[idx + 32] = stor19[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * tokenByIndex.length) + (32 * stor19.length) + 256 len floor32(tokenByIndex.length)] = mem[128 len floor32(tokenByIndex.length)]
    mem[(64 * tokenByIndex.length) + (32 * stor19.length) + 256] = stor19.length
    mem[(64 * tokenByIndex.length) + (32 * stor19.length) + 288 len floor32(stor19.length)] = mem[(32 * tokenByIndex.length) + 160 len floor32(stor19.length)]
    return Array(len=tokenByIndex.length, data=mem[128 len floor32(tokenByIndex.length)], mem[(32 * tokenByIndex.length) + (32 * stor19.length) + floor32(tokenByIndex.length) + 256 len (32 * tokenByIndex.length) + (32 * stor19.length) + -floor32(tokenByIndex.length) + 32]), 
           (32 * tokenByIndex.length) + 96
}

function sub_a469927d(?) {
    if not tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
        return memory
          from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
           len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
    mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
    return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)], mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + floor32(tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)].field_0) - floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    if not stor0[arg3]:
        require 0 == arg1
    else:
        require stor0[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    if not stor0[arg3]:
        require 0 == arg1
    else:
        require stor0[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    stor0[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)].field_0].field_0] = stor7[arg3]
    stor0[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg3, arg1, arg2);
}

function sub_67f8c34e(?) payable {
    if tx.origin != msg.sender:
        revert with 0, 'sorry, EOA only'
    if not stor0[arg11]:
        if msg.sender != 0:
            require msg.value > 0
            if msg.value < arg12:
                revert with 0, 'not enough for birth_price'
            call 0x0 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor0[arg11] != msg.sender:
            require msg.value > 0
            if msg.value < arg12:
                revert with 0, 'not enough for birth_price'
            call stor0[arg11] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor0[stor8.length + 1] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)].field_0++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenByIndex.length + 1
    stor7[stor8.length + 1] = tokenOfOwnerByIndex[address(msg.sender)].field_0
    emit Transfer((tokenByIndex.length + 1), 0, msg.sender);
    stor9[stor8.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + 1
    sub_fd140cc6[stor8.length + 1] = arg10
    sub_e46706a1[stor8.length + 1] = arg1
    sub_0b02a3fe[stor8.length + 1].field_0 = arg2
    sub_0b02a3fe[stor8.length + 1].field_256 = arg3
    sub_0b02a3fe[stor8.length + 1].field_512 = arg4
    sub_0b02a3fe[stor8.length + 1].field_768 = arg5
    sub_0b02a3fe[stor8.length + 1].field_1024 = arg6
    sub_0b02a3fe[stor8.length + 1].field_1280 = arg7
    sub_0b02a3fe[stor8.length + 1].field_1536 = arg8
    sub_0b02a3fe[stor8.length + 1].field_1792 = arg9
    stor19.length++
    stor19[stor19.length].field_0 = msg.sender
}

function Buy(uint256 arg1, address arg2, address arg3, uint256 arg4) payable {
    if tx.origin != msg.sender:
        revert with 0, 'sorry, EOA only'
    call arg2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2
    require arg3
    if not stor0[arg1]:
        require 0 == arg2
    else:
        require stor0[arg1] == arg2
    if approved[arg1]:
        approved[arg1] = 0
        emit Approval(arg1, arg2, 0);
    if not stor0[arg1]:
        require 0 == arg2
    else:
        require stor0[arg1] == arg2
    require 1 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)]--
    stor0[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg2)].field_0
    require tokenOfOwnerByIndex[address(arg2)].field_0 - 1 < tokenOfOwnerByIndex[address(arg2)].field_0
    require stor7[arg1] < tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)][stor7[arg1]].field_0 = tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg2)].field_0 - 1 < tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg2)].field_0--
    if tokenOfOwnerByIndex[address(arg2)].field_0 > tokenOfOwnerByIndex[address(arg2)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg2)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg2)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg1] = 0
    stor7[stor6[address(arg2)][stor6[address(arg2)].field_0].field_0] = stor7[arg1]
    stor0[arg1] = arg3
    require balanceOf[address(arg3)] + 1 >= balanceOf[address(arg3)]
    balanceOf[address(arg3)]++
    tokenOfOwnerByIndex[address(arg3)].field_0++
    tokenOfOwnerByIndex[address(arg3)][tokenOfOwnerByIndex[address(arg3)].field_0].field_0 = arg1
    stor7[arg1] = tokenOfOwnerByIndex[address(arg3)].field_0
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    if not stor0[arg3]:
        require 0 == arg1
    else:
        require stor0[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    if not stor0[arg3]:
        require 0 == arg1
    else:
        require stor0[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    stor0[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)].field_0].field_0] = stor7[arg3]
    stor0[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg1
    require arg2
    if not stor0[arg3]:
        require 0 == arg1
    else:
        require stor0[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    if not stor0[arg3]:
        require 0 == arg1
    else:
        require stor0[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    stor0[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg3] = 0
    stor7[stor6[address(arg1)][stor6[address(arg1)].field_0].field_0] = stor7[arg3]
    stor0[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}



}
