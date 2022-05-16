contract main {




// =====================  Runtime code  =====================


const name = 'Tokenimals'

const symbol = 'TKS'


address stor0;
address readCharityAddress;
mapping of uint8 stor2;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of address ownerOf;
mapping of uint256 startingPriceOf;
mapping of uint256 previousPriceOf;
mapping of uint256 priceOf;
mapping of uint256 charityCutOf;
mapping of address approvedFor;

function implementsERC721() {
    return bool(uint8(stor3.field_160))
}

function totalSupply() {
    return stor8.length
}

function isAdmin(address arg1) {
    return bool(stor2[address(arg1)])
}

function approvedFor(uint256 arg1) {
    return approvedFor[arg1]
}

function ownerOf(uint256 arg1) {
    return ownerOf[arg1]
}

function startingPriceOf(uint256 arg1) {
    return startingPriceOf[arg1]
}

function priceOf(uint256 arg1) {
    return priceOf[arg1]
}

function readCharityAddress() {
    return readCharityAddress
}

function charityCutOf(uint256 arg1) {
    return charityCutOf[arg1]
}

function previousPriceOf(uint256 arg1) {
    return previousPriceOf[arg1]
}

function ownerkill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function tokenExists(uint256 arg1) {
    return (priceOf[arg1] > 0)
}

function setOwner(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function addAdmin(address arg1) {
    require stor0 == msg.sender
    stor2[address(arg1)] = 1
}

function enableERC721() {
    require stor0 == msg.sender
    Mask(96, 0, stor3.field_160) = 1
}

function removeAdmin(address arg1) {
    require stor0 == msg.sender
    stor2[address(arg1)] = 0
}

function setCharity(address arg1) {
    require stor0 == msg.sender
    readCharityAddress = arg1
}

function setItemRegistry(address arg1) {
    require stor0 == msg.sender
    address(stor3.field_0) = arg1
}

function withdrawAmount(uint256 arg1) {
    require stor0 == msg.sender
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 9
        if ownerOf[stor8[idx]] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor3.field_160)
    require msg.sender == ownerOf[arg2]
    require priceOf[arg2] > 0
    require ownerOf[arg2] == msg.sender
    require arg1
    require arg1 != this.address
    ownerOf[arg2] = arg1
    approvedFor[arg2] = 0
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor3.field_160)
    require approvedFor[arg3] == msg.sender
    require priceOf[arg3] > 0
    require ownerOf[arg3] == arg1
    require arg2
    require arg2 != this.address
    ownerOf[arg3] = arg2
    approvedFor[arg3] = 0
    emit Transfer(arg3, arg1, arg2);
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor3.field_160)
    require arg1 != msg.sender
    require priceOf[arg2] > 0
    require ownerOf[arg2] == msg.sender
    if arg1:
        approvedFor[arg2] = arg1
        emit Approval(arg2, msg.sender, arg1);
    else:
        if approvedFor[arg2]:
            approvedFor[arg2] = 0
            emit Approval(arg2, msg.sender, 0);
}

function listItem(uint256 arg1, uint256 arg2, address arg3, uint256 arg4) {
    require stor2[address(msg.sender)]
    require arg2 > 0
    require arg4 >= 10
    require arg4 <= 100
    require not priceOf[arg1]
    require not ownerOf[arg1]
    require not charityCutOf[arg1]
    ownerOf[arg1] = arg3
    priceOf[arg1] = arg2
    startingPriceOf[arg1] = arg2
    charityCutOf[arg1] = arg4
    previousPriceOf[arg1] = 0
    stor8.length++
    stor8[stor8.length] = arg1
}

function itemsForSaleLimit(uint256 arg1, uint256 arg2) {
    if arg2:
        mem[128 len 32 * arg2] = code.data[11922 len 32 * arg2]
    idx = 0
    while idx < arg2:
        require arg1 + idx < stor8.length
        mem[0] = 8
        require idx < arg2
        mem[(32 * idx) + 128] = stor[('name', 'stor8', 8) + arg1 + idx]
        idx = idx + 1
        continue 
    mem[(32 * arg2) + 192 len floor32(arg2)] = mem[128 len floor32(arg2)]
    return Array(len=arg2, data=mem[128 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 192 len (32 * arg2) - floor32(arg2)]), 
}

