contract main {




// =====================  Runtime code  =====================


const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000

const sub_d8469506(?) = 0x4d6cc9dc492f2041b9eafba4b63ca191dba65bfc


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
array of uint256 tokenURI;
uint256 sub_331f5f8c;
mapping of uint256 sub_07e1a9cf;
mapping of uint256 poolBalance;
mapping of uint256 balances;
mapping of uint256 num;
array of struct content;
array of struct sub_98d0b4fb;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function sub_07e1a9cf(?) {
    require calldata.size - 4 >= 32
    return sub_07e1a9cf[arg1]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function balances(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return balances[arg1][arg2]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_331f5f8c(?) {
    return sub_331f5f8c
}

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function poolBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    return poolBalance[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_98d0b4fb(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_98d0b4fb[arg1].field_0
    return sub_98d0b4fb[arg1][arg2].field_0
}

function num(uint256 arg1) {
    require calldata.size - 4 >= 32
    return num[arg1]
}

function content(uint256 arg1) {
    return content[arg1][0 len content[arg1].length].field_0
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_a20a45b6(?) {
    require calldata.size - 4 >= 64
    require sub_07e1a9cf[arg1] > 0
    require sub_07e1a9cf[arg1]
    if not poolBalance[arg1]:
        return 0
    require arg2 / sub_07e1a9cf[arg1] * poolBalance[arg1] / poolBalance[arg1] == arg2 / sub_07e1a9cf[arg1]
    return (arg2 / sub_07e1a9cf[arg1] * poolBalance[arg1])
}

function sub_2c6498f2(?) {
    require calldata.size - 4 >= 64
    require arg2 + sub_07e1a9cf[arg1] >= sub_07e1a9cf[arg1]
    require 5 * 10^9 * (arg2 + sub_07e1a9cf[arg1])^2 / 5 * 10^9 == (arg2 + sub_07e1a9cf[arg1])^2
    require poolBalance[arg1] <= 5 * 10^9 * (arg2 + sub_07e1a9cf[arg1])^2 / 10^10
    return ((5 * 10^9 * (arg2 + sub_07e1a9cf[arg1])^2 / 10^10) - poolBalance[arg1])
}

function sub_cf0f20d7(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if arg1 == sub_331f5f8c:
        sub_331f5f8c++
    require arg1 < sub_331f5f8c
    require 3 > num[arg1]
    require arg2 + sub_07e1a9cf[arg1] >= sub_07e1a9cf[arg1]
    require 5 * 10^9 * (arg2 + sub_07e1a9cf[arg1])^2 / 5 * 10^9 == (arg2 + sub_07e1a9cf[arg1])^2
    require poolBalance[arg1] <= 5 * 10^9 * (arg2 + sub_07e1a9cf[arg1])^2 / 10^10
    require (5 * 10^9 * (arg2 + sub_07e1a9cf[arg1])^2 / 10^10) - poolBalance[arg1] <= msg.value
    require arg2 + sub_07e1a9cf[arg1] >= sub_07e1a9cf[arg1]
    sub_07e1a9cf[arg1] += arg2
    require arg2 + balances[arg1][msg.sender] >= balances[arg1][msg.sender]
    balances[arg1][msg.sender] += arg2
    require msg.value + poolBalance[arg1] >= poolBalance[arg1]
    poolBalance[arg1] += msg.value
    num[arg1]++
    content[arg1][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_98d0b4fb[arg1].field_0++
    sub_98d0b4fb[arg1][sub_98d0b4fb[arg1].field_0].field_0 = msg.sender or Mask(96, 160, sub_98d0b4fb[arg1][sub_98d0b4fb[arg1].field_0].field_0)
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = arg2
    emit 0xe67ec111: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], (5 * 10^9 * (arg2 + sub_07e1a9cf[arg1])^2 / 10^10) - poolBalance[arg1], Array(len=arg3.length, data=arg3[all])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require 3 == num[arg1]
    require msg.value >= poolBalance[arg1]
    if not msg.value / 100:
        require msg.value + poolBalance[arg1] >= poolBalance[arg1]
        poolBalance[arg1] += msg.value
        require msg.sender
        require not ownerOf[arg1]
        ownerOf[arg1] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
        stor8[arg1] = tokenOfOwnerByIndex[address(msg.sender)]
        emit Transfer(0, msg.sender, arg1);
        stor10[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
        mem[128] = content[arg1].field_0
        idx = 128
        s = 0
        while content[arg1].length + 96 > idx:
            mem[idx + 32] = content[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ownerOf[arg1]
        tokenURI[arg1][] = Array(len=content[arg1].length, data=mem[128 len content[arg1].length])
        require 0 < sub_98d0b4fb[arg1].field_0
        require sub_07e1a9cf[arg1] > 0
        require sub_07e1a9cf[arg1]
        if not poolBalance[arg1]:
            call sub_98d0b4fb[arg1].field_0 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_0, balances[arg1][stor18[arg1].field_0], 0);
        else:
            require balances[arg1][stor18[arg1].field_0] / sub_07e1a9cf[arg1] * poolBalance[arg1] / poolBalance[arg1] == balances[arg1][stor18[arg1].field_0] / sub_07e1a9cf[arg1]
            call sub_98d0b4fb[arg1].field_0 with:
               value balances[arg1][stor18[arg1].field_0] / sub_07e1a9cf[arg1] * poolBalance[arg1] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_0, balances[arg1][stor18[arg1].field_0], balances[arg1][stor18[arg1].field_0] / sub_07e1a9cf[arg1] * poolBalance[arg1]);
        balances[arg1][stor18[arg1].field_0] = 0
        require 1 < sub_98d0b4fb[arg1].field_0
        require sub_07e1a9cf[arg1] > 0
        require sub_07e1a9cf[arg1]
        if not poolBalance[arg1]:
            call sub_98d0b4fb[arg1].field_256 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_256, balances[arg1][stor18[arg1].field_256], 0);
        else:
            require balances[arg1][stor18[arg1].field_256] / sub_07e1a9cf[arg1] * poolBalance[arg1] / poolBalance[arg1] == balances[arg1][stor18[arg1].field_256] / sub_07e1a9cf[arg1]
            call sub_98d0b4fb[arg1].field_256 with:
               value balances[arg1][stor18[arg1].field_256] / sub_07e1a9cf[arg1] * poolBalance[arg1] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_256, balances[arg1][stor18[arg1].field_256], balances[arg1][stor18[arg1].field_256] / sub_07e1a9cf[arg1] * poolBalance[arg1]);
        balances[arg1][stor18[arg1].field_256] = 0
        require 2 < sub_98d0b4fb[arg1].field_0
        require sub_07e1a9cf[arg1] > 0
        require sub_07e1a9cf[arg1]
        if not poolBalance[arg1]:
            call sub_98d0b4fb[arg1].field_512 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_512, balances[arg1][stor18[arg1].field_512], 0);
        else:
            require balances[arg1][stor18[arg1].field_512] / sub_07e1a9cf[arg1] * poolBalance[arg1] / poolBalance[arg1] == balances[arg1][stor18[arg1].field_512] / sub_07e1a9cf[arg1]
            call sub_98d0b4fb[arg1].field_512 with:
               value balances[arg1][stor18[arg1].field_512] / sub_07e1a9cf[arg1] * poolBalance[arg1] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_512, balances[arg1][stor18[arg1].field_512], balances[arg1][stor18[arg1].field_512] / sub_07e1a9cf[arg1] * poolBalance[arg1]);
        balances[arg1][stor18[arg1].field_512] = 0
        call 0x4d6cc9dc492f2041b9eafba4b63ca191dba65bfc with:
             gas 2300 wei
    else:
        require 3 * msg.value / 100 / msg.value / 100 == 3
        require msg.value - (3 * msg.value / 100) + poolBalance[arg1] >= poolBalance[arg1]
        poolBalance[arg1] = msg.value - (3 * msg.value / 100) + poolBalance[arg1]
        require msg.sender
        require not ownerOf[arg1]
        ownerOf[arg1] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
        stor8[arg1] = tokenOfOwnerByIndex[address(msg.sender)]
        emit Transfer(0, msg.sender, arg1);
        stor10[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
        mem[128] = content[arg1].field_0
        idx = 128
        s = 0
        while content[arg1].length + 96 > idx:
            mem[idx + 32] = content[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ownerOf[arg1]
        tokenURI[arg1][] = Array(len=content[arg1].length, data=mem[128 len content[arg1].length])
        require 0 < sub_98d0b4fb[arg1].field_0
        require sub_07e1a9cf[arg1] > 0
        require sub_07e1a9cf[arg1]
        if not poolBalance[arg1]:
            call sub_98d0b4fb[arg1].field_0 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_0, balances[arg1][stor18[arg1].field_0], 0);
        else:
            require balances[arg1][stor18[arg1].field_0] / sub_07e1a9cf[arg1] * poolBalance[arg1] / poolBalance[arg1] == balances[arg1][stor18[arg1].field_0] / sub_07e1a9cf[arg1]
            call sub_98d0b4fb[arg1].field_0 with:
               value balances[arg1][stor18[arg1].field_0] / sub_07e1a9cf[arg1] * poolBalance[arg1] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_0, balances[arg1][stor18[arg1].field_0], balances[arg1][stor18[arg1].field_0] / sub_07e1a9cf[arg1] * poolBalance[arg1]);
        balances[arg1][stor18[arg1].field_0] = 0
        require 1 < sub_98d0b4fb[arg1].field_0
        require sub_07e1a9cf[arg1] > 0
        require sub_07e1a9cf[arg1]
        if not poolBalance[arg1]:
            call sub_98d0b4fb[arg1].field_256 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_256, balances[arg1][stor18[arg1].field_256], 0);
        else:
            require balances[arg1][stor18[arg1].field_256] / sub_07e1a9cf[arg1] * poolBalance[arg1] / poolBalance[arg1] == balances[arg1][stor18[arg1].field_256] / sub_07e1a9cf[arg1]
            call sub_98d0b4fb[arg1].field_256 with:
               value balances[arg1][stor18[arg1].field_256] / sub_07e1a9cf[arg1] * poolBalance[arg1] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_256, balances[arg1][stor18[arg1].field_256], balances[arg1][stor18[arg1].field_256] / sub_07e1a9cf[arg1] * poolBalance[arg1]);
        balances[arg1][stor18[arg1].field_256] = 0
        require 2 < sub_98d0b4fb[arg1].field_0
        require sub_07e1a9cf[arg1] > 0
        require sub_07e1a9cf[arg1]
        if not poolBalance[arg1]:
            call sub_98d0b4fb[arg1].field_512 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_512, balances[arg1][stor18[arg1].field_512], 0);
        else:
            require balances[arg1][stor18[arg1].field_512] / sub_07e1a9cf[arg1] * poolBalance[arg1] / poolBalance[arg1] == balances[arg1][stor18[arg1].field_512] / sub_07e1a9cf[arg1]
            call sub_98d0b4fb[arg1].field_512 with:
               value balances[arg1][stor18[arg1].field_512] / sub_07e1a9cf[arg1] * poolBalance[arg1] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Rewarded(arg1, sub_98d0b4fb[arg1].field_512, balances[arg1][stor18[arg1].field_512], balances[arg1][stor18[arg1].field_512] / sub_07e1a9cf[arg1] * poolBalance[arg1]);
        balances[arg1][stor18[arg1].field_512] = 0
        call 0x4d6cc9dc492f2041b9eafba4b63ca191dba65bfc with:
           value 3 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    poolBalance[arg1] = 0
}



}
