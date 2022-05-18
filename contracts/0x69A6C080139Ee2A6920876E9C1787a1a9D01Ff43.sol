contract main {




// =====================  Runtime code  =====================


const name = 'The Midas Touch Gold'

const decimals = 18

const symbol = 'TMTG'

const checkTime = block.timestamp

const INITIAL_SUPPLY = 10000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 openingTime;
mapping of struct searchInvestor;
mapping of uint256 superInvestor;
mapping of uint256 sub_c9d0eb53;

function superInvestor(address arg1) {
    return superInvestor[arg1]
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function searchInvestor(address arg1) {
    return searchInvestor[arg1].field_0, searchInvestor[arg1].field_256, searchInvestor[arg1].field_512
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function sub_c9d0eb53(?) {
    return sub_c9d0eb53[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f5894157(?) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function setOpeningTime() {
    require msg.sender == owner
    openingTime = block.timestamp
}

function sub_1cdd8bd2(?) {
    require msg.sender == owner
    uint8(stor5[address(arg1)]) = 2
}

function sub_95fc65ac(?) {
    require msg.sender == owner
    sub_c9d0eb53[address(arg1)] = 2
}

function sub_9cf2c610(?) {
    require msg.sender == owner
    sub_c9d0eb53[address(arg1)] = -2
}

function delInvestor(address arg1) {
    require msg.sender == owner
    uint8(stor5[address(arg1)]) = 254
}

function setSuperInvestor(address arg1) {
    require msg.sender == owner
    superInvestor[address(arg1)] = 2
}

function delSuperInvestor(address arg1) {
    require msg.sender == owner
    superInvestor[address(arg1)] = -2
}

function blacklisting(address arg1) {
    require msg.sender == owner
    uint8(stor4[address(arg1)]) = 1
    emit Blacklisted(arg1);
}

function deleteFromBlacklist(address arg1) {
    require msg.sender == owner
    uint8(stor4[address(arg1)]) = 255
    emit Whitelisted(arg1);
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function blackList(address arg1) {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor4', 4)))))))
}

function getLimitPeriod() {
    require openingTime <= block.timestamp
    require 1 <= block.timestamp - openingTime / 300
    return ((block.timestamp - openingTime / 300) - 1)
}

function investorList(address arg1) {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor5', 5)))))))
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    emit Burn(arg1, msg.sender);
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)))))) == 1:
        emit 0xc14cebc3: arg3, msg.sender, arg2
        revert
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor4', 4)))))) == 1:
        emit RejectedPaymentToBlacklistedAddr(arg3, msg.sender, arg2);
        revert
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)))))) == 1:
        emit RejectedPaymentFromBlacklistedAddr(arg3, msg.sender, arg2);
        revert
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)))))) == 1:
        emit RejectedPaymentFromBlacklistedAddr(arg2, msg.sender, arg1);
        revert
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)))))) == 1:
        emit RejectedPaymentToBlacklistedAddr(arg2, msg.sender, arg1);
        revert
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor5', 5)))))) != 2:
        require superInvestor[address(msg.sender)] != 2
        emit Approval(arg2, msg.sender, arg1);
        require not uint8(stor3.field_160)
    else:
        require openingTime <= block.timestamp
        require 1 <= block.timestamp - openingTime / 300
        if not (block.timestamp - openingTime / 300) - 1:
            require searchInvestor[address(msg.sender)].field_0 + arg2 >= searchInvestor[address(msg.sender)].field_0
            searchInvestor[address(msg.sender)].field_0 += arg2
            require 9 >= searchInvestor[address(msg.sender)].field_0
        else:
            require (block.timestamp - openingTime / 300) - 1
            require -searchInvestor[address(msg.sender)].field_512 + (block.timestamp - openingTime / 300 * searchInvestor[address(msg.sender)].field_512) / (block.timestamp - openingTime / 300) - 1 == searchInvestor[address(msg.sender)].field_512
            require searchInvestor[address(msg.sender)].field_0 + arg2 >= searchInvestor[address(msg.sender)].field_0
            searchInvestor[address(msg.sender)].field_0 += arg2
            require -searchInvestor[address(msg.sender)].field_512 + (block.timestamp - openingTime / 300 * searchInvestor[address(msg.sender)].field_512) + 9 >= searchInvestor[address(msg.sender)].field_0
        require arg1
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
        require allowance[address(msg.sender)][address(arg1)] + arg2 <= searchInvestor[address(msg.sender)].field_0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)))))) == 1:
        emit RejectedPaymentFromBlacklistedAddr(arg2, msg.sender, arg1);
        revert
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)))))) == 1:
        emit RejectedPaymentToBlacklistedAddr(arg2, msg.sender, arg1);
        revert
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor5', 5)))))) != 2:
        if superInvestor[address(msg.sender)] != 2:
            emit Transfer(arg2, msg.sender, arg1);
            require not uint8(stor3.field_160)
            if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)))))) == 1:
                emit RejectedPaymentFromBlacklistedAddr(arg2, msg.sender, arg1);
                revert
            if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)))))) == 1:
                emit RejectedPaymentToBlacklistedAddr(arg2, msg.sender, arg1);
                revert
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
        else:
            if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))))) != 2:
                uint8(stor5[address(arg1)]) = 2
                searchInvestor[address(arg1)].field_0 = 0
                searchInvestor[address(arg1)].field_256 = arg2
                searchInvestor[address(arg1)].field_512 = arg2 / 10
            require arg1
            require arg1 != owner
            require superInvestor[address(arg1)] != 2
            require sub_c9d0eb53[address(arg1)] != 2
            require balanceOf[address(msg.sender)] >= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
            require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    require openingTime <= block.timestamp
    require 1 <= block.timestamp - openingTime / 300
    if not (block.timestamp - openingTime / 300) - 1:
        if searchInvestor[address(msg.sender)].field_0 + arg2 >= searchInvestor[address(msg.sender)].field_0:
            require 9 >= searchInvestor[address(msg.sender)].field_0 + arg2
            require arg1
            require balanceOf[address(msg.sender)] >= arg2
            if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
                if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]:
                    if arg2 <= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] -= arg2
                        if searchInvestor[address(msg.sender)].field_0 + arg2 >= searchInvestor[address(msg.sender)].field_0:
                            searchInvestor[address(msg.sender)].field_0 += arg2
                            if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]:
                                    if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]:
                                        return 1
    else:
        if (block.timestamp - openingTime / 300) - 1:
            if -searchInvestor[address(msg.sender)].field_512 + (block.timestamp - openingTime / 300 * searchInvestor[address(msg.sender)].field_512) / (block.timestamp - openingTime / 300) - 1 == searchInvestor[address(msg.sender)].field_512:
                if searchInvestor[address(msg.sender)].field_0 + arg2 >= searchInvestor[address(msg.sender)].field_0:
                    require -searchInvestor[address(msg.sender)].field_512 + (block.timestamp - openingTime / 300 * searchInvestor[address(msg.sender)].field_512) + 9 >= searchInvestor[address(msg.sender)].field_0 + arg2
                    require arg1
                    require balanceOf[address(msg.sender)] >= arg2
                    if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
                        if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]:
                            if arg2 <= balanceOf[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= arg2
                                if searchInvestor[address(msg.sender)].field_0 + arg2 >= searchInvestor[address(msg.sender)].field_0:
                                    searchInvestor[address(msg.sender)].field_0 += arg2
                                    if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]:
                                            if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]:
                                                return 1
    revert
}



}