function calculateDevCut(uint256 arg1) {
    if not arg1:
        return 0
    if arg1 < stor4:
        if arg1:
            if 5 * arg1 / arg1 == 5:
                return (5 * arg1 / 100)
    else:
        if arg1 < stor5:
            if arg1:
                if 4 * arg1 / arg1 == 4:
                    return (4 * arg1 / 100)
        else:
            if arg1 < stor6:
                if arg1:
                    if 3 * arg1 / arg1 == 3:
                        return (3 * arg1 / 100)
            else:
                if arg1 >= stor7:
                    if arg1:
                        if 2 * arg1 / arg1 == 2:
                            return (2 * arg1 / 100)
                else:
                    if arg1:
                        if 3 * arg1 / arg1 == 3:
                            return (3 * arg1 / 100)
    revert
}

function calculateNextPrice(uint256 arg1) {
    if not arg1:
        return 0
    if arg1 < stor4:
        if arg1:
            if 200 * arg1 / arg1 == 200:
                return (200 * arg1 / 95)
    else:
        if arg1 < stor5:
            if arg1:
                if 135 * arg1 / arg1 == 135:
                    return (135 * arg1 / 96)
        else:
            if arg1 < stor6:
                if arg1:
                    if 125 * arg1 / arg1 == 125:
                        return (125 * arg1 / 97)
            else:
                if arg1 >= stor7:
                    if arg1:
                        if 115 * arg1 / arg1 == 115:
                            return (115 * arg1 / 98)
                else:
                    if arg1:
                        if 117 * arg1 / arg1 == 117:
                            return (117 * arg1 / 97)
    revert
}

