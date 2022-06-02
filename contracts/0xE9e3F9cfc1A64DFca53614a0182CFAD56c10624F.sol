contract main {




// =====================  Runtime code  =====================


#
#  - suSquares(uint256 arg1)
#
const name = 'Su Squares'

const totalSupply = 10000

const symbol = 'SU'


address executiveOfficerAddress;
address financialOfficerAddress;
address operatingOfficerAddress;
mapping of uint8 stor3;
mapping of address approved;
mapping of uint8 stor5;
mapping of address stor6;
array of uint256 balanceOf;
mapping of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
array of uint256 stor11;
array of uint256 stor12;
uint256 promoCreatedCount;

function executiveOfficerAddress() {
    return executiveOfficerAddress
}

function promoCreatedCount() {
    return promoCreatedCount
}

function getApproved(uint256 arg1) {
    require arg1 >= 1
    require arg1 <= 10000
    return approved[arg1]
}

function operatingOfficerAddress() {
    return operatingOfficerAddress
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function financialOfficerAddress() {
    return financialOfficerAddress
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function tokenByIndex(uint256 arg1) {
    require arg1 < 10000
    return (arg1 + 1)
}

function setOperatingOfficer(address arg1) {
    require msg.sender == executiveOfficerAddress
    require arg1
    operatingOfficerAddress = arg1
}

function setFinancialOfficer(address arg1) {
    require msg.sender == executiveOfficerAddress
    require arg1
    financialOfficerAddress = arg1
}

function setExecutiveOfficer(address arg1) {
    require msg.sender == executiveOfficerAddress
    require arg1
    executiveOfficerAddress = arg1
}

function ownerOf(uint256 arg1) {
    require arg1 >= 1
    require arg1 <= 10000
    if stor6[arg1]:
        return stor6[arg1]
    return this.address
}

function setApprovalForAll(address arg1, bool arg2) {
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) {
    if not stor3[Mask(32, 224, arg1)]:
        return bool(stor3[Mask(32, 224, arg1)])
    return Mask(32, 224, arg1) != 0xffffffff00000000000000000000000000000000000000000000000000000000
}

function approve(address arg1, uint256 arg2) payable {
    if stor6[arg2] != msg.sender:
        require stor5[stor6[arg2]][msg.sender]
    approved[arg2] = arg1
    if stor6[arg2]:
        emit Approval(stor6[arg2], arg1, arg2);
    else:
        emit Approval(this.address, arg1, arg2);
}

function withdrawBalance() {
    require msg.sender == financialOfficerAddress
    call financialOfficerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < balanceOf[address(arg1)]
    if arg1 != this.address:
        return balanceOf[address(arg1)][arg2]
    if balanceOf[address(arg1)][arg2]:
        return balanceOf[address(arg1)][arg2]
    return (arg2 + 1)
}

function tokenURI(uint256 arg1) {
    require arg1 >= 1
    require arg1 <= 10000
    return 'https://tenthousandsu.com/erc721/00000.json', 
           0,
           0,
           0,
           0,
           Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('param', 'arg1'), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('param', 'arg1'), 10))), 0) - 256,
           Mask(152, 0, '/00000.json'),
           0
}

function personalizeSquare(uint256 arg1, bytes arg2, string arg3, string arg4) payable {
    require stor6[arg1] == msg.sender
    require arg3.length <= 64
    require arg4.length <= 96
    require arg2.length == 300
    require arg1 < 10001
    stor9[arg1]++
    stor10[arg1] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        stor[s + sha3((4 * arg1) + 10)] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while stor[(4 * arg1) + 10].length + 31 / 32 > idx:
        stor[idx + sha3((4 * arg1) + 10)] = 0
        idx = idx + 1
        continue 
    require arg1 < 10001
    stor11[arg1] = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        stor[s + sha3((4 * arg1) + 11)] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while stor[(4 * arg1) + 11].length + 31 / 32 > idx:
        stor[idx + sha3((4 * arg1) + 11)] = 0
        idx = idx + 1
        continue 
    require arg1 < 10001
    stor12[arg1] = (2 * arg4.length) + 1
    s = 0
    idx = arg4 + 36
    while arg4 + arg4.length + 36 > idx:
        stor[s + sha3((4 * arg1) + 12)] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg4.length + 31) >> 5
    while stor[(4 * arg1) + 12].length + 31 / 32 > idx:
        stor[idx + sha3((4 * arg1) + 12)] = 0
        idx = idx + 1
        continue 
    require arg1 < 10001
    if stor9[arg1] > 3:
        require msg.value == 10^16
    emit Personalized(arg1);
}