function listMultipleItems(uint256[] arg1, uint256 arg2, address arg3, uint256 arg4) {
    require stor2[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require stor2[address(msg.sender)]
        require arg2 > 0
        require arg4 >= 10
        require arg4 <= 100
        require not priceOf[cd[((32 * idx) + arg1 + 36)]]
        require not ownerOf[cd[((32 * idx) + arg1 + 36)]]
        require not charityCutOf[cd[((32 * idx) + arg1 + 36)]]
        ownerOf[cd[((32 * idx) + arg1 + 36)]] = arg3
        priceOf[cd[((32 * idx) + arg1 + 36)]] = arg2
        startingPriceOf[cd[((32 * idx) + arg1 + 36)]] = arg2
        charityCutOf[cd[((32 * idx) + arg1 + 36)]] = arg4
        mem[32] = 11
        previousPriceOf[cd[((32 * idx) + arg1 + 36)]] = 0
        stor8.length++
        mem[0] = 8
        stor8[stor8.length] = cd[((32 * idx) + arg1 + 36)]
        idx = idx + 1
        continue 
}

function tokensOf(address arg1) {
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 9
        if ownerOf[stor8[idx]] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[11922 len 32 * s]
    idx = 0
    t = 0
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 9
        if ownerOf[stor8[idx]] != arg1:
            idx = idx + 1
            t = t
            continue 
        require idx < stor8.length
        mem[0] = 8
        require t < s
        mem[(32 * t) + 128] = stor8[idx]
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function nextPriceOf(uint256 arg1) {
    if not priceOf[arg1]:
        return 0
    if priceOf[arg1] < stor4:
        if priceOf[arg1]:
            if 200 * priceOf[arg1] / priceOf[arg1] == 200:
                return (200 * priceOf[arg1] / 95)
    else:
        if priceOf[arg1] < stor5:
            if priceOf[arg1]:
                if 135 * priceOf[arg1] / priceOf[arg1] == 135:
                    return (135 * priceOf[arg1] / 96)
        else:
            if priceOf[arg1] < stor6:
                if priceOf[arg1]:
                    if 125 * priceOf[arg1] / priceOf[arg1] == 125:
                        return (125 * priceOf[arg1] / 97)
            else:
                if priceOf[arg1] >= stor7:
                    if priceOf[arg1]:
                        if 115 * priceOf[arg1] / priceOf[arg1] == 115:
                            return (115 * priceOf[arg1] / 98)
                else:
                    if priceOf[arg1]:
                        if 117 * priceOf[arg1] / priceOf[arg1] == 117:
                            return (117 * priceOf[arg1] / 97)
    revert
}

function allOf(uint256 arg1) {
    if not priceOf[arg1]:
        return ownerOf[arg1], startingPriceOf[arg1], priceOf[arg1], 0, charityCutOf[arg1]
    if priceOf[arg1] < stor4:
        if priceOf[arg1]:
            if 200 * priceOf[arg1] / priceOf[arg1] == 200:
                return ownerOf[arg1], startingPriceOf[arg1], priceOf[arg1], 200 * priceOf[arg1] / 95, charityCutOf[arg1]
    else:
        if priceOf[arg1] < stor5:
            if priceOf[arg1]:
                if 135 * priceOf[arg1] / priceOf[arg1] == 135:
                    return ownerOf[arg1], startingPriceOf[arg1], priceOf[arg1], 135 * priceOf[arg1] / 96, charityCutOf[arg1]
        else:
            if priceOf[arg1] < stor6:
                if priceOf[arg1]:
                    if 125 * priceOf[arg1] / priceOf[arg1] == 125:
                        return ownerOf[arg1], startingPriceOf[arg1], priceOf[arg1], 125 * priceOf[arg1] / 97, charityCutOf[arg1]
            else:
                if priceOf[arg1] >= stor7:
                    if priceOf[arg1]:
                        if 115 * priceOf[arg1] / priceOf[arg1] == 115:
                            return ownerOf[arg1], startingPriceOf[arg1], priceOf[arg1], 115 * priceOf[arg1] / 98, charityCutOf[arg1]
                else:
                    if priceOf[arg1]:
                        if 117 * priceOf[arg1] / priceOf[arg1] == 117:
                            return ownerOf[arg1], startingPriceOf[arg1], priceOf[arg1], 117 * priceOf[arg1] / 97, charityCutOf[arg1]
    revert
}

function listItemFromRegistry(uint256 arg1) {
    require stor0 == msg.sender
    require address(stor3.field_0)
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0xb9186d7d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0xc3f6263f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0xb9186d7d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0xc3f6263f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor2[address(msg.sender)]
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= 10
    require ext_call.return_data[0] <= 100
    require not priceOf[arg1]
    require not ownerOf[arg1]
    require not charityCutOf[arg1]
    ownerOf[arg1] = address(ext_call.return_data[0])
    priceOf[arg1] = ext_call.return_data[0]
    startingPriceOf[arg1] = ext_call.return_data[0]
    charityCutOf[arg1] = ext_call.return_data[0]
    previousPriceOf[arg1] = 0
    stor8.length++
    stor8[stor8.length] = arg1
}

function populateFromItemRegistry(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor0 == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 13
        if charityCutOf[mem[(32 * idx) + 128]] <= 0:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 12
            if priceOf[mem[(32 * idx) + 128]] <= 0:
                require idx < arg1.length
                _59 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
                require ext_code.size(address(stor3.field_0))
                call address(stor3.field_0).0xb9186d7d with:
                     gas gas_remaining wei
                    args _59
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require idx < arg1.length
                    _65 = mem[(32 * idx) + 128]
                    require stor0 == msg.sender
                    require address(stor3.field_0)
                    require ext_code.size(address(stor3.field_0))
                    call address(stor3.field_0).0x6352211e with:
                         gas gas_remaining wei
                        args mem[(32 * idx) + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require address(ext_call.return_data[0])
                    require ext_code.size(address(stor3.field_0))
                    call address(stor3.field_0).0xb9186d7d with:
                         gas gas_remaining wei
                        args mem[(32 * idx) + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] > 0
                    require ext_code.size(address(stor3.field_0))
                    call address(stor3.field_0).0xc3f6263f with:
                         gas gas_remaining wei
                        args mem[(32 * idx) + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] > 0
                    require ext_code.size(address(stor3.field_0))
                    call address(stor3.field_0).0xb9186d7d with:
                         gas gas_remaining wei
                        args mem[(32 * idx) + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor3.field_0))
                    call address(stor3.field_0).0xc3f6263f with:
                         gas gas_remaining wei
                        args mem[(32 * idx) + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
                    require ext_code.size(address(stor3.field_0))
                    call address(stor3.field_0).0x6352211e with:
                         gas gas_remaining wei
                        args _65
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require stor2[address(msg.sender)]
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0] >= 10
                    require ext_call.return_data[0] <= 100
                    require not priceOf[_65]
                    require not ownerOf[_65]
                    require not charityCutOf[_65]
                    ownerOf[_65] = address(ext_call.return_data[0])
                    priceOf[_65] = ext_call.return_data[0]
                    startingPriceOf[_65] = ext_call.return_data[0]
                    charityCutOf[_65] = ext_call.return_data[0]
                    mem[32] = 11
                    previousPriceOf[_65] = 0
                    stor8.length++
                    mem[0] = 8
                    stor8[stor8.length] = _65
        idx = idx + 1
        continue 
}

function buy(uint256 arg1, uint256 arg2) payable {
    require priceOf[arg1] > 0
    require arg2 >= 10
    require arg2 <= 100
    require charityCutOf[arg1] >= 10
    require charityCutOf[arg1] <= 100
    require ownerOf[arg1]
    require msg.value >= priceOf[arg1]
    require ownerOf[arg1] != msg.sender
    require ext_code.size(msg.sender) <= 0
    require msg.sender
    require priceOf[arg1] <= msg.value
    charityCutOf[arg1] = arg2
    previousPriceOf[arg1] = priceOf[arg1]
    if priceOf[arg1] < stor4:
        if not priceOf[arg1]:
            priceOf[arg1] = 0
        else:
            require priceOf[arg1]
            require 200 * priceOf[arg1] / priceOf[arg1] == 200
            priceOf[arg1] = 200 * priceOf[arg1] / 95
    else:
        if priceOf[arg1] < stor5:
            if not priceOf[arg1]:
                priceOf[arg1] = 0
            else:
                require priceOf[arg1]
                require 135 * priceOf[arg1] / priceOf[arg1] == 135
                priceOf[arg1] = 135 * priceOf[arg1] / 96
        else:
            if priceOf[arg1] < stor6:
                if not priceOf[arg1]:
                    priceOf[arg1] = 0
                else:
                    require priceOf[arg1]
                    require 125 * priceOf[arg1] / priceOf[arg1] == 125
                    priceOf[arg1] = 125 * priceOf[arg1] / 97
            else:
                if priceOf[arg1] >= stor7:
                    if not priceOf[arg1]:
                        priceOf[arg1] = 0
                    else:
                        require priceOf[arg1]
                        require 115 * priceOf[arg1] / priceOf[arg1] == 115
                        priceOf[arg1] = 115 * priceOf[arg1] / 98
                else:
                    if not priceOf[arg1]:
                        priceOf[arg1] = 0
                    else:
                        require priceOf[arg1]
                        require 117 * priceOf[arg1] / priceOf[arg1] == 117
                        priceOf[arg1] = 117 * priceOf[arg1] / 97
    require priceOf[arg1] > 0
    require ownerOf[arg1] == ownerOf[arg1]
    require msg.sender
    require this.address != msg.sender
    ownerOf[arg1] = msg.sender
    approvedFor[arg1] = 0
    emit Transfer(arg1, ownerOf[arg1], msg.sender);
    emit Bought(priceOf[arg1], arg1, msg.sender);
    emit Sold(priceOf[arg1], arg1, ownerOf[arg1]);
    if priceOf[arg1] < stor4:
        if not priceOf[arg1]:
            require 0 <= priceOf[arg1]
            require previousPriceOf[arg1] <= priceOf[arg1]
            if not priceOf[arg1] - previousPriceOf[arg1]:
                call readCharityAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 <= priceOf[arg1]
                call ownerOf[arg1] with:
                   value priceOf[arg1] wei
                     gas 2300 * is_zero(value) wei
            else:
                require priceOf[arg1] - previousPriceOf[arg1]
                require (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / priceOf[arg1] - previousPriceOf[arg1] == charityCutOf[arg1]
                call readCharityAddress with:
                   value (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 <= priceOf[arg1]
                require (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 <= priceOf[arg1]
                call ownerOf[arg1] with:
                   value priceOf[arg1] - ((priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100) wei
                     gas 2300 * is_zero(value) wei
        else:
            require priceOf[arg1]
            require 5 * priceOf[arg1] / priceOf[arg1] == 5
            require 5 * priceOf[arg1] / 100 <= priceOf[arg1]
            require previousPriceOf[arg1] <= priceOf[arg1] - (5 * priceOf[arg1] / 100)
            if not priceOf[arg1] - (5 * priceOf[arg1] / 100) - previousPriceOf[arg1]:
                call readCharityAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 5 * priceOf[arg1] / 100 <= priceOf[arg1]
                require 0 <= priceOf[arg1] - (5 * priceOf[arg1] / 100)
                call ownerOf[arg1] with:
                   value priceOf[arg1] - (5 * priceOf[arg1] / 100) wei
                     gas 2300 * is_zero(value) wei
            else:
                require priceOf[arg1] - (5 * priceOf[arg1] / 100) - previousPriceOf[arg1]
                require (priceOf[arg1] * charityCutOf[arg1]) - (5 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / priceOf[arg1] - (5 * priceOf[arg1] / 100) - previousPriceOf[arg1] == charityCutOf[arg1]
                call readCharityAddress with:
                   value (priceOf[arg1] * charityCutOf[arg1]) - (5 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 5 * priceOf[arg1] / 100 <= priceOf[arg1]
                require (priceOf[arg1] * charityCutOf[arg1]) - (5 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 <= priceOf[arg1] - (5 * priceOf[arg1] / 100)
                call ownerOf[arg1] with:
                   value priceOf[arg1] - (5 * priceOf[arg1] / 100) - ((priceOf[arg1] * charityCutOf[arg1]) - (5 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100) wei
                     gas 2300 * is_zero(value) wei
    else:
        if priceOf[arg1] < stor5:
            if not priceOf[arg1]:
                require 0 <= priceOf[arg1]
                require previousPriceOf[arg1] <= priceOf[arg1]
                if not priceOf[arg1] - previousPriceOf[arg1]:
                    call readCharityAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 <= priceOf[arg1]
                    call ownerOf[arg1] with:
                       value priceOf[arg1] wei
                         gas 2300 * is_zero(value) wei
                else:
                    require priceOf[arg1] - previousPriceOf[arg1]
                    require (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / priceOf[arg1] - previousPriceOf[arg1] == charityCutOf[arg1]
                    call readCharityAddress with:
                       value (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 <= priceOf[arg1]
                    require (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 <= priceOf[arg1]
                    call ownerOf[arg1] with:
                       value priceOf[arg1] - ((priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100) wei
                         gas 2300 * is_zero(value) wei
            else:
                require priceOf[arg1]
                require 4 * priceOf[arg1] / priceOf[arg1] == 4
                require 4 * priceOf[arg1] / 100 <= priceOf[arg1]
                require previousPriceOf[arg1] <= priceOf[arg1] - (4 * priceOf[arg1] / 100)
                if not priceOf[arg1] - (4 * priceOf[arg1] / 100) - previousPriceOf[arg1]:
                    call readCharityAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 4 * priceOf[arg1] / 100 <= priceOf[arg1]
                    require 0 <= priceOf[arg1] - (4 * priceOf[arg1] / 100)
                    call ownerOf[arg1] with:
                       value priceOf[arg1] - (4 * priceOf[arg1] / 100) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require priceOf[arg1] - (4 * priceOf[arg1] / 100) - previousPriceOf[arg1]
                    require (priceOf[arg1] * charityCutOf[arg1]) - (4 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / priceOf[arg1] - (4 * priceOf[arg1] / 100) - previousPriceOf[arg1] == charityCutOf[arg1]
                    call readCharityAddress with:
                       value (priceOf[arg1] * charityCutOf[arg1]) - (4 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 4 * priceOf[arg1] / 100 <= priceOf[arg1]
                    require (priceOf[arg1] * charityCutOf[arg1]) - (4 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 <= priceOf[arg1] - (4 * priceOf[arg1] / 100)
                    call ownerOf[arg1] with:
                       value priceOf[arg1] - (4 * priceOf[arg1] / 100) - ((priceOf[arg1] * charityCutOf[arg1]) - (4 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100) wei
                         gas 2300 * is_zero(value) wei
        else:
            if priceOf[arg1] < stor6:
                if not priceOf[arg1]:
                    require 0 <= priceOf[arg1]
                    require previousPriceOf[arg1] <= priceOf[arg1]
                    if not priceOf[arg1] - previousPriceOf[arg1]:
                        call readCharityAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= priceOf[arg1]
                        call ownerOf[arg1] with:
                           value priceOf[arg1] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require priceOf[arg1] - previousPriceOf[arg1]
                        require (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / priceOf[arg1] - previousPriceOf[arg1] == charityCutOf[arg1]
                        call readCharityAddress with:
                           value (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 <= priceOf[arg1]
                        require (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 <= priceOf[arg1]
                        call ownerOf[arg1] with:
                           value priceOf[arg1] - ((priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require priceOf[arg1]
                    require 3 * priceOf[arg1] / priceOf[arg1] == 3
                    require 3 * priceOf[arg1] / 100 <= priceOf[arg1]
                    require previousPriceOf[arg1] <= priceOf[arg1] - (3 * priceOf[arg1] / 100)
                    if not priceOf[arg1] - (3 * priceOf[arg1] / 100) - previousPriceOf[arg1]:
                        call readCharityAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 3 * priceOf[arg1] / 100 <= priceOf[arg1]
                        require 0 <= priceOf[arg1] - (3 * priceOf[arg1] / 100)
                        call ownerOf[arg1] with:
                           value priceOf[arg1] - (3 * priceOf[arg1] / 100) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require priceOf[arg1] - (3 * priceOf[arg1] / 100) - previousPriceOf[arg1]
                        require (priceOf[arg1] * charityCutOf[arg1]) - (3 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / priceOf[arg1] - (3 * priceOf[arg1] / 100) - previousPriceOf[arg1] == charityCutOf[arg1]
                        call readCharityAddress with:
                           value (priceOf[arg1] * charityCutOf[arg1]) - (3 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 3 * priceOf[arg1] / 100 <= priceOf[arg1]
                        require (priceOf[arg1] * charityCutOf[arg1]) - (3 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 <= priceOf[arg1] - (3 * priceOf[arg1] / 100)
                        call ownerOf[arg1] with:
                           value priceOf[arg1] - (3 * priceOf[arg1] / 100) - ((priceOf[arg1] * charityCutOf[arg1]) - (3 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                if priceOf[arg1] >= stor7:
                    if not priceOf[arg1]:
                        require 0 <= priceOf[arg1]
                        require previousPriceOf[arg1] <= priceOf[arg1]
                        if not priceOf[arg1] - previousPriceOf[arg1]:
                            call readCharityAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= priceOf[arg1]
                            call ownerOf[arg1] with:
                               value priceOf[arg1] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require priceOf[arg1] - previousPriceOf[arg1]
                            require (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / priceOf[arg1] - previousPriceOf[arg1] == charityCutOf[arg1]
                            call readCharityAddress with:
                               value (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= priceOf[arg1]
                            require (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 <= priceOf[arg1]
                            call ownerOf[arg1] with:
                               value priceOf[arg1] - ((priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require priceOf[arg1]
                        require 2 * priceOf[arg1] / priceOf[arg1] == 2
                        require 2 * priceOf[arg1] / 100 <= priceOf[arg1]
                        require previousPriceOf[arg1] <= priceOf[arg1] - (2 * priceOf[arg1] / 100)
                        if not priceOf[arg1] - (2 * priceOf[arg1] / 100) - previousPriceOf[arg1]:
                            call readCharityAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 2 * priceOf[arg1] / 100 <= priceOf[arg1]
                            require 0 <= priceOf[arg1] - (2 * priceOf[arg1] / 100)
                            call ownerOf[arg1] with:
                               value priceOf[arg1] - (2 * priceOf[arg1] / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require priceOf[arg1] - (2 * priceOf[arg1] / 100) - previousPriceOf[arg1]
                            require (priceOf[arg1] * charityCutOf[arg1]) - (2 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / priceOf[arg1] - (2 * priceOf[arg1] / 100) - previousPriceOf[arg1] == charityCutOf[arg1]
                            call readCharityAddress with:
                               value (priceOf[arg1] * charityCutOf[arg1]) - (2 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 2 * priceOf[arg1] / 100 <= priceOf[arg1]
                            require (priceOf[arg1] * charityCutOf[arg1]) - (2 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 <= priceOf[arg1] - (2 * priceOf[arg1] / 100)
                            call ownerOf[arg1] with:
                               value priceOf[arg1] - (2 * priceOf[arg1] / 100) - ((priceOf[arg1] * charityCutOf[arg1]) - (2 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if not priceOf[arg1]:
                        require 0 <= priceOf[arg1]
                        require previousPriceOf[arg1] <= priceOf[arg1]
                        if not priceOf[arg1] - previousPriceOf[arg1]:
                            call readCharityAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= priceOf[arg1]
                            call ownerOf[arg1] with:
                               value priceOf[arg1] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require priceOf[arg1] - previousPriceOf[arg1]
                            require (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / priceOf[arg1] - previousPriceOf[arg1] == charityCutOf[arg1]
                            call readCharityAddress with:
                               value (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= priceOf[arg1]
                            require (priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 <= priceOf[arg1]
                            call ownerOf[arg1] with:
                               value priceOf[arg1] - ((priceOf[arg1] * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require priceOf[arg1]
                        require 3 * priceOf[arg1] / priceOf[arg1] == 3
                        require 3 * priceOf[arg1] / 100 <= priceOf[arg1]
                        require previousPriceOf[arg1] <= priceOf[arg1] - (3 * priceOf[arg1] / 100)
                        if not priceOf[arg1] - (3 * priceOf[arg1] / 100) - previousPriceOf[arg1]:
                            call readCharityAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * priceOf[arg1] / 100 <= priceOf[arg1]
                            require 0 <= priceOf[arg1] - (3 * priceOf[arg1] / 100)
                            call ownerOf[arg1] with:
                               value priceOf[arg1] - (3 * priceOf[arg1] / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require priceOf[arg1] - (3 * priceOf[arg1] / 100) - previousPriceOf[arg1]
                            require (priceOf[arg1] * charityCutOf[arg1]) - (3 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / priceOf[arg1] - (3 * priceOf[arg1] / 100) - previousPriceOf[arg1] == charityCutOf[arg1]
                            call readCharityAddress with:
                               value (priceOf[arg1] * charityCutOf[arg1]) - (3 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 3 * priceOf[arg1] / 100 <= priceOf[arg1]
                            require (priceOf[arg1] * charityCutOf[arg1]) - (3 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100 <= priceOf[arg1] - (3 * priceOf[arg1] / 100)
                            call ownerOf[arg1] with:
                               value priceOf[arg1] - (3 * priceOf[arg1] / 100) - ((priceOf[arg1] * charityCutOf[arg1]) - (3 * priceOf[arg1] / 100 * charityCutOf[arg1]) - (previousPriceOf[arg1] * charityCutOf[arg1]) / 100) wei
                                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - priceOf[arg1] > 0:
        call msg.sender with:
           value msg.value - priceOf[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