function purchase(uint256 arg1) payable {
    require arg1 >= 1
    require arg1 <= 10000
    require arg1 >= 1
    require arg1 <= 10000
    if stor6[arg1]:
        require this.address == stor6[arg1]
    require 5 * 10^17 == msg.value
    require msg.sender
    if stor6[arg1]:
        if stor8[arg1]:
            if stor8[arg1] - 1 != balanceOf[stor6[arg1]] - 1:
                require balanceOf[stor6[arg1]] - 1 < balanceOf[stor6[arg1]]
                require stor8[arg1] - 1 < balanceOf[stor6[arg1]]
                if balanceOf[stor6[arg1]][balanceOf[stor6[arg1]]] != 0:
                    balanceOf[stor6[arg1]][stor8[arg1]] = balanceOf[stor6[arg1]][balanceOf[stor6[arg1]]]
                    stor8[stor7[stor6[arg1]][stor7[stor6[arg1]]]] = stor8[arg1]
                else:
                    balanceOf[stor6[arg1]][stor8[arg1]] = balanceOf[stor6[arg1]]
                    stor8[stor7[stor6[arg1]]] = stor8[arg1]
        else:
            if arg1 - 1 != balanceOf[stor6[arg1]] - 1:
                require balanceOf[stor6[arg1]] - 1 < balanceOf[stor6[arg1]]
                require arg1 - 1 < balanceOf[stor6[arg1]]
                if balanceOf[stor6[arg1]][balanceOf[stor6[arg1]]] != 0:
                    balanceOf[stor6[arg1]][arg1] = balanceOf[stor6[arg1]][balanceOf[stor6[arg1]]]
                    stor8[stor7[stor6[arg1]][stor7[stor6[arg1]]]] = arg1
                else:
                    balanceOf[stor6[arg1]][arg1] = balanceOf[stor6[arg1]]
                    stor8[stor7[stor6[arg1]]] = arg1
        balanceOf[stor6[arg1]]--
        if balanceOf[stor6[arg1]] > balanceOf[stor6[arg1]] - 1:
            idx = balanceOf[stor6[arg1]] - 1
            while balanceOf[stor6[arg1]] > idx:
                balanceOf[stor6[arg1]][idx] = 0
                idx = idx + 1
                continue 
        balanceOf[address(msg.sender)]++
        balanceOf[address(msg.sender)][balanceOf[address(msg.sender)]] = arg1
        stor8[arg1] = balanceOf[address(msg.sender)]
        stor6[arg1] = msg.sender
        approved[arg1] = 0
        emit Transfer(stor6[arg1], msg.sender, arg1);
    else:
        if stor8[arg1]:
            if stor8[arg1] - 1 != balanceOf[address(this.address)] - 1:
                require balanceOf[address(this.address)] - 1 < balanceOf[address(this.address)]
                require stor8[arg1] - 1 < balanceOf[address(this.address)]
                if balanceOf[address(this.address)][balanceOf[address(this.address)]] != 0:
                    balanceOf[address(this.address)][stor8[arg1]] = balanceOf[address(this.address)][balanceOf[address(this.address)]]
                    stor8[stor7[address(this.address)][stor7[address(this.address)]]] = stor8[arg1]
                else:
                    balanceOf[address(this.address)][stor8[arg1]] = balanceOf[address(this.address)]
                    stor8[stor7[address(this.address)]] = stor8[arg1]
        else:
            if arg1 - 1 != balanceOf[address(this.address)] - 1:
                require balanceOf[address(this.address)] - 1 < balanceOf[address(this.address)]
                require arg1 - 1 < balanceOf[address(this.address)]
                if balanceOf[address(this.address)][balanceOf[address(this.address)]] != 0:
                    balanceOf[address(this.address)][arg1] = balanceOf[address(this.address)][balanceOf[address(this.address)]]
                    stor8[stor7[address(this.address)][stor7[address(this.address)]]] = arg1
                else:
                    balanceOf[address(this.address)][arg1] = balanceOf[address(this.address)]
                    stor8[stor7[address(this.address)]] = arg1
        balanceOf[address(this.address)]--
        if balanceOf[address(this.address)] > balanceOf[address(this.address)] - 1:
            idx = balanceOf[address(this.address)] - 1
            while balanceOf[address(this.address)] > idx:
                balanceOf[address(this.address)][idx] = 0
                idx = idx + 1
                continue 
        balanceOf[address(msg.sender)]++
        balanceOf[address(msg.sender)][balanceOf[address(msg.sender)]] = arg1
        stor8[arg1] = balanceOf[address(msg.sender)]
        stor6[arg1] = msg.sender
        approved[arg1] = 0
        emit Transfer(this.address, msg.sender, arg1);
}

function grantToken(uint256 arg1, address arg2) {
    require msg.sender == operatingOfficerAddress
    require arg1 >= 1
    require arg1 <= 10000
    require arg1 >= 1
    require arg1 <= 10000
    if stor6[arg1]:
        require this.address == stor6[arg1]
    require 5000 > promoCreatedCount
    promoCreatedCount++
    require arg2
    if stor6[arg1]:
        if stor8[arg1]:
            if stor8[arg1] - 1 != balanceOf[stor6[arg1]] - 1:
                require balanceOf[stor6[arg1]] - 1 < balanceOf[stor6[arg1]]
                require stor8[arg1] - 1 < balanceOf[stor6[arg1]]
                if balanceOf[stor6[arg1]][balanceOf[stor6[arg1]]] != 0:
                    balanceOf[stor6[arg1]][stor8[arg1]] = balanceOf[stor6[arg1]][balanceOf[stor6[arg1]]]
                    stor8[stor7[stor6[arg1]][stor7[stor6[arg1]]]] = stor8[arg1]
                else:
                    balanceOf[stor6[arg1]][stor8[arg1]] = balanceOf[stor6[arg1]]
                    stor8[stor7[stor6[arg1]]] = stor8[arg1]
        else:
            if arg1 - 1 != balanceOf[stor6[arg1]] - 1:
                require balanceOf[stor6[arg1]] - 1 < balanceOf[stor6[arg1]]
                require arg1 - 1 < balanceOf[stor6[arg1]]
                if balanceOf[stor6[arg1]][balanceOf[stor6[arg1]]] != 0:
                    balanceOf[stor6[arg1]][arg1] = balanceOf[stor6[arg1]][balanceOf[stor6[arg1]]]
                    stor8[stor7[stor6[arg1]][stor7[stor6[arg1]]]] = arg1
                else:
                    balanceOf[stor6[arg1]][arg1] = balanceOf[stor6[arg1]]
                    stor8[stor7[stor6[arg1]]] = arg1
        balanceOf[stor6[arg1]]--
        if balanceOf[stor6[arg1]] > balanceOf[stor6[arg1]] - 1:
            idx = balanceOf[stor6[arg1]] - 1
            while balanceOf[stor6[arg1]] > idx:
                balanceOf[stor6[arg1]][idx] = 0
                idx = idx + 1
                continue 
        balanceOf[address(arg2)]++
        balanceOf[address(arg2)][balanceOf[address(arg2)]] = arg1
        stor8[arg1] = balanceOf[address(arg2)]
        stor6[arg1] = arg2
        approved[arg1] = 0
        emit Transfer(stor6[arg1], arg2, arg1);
    else:
        if stor8[arg1]:
            if stor8[arg1] - 1 != balanceOf[address(this.address)] - 1:
                require balanceOf[address(this.address)] - 1 < balanceOf[address(this.address)]
                require stor8[arg1] - 1 < balanceOf[address(this.address)]
                if balanceOf[address(this.address)][balanceOf[address(this.address)]] != 0:
                    balanceOf[address(this.address)][stor8[arg1]] = balanceOf[address(this.address)][balanceOf[address(this.address)]]
                    stor8[stor7[address(this.address)][stor7[address(this.address)]]] = stor8[arg1]
                else:
                    balanceOf[address(this.address)][stor8[arg1]] = balanceOf[address(this.address)]
                    stor8[stor7[address(this.address)]] = stor8[arg1]
        else:
            if arg1 - 1 != balanceOf[address(this.address)] - 1:
                require balanceOf[address(this.address)] - 1 < balanceOf[address(this.address)]
                require arg1 - 1 < balanceOf[address(this.address)]
                if balanceOf[address(this.address)][balanceOf[address(this.address)]] != 0:
                    balanceOf[address(this.address)][arg1] = balanceOf[address(this.address)][balanceOf[address(this.address)]]
                    stor8[stor7[address(this.address)][stor7[address(this.address)]]] = arg1
                else:
                    balanceOf[address(this.address)][arg1] = balanceOf[address(this.address)]
                    stor8[stor7[address(this.address)]] = arg1
        balanceOf[address(this.address)]--
        if balanceOf[address(this.address)] > balanceOf[address(this.address)] - 1:
            idx = balanceOf[address(this.address)] - 1
            while balanceOf[address(this.address)] > idx:
                balanceOf[address(this.address)][idx] = 0
                idx = idx + 1
                continue 
        balanceOf[address(arg2)]++
        balanceOf[address(arg2)][balanceOf[address(arg2)]] = arg1
        stor8[arg1] = balanceOf[address(arg2)]
        stor6[arg1] = arg2
        approved[arg1] = 0
        emit Transfer(this.address, arg2, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require arg3 >= 1
    require arg3 <= 10000
    if stor6[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor6[arg3]][msg.sender]
    if stor6[arg3]:
        require arg1 == stor6[arg3]
    else:
        require arg1 == this.address
    require arg2
    if stor6[arg3]:
        if stor8[arg3]:
            if stor8[arg3] - 1 != balanceOf[stor6[arg3]] - 1:
                require balanceOf[stor6[arg3]] - 1 < balanceOf[stor6[arg3]]
                require stor8[arg3] - 1 < balanceOf[stor6[arg3]]
                if balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]] != 0:
                    balanceOf[stor6[arg3]][stor8[arg3]] = balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]]
                    stor8[stor7[stor6[arg3]][stor7[stor6[arg3]]]] = stor8[arg3]
                else:
                    balanceOf[stor6[arg3]][stor8[arg3]] = balanceOf[stor6[arg3]]
                    stor8[stor7[stor6[arg3]]] = stor8[arg3]
        else:
            if arg3 - 1 != balanceOf[stor6[arg3]] - 1:
                require balanceOf[stor6[arg3]] - 1 < balanceOf[stor6[arg3]]
                require arg3 - 1 < balanceOf[stor6[arg3]]
                if balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]] != 0:
                    balanceOf[stor6[arg3]][arg3] = balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]]
                    stor8[stor7[stor6[arg3]][stor7[stor6[arg3]]]] = arg3
                else:
                    balanceOf[stor6[arg3]][arg3] = balanceOf[stor6[arg3]]
                    stor8[stor7[stor6[arg3]]] = arg3
        balanceOf[stor6[arg3]]--
        if balanceOf[stor6[arg3]] > balanceOf[stor6[arg3]] - 1:
            idx = balanceOf[stor6[arg3]] - 1
            while balanceOf[stor6[arg3]] > idx:
                balanceOf[stor6[arg3]][idx] = 0
                idx = idx + 1
                continue 
        balanceOf[address(arg2)]++
        balanceOf[address(arg2)][balanceOf[address(arg2)]] = arg3
        stor8[arg3] = balanceOf[address(arg2)]
        stor6[arg3] = arg2
        approved[arg3] = 0
        emit Transfer(stor6[arg3], arg2, arg3);
    else:
        if stor8[arg3]:
            if stor8[arg3] - 1 != balanceOf[address(this.address)] - 1:
                require balanceOf[address(this.address)] - 1 < balanceOf[address(this.address)]
                require stor8[arg3] - 1 < balanceOf[address(this.address)]
                if balanceOf[address(this.address)][balanceOf[address(this.address)]] != 0:
                    balanceOf[address(this.address)][stor8[arg3]] = balanceOf[address(this.address)][balanceOf[address(this.address)]]
                    stor8[stor7[address(this.address)][stor7[address(this.address)]]] = stor8[arg3]
                else:
                    balanceOf[address(this.address)][stor8[arg3]] = balanceOf[address(this.address)]
                    stor8[stor7[address(this.address)]] = stor8[arg3]
        else:
            if arg3 - 1 != balanceOf[address(this.address)] - 1:
                require balanceOf[address(this.address)] - 1 < balanceOf[address(this.address)]
                require arg3 - 1 < balanceOf[address(this.address)]
                if balanceOf[address(this.address)][balanceOf[address(this.address)]] != 0:
                    balanceOf[address(this.address)][arg3] = balanceOf[address(this.address)][balanceOf[address(this.address)]]
                    stor8[stor7[address(this.address)][stor7[address(this.address)]]] = arg3
                else:
                    balanceOf[address(this.address)][arg3] = balanceOf[address(this.address)]
                    stor8[stor7[address(this.address)]] = arg3
        balanceOf[address(this.address)]--
        if balanceOf[address(this.address)] > balanceOf[address(this.address)] - 1:
            idx = balanceOf[address(this.address)] - 1
            while balanceOf[address(this.address)] > idx:
                balanceOf[address(this.address)][idx] = 0
                idx = idx + 1
                continue 
        balanceOf[address(arg2)]++
        balanceOf[address(arg2)][balanceOf[address(arg2)]] = arg3
        stor8[arg3] = balanceOf[address(arg2)]
        stor6[arg3] = arg2
        approved[arg3] = 0
        emit Transfer(this.address, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require arg3 >= 1
    require arg3 <= 10000
    if stor6[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor6[arg3]][msg.sender]
    if stor6[arg3]:
        require arg1 == stor6[arg3]
    else:
        require arg1 == this.address
    require arg2
    if stor6[arg3]:
        if stor8[arg3]:
            if stor8[arg3] - 1 != balanceOf[stor6[arg3]] - 1:
                require balanceOf[stor6[arg3]] - 1 < balanceOf[stor6[arg3]]
                require stor8[arg3] - 1 < balanceOf[stor6[arg3]]
                if balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]] != 0:
                    balanceOf[stor6[arg3]][stor8[arg3]] = balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]]
                    stor8[stor7[stor6[arg3]][stor7[stor6[arg3]]]] = stor8[arg3]
                else:
                    balanceOf[stor6[arg3]][stor8[arg3]] = balanceOf[stor6[arg3]]
                    stor8[stor7[stor6[arg3]]] = stor8[arg3]
        else:
            if arg3 - 1 != balanceOf[stor6[arg3]] - 1:
                require balanceOf[stor6[arg3]] - 1 < balanceOf[stor6[arg3]]
                require arg3 - 1 < balanceOf[stor6[arg3]]
                if balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]] != 0:
                    balanceOf[stor6[arg3]][arg3] = balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]]
                    stor8[stor7[stor6[arg3]][stor7[stor6[arg3]]]] = arg3
                else:
                    balanceOf[stor6[arg3]][arg3] = balanceOf[stor6[arg3]]
                    stor8[stor7[stor6[arg3]]] = arg3
        balanceOf[stor6[arg3]]--
        if balanceOf[stor6[arg3]] > balanceOf[stor6[arg3]] - 1:
            idx = balanceOf[stor6[arg3]] - 1
            while balanceOf[stor6[arg3]] > idx:
                balanceOf[stor6[arg3]][idx] = 0
                idx = idx + 1
                continue 
        balanceOf[address(arg2)]++
        balanceOf[address(arg2)][balanceOf[address(arg2)]] = arg3
        stor8[arg3] = balanceOf[address(arg2)]
        stor6[arg3] = arg2
        approved[arg3] = 0
        emit Transfer(stor6[arg3], arg2, arg3);
    else:
        if stor8[arg3]:
            if stor8[arg3] - 1 != balanceOf[address(this.address)] - 1:
                require balanceOf[address(this.address)] - 1 < balanceOf[address(this.address)]
                require stor8[arg3] - 1 < balanceOf[address(this.address)]
                if balanceOf[address(this.address)][balanceOf[address(this.address)]] != 0:
                    balanceOf[address(this.address)][stor8[arg3]] = balanceOf[address(this.address)][balanceOf[address(this.address)]]
                    stor8[stor7[address(this.address)][stor7[address(this.address)]]] = stor8[arg3]
                else:
                    balanceOf[address(this.address)][stor8[arg3]] = balanceOf[address(this.address)]
                    stor8[stor7[address(this.address)]] = stor8[arg3]
        else:
            if arg3 - 1 != balanceOf[address(this.address)] - 1:
                require balanceOf[address(this.address)] - 1 < balanceOf[address(this.address)]
                require arg3 - 1 < balanceOf[address(this.address)]
                if balanceOf[address(this.address)][balanceOf[address(this.address)]] != 0:
                    balanceOf[address(this.address)][arg3] = balanceOf[address(this.address)][balanceOf[address(this.address)]]
                    stor8[stor7[address(this.address)][stor7[address(this.address)]]] = arg3
                else:
                    balanceOf[address(this.address)][arg3] = balanceOf[address(this.address)]
                    stor8[stor7[address(this.address)]] = arg3
        balanceOf[address(this.address)]--
        if balanceOf[address(this.address)] > balanceOf[address(this.address)] - 1:
            idx = balanceOf[address(this.address)] - 1
            while balanceOf[address(this.address)] > idx:
                balanceOf[address(this.address)][idx] = 0
                idx = idx + 1
                continue 
        balanceOf[address(arg2)]++
        balanceOf[address(arg2)][balanceOf[address(arg2)]] = arg3
        stor8[arg3] = balanceOf[address(arg2)]
        stor6[arg3] = arg2
        approved[arg3] = 0
        emit Transfer(this.address, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, sha3('onERC721Received(address,address', ',uint256,bytes)')) == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require arg3 >= 1
    require arg3 <= 10000
    if stor6[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor5[stor6[arg3]][msg.sender]
    if stor6[arg3]:
        require arg1 == stor6[arg3]
    else:
        require arg1 == this.address
    require arg2
    if stor6[arg3]:
        if stor8[arg3]:
            if stor8[arg3] - 1 != balanceOf[stor6[arg3]] - 1:
                require balanceOf[stor6[arg3]] - 1 < balanceOf[stor6[arg3]]
                require stor8[arg3] - 1 < balanceOf[stor6[arg3]]
                if balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]] != 0:
                    balanceOf[stor6[arg3]][stor8[arg3]] = balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]]
                    stor8[stor7[stor6[arg3]][stor7[stor6[arg3]]]] = stor8[arg3]
                else:
                    balanceOf[stor6[arg3]][stor8[arg3]] = balanceOf[stor6[arg3]]
                    stor8[stor7[stor6[arg3]]] = stor8[arg3]
        else:
            if arg3 - 1 != balanceOf[stor6[arg3]] - 1:
                require balanceOf[stor6[arg3]] - 1 < balanceOf[stor6[arg3]]
                require arg3 - 1 < balanceOf[stor6[arg3]]
                if balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]] != 0:
                    balanceOf[stor6[arg3]][arg3] = balanceOf[stor6[arg3]][balanceOf[stor6[arg3]]]
                    stor8[stor7[stor6[arg3]][stor7[stor6[arg3]]]] = arg3
                else:
                    balanceOf[stor6[arg3]][arg3] = balanceOf[stor6[arg3]]
                    stor8[stor7[stor6[arg3]]] = arg3
        balanceOf[stor6[arg3]]--
        if balanceOf[stor6[arg3]] > balanceOf[stor6[arg3]] - 1:
            idx = balanceOf[stor6[arg3]] - 1
            while balanceOf[stor6[arg3]] > idx:
                balanceOf[stor6[arg3]][idx] = 0
                idx = idx + 1
                continue 
        balanceOf[address(arg2)]++
        balanceOf[address(arg2)][balanceOf[address(arg2)]] = arg3
        stor8[arg3] = balanceOf[address(arg2)]
        stor6[arg3] = arg2
        approved[arg3] = 0
        emit Transfer(stor6[arg3], arg2, arg3);
    else:
        if stor8[arg3]:
            if stor8[arg3] - 1 != balanceOf[address(this.address)] - 1:
                require balanceOf[address(this.address)] - 1 < balanceOf[address(this.address)]
                require stor8[arg3] - 1 < balanceOf[address(this.address)]
                if balanceOf[address(this.address)][balanceOf[address(this.address)]] != 0:
                    balanceOf[address(this.address)][stor8[arg3]] = balanceOf[address(this.address)][balanceOf[address(this.address)]]
                    stor8[stor7[address(this.address)][stor7[address(this.address)]]] = stor8[arg3]
                else:
                    balanceOf[address(this.address)][stor8[arg3]] = balanceOf[address(this.address)]
                    stor8[stor7[address(this.address)]] = stor8[arg3]
        else:
            if arg3 - 1 != balanceOf[address(this.address)] - 1:
                require balanceOf[address(this.address)] - 1 < balanceOf[address(this.address)]
                require arg3 - 1 < balanceOf[address(this.address)]
                if balanceOf[address(this.address)][balanceOf[address(this.address)]] != 0:
                    balanceOf[address(this.address)][arg3] = balanceOf[address(this.address)][balanceOf[address(this.address)]]
                    stor8[stor7[address(this.address)][stor7[address(this.address)]]] = arg3
                else:
                    balanceOf[address(this.address)][arg3] = balanceOf[address(this.address)]
                    stor8[stor7[address(this.address)]] = arg3
        balanceOf[address(this.address)]--
        if balanceOf[address(this.address)] > balanceOf[address(this.address)] - 1:
            idx = balanceOf[address(this.address)] - 1
            while balanceOf[address(this.address)] > idx:
                balanceOf[address(this.address)][idx] = 0
                idx = idx + 1
                continue 
        balanceOf[address(arg2)]++
        balanceOf[address(arg2)][balanceOf[address(arg2)]] = arg3
        stor8[arg3] = balanceOf[address(arg2)]
        stor6[arg3] = arg2
        approved[arg3] = 0
        emit Transfer(this.address, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, sha3('onERC721Received(address,address', ',uint256,bytes)')) == Mask(32, 224, ext_call.return_data[0])
}



}
