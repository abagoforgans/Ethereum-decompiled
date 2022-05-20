contract main {




// =====================  Runtime code  =====================


const name = 'As Soon as'

const decimals = 18

const symbol = 'asa'

const checkTime = block.timestamp

const INITIAL_SUPPLY = 10000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 openingTime;
mapping of struct searchInvestor;
mapping of uint256 superInvestor;
mapping of uint256 cEx;

function superInvestor(address arg1) {
    return superInvestor[arg1]
}

function totalSupply() {
    return totalSupply
}

function CEx(address arg1) {
    return cEx[arg1]
}

function paused() {
    return bool(stor3)
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setCEx(address arg1) {
    require msg.sender == owner
    cEx[address(arg1)] = 2
}

function delCEx(address arg1) {
    require msg.sender == owner
    cEx[address(arg1)] = -2
}

function setOpeningTime() {
    require msg.sender == owner
    openingTime = block.timestamp
}

function sub_1cdd8bd2(?) {
    require msg.sender == owner
    uint8(stor5[address(arg1)]) = 2
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
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

function getLimitPeriod() {
    require openingTime <= block.timestamp
    return (block.timestamp - openingTime / 720 * 24 * 3600)
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function blackList(address arg1) {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor4', 4)))))))
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
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
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
    require not stor3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    if 1 == ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', 'msg.sender', ('name', 'stor4', 4)))))):
        emit RejectedPaymentFromBlacklistedAddr(arg2, msg.sender, arg1);
        revert
    if 1 == ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)))))):
        emit RejectedPaymentToBlacklistedAddr(arg2, msg.sender, arg1);
        revert
    if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', 'msg.sender', ('name', 'stor5', 5)))))) != 2:
        require superInvestor[msg.sender] != 2
        emit Approval(arg2, msg.sender, arg1);
        require not stor3
        allowance[msg.sender][address(arg1)] = arg2
        require arg1
        require arg2 <= balanceOf[msg.sender]
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
    else:
        require openingTime <= block.timestamp
        if not block.timestamp - openingTime / 720 * 24 * 3600:
            require arg2 + searchInvestor[msg.sender].field_0 >= searchInvestor[msg.sender].field_0
            searchInvestor[msg.sender].field_0 += arg2
            require 25 * 10^14 * 3600 >= arg2 + searchInvestor[msg.sender].field_0
        else:
            require searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600 / block.timestamp - openingTime / 720 * 24 * 3600 == searchInvestor[msg.sender].field_512
            require arg2 + searchInvestor[msg.sender].field_0 >= searchInvestor[msg.sender].field_0
            searchInvestor[msg.sender].field_0 += arg2
            require (searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600) + (25 * 10^14 * 3600) >= searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600
            require (searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600) + (25 * 10^14 * 3600) >= arg2 + searchInvestor[msg.sender].field_0
        require arg1
        require arg2 <= balanceOf[msg.sender]
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
        allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    if 1 == ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', 'msg.sender', ('name', 'stor4', 4)))))):
        emit RejectedPaymentFromBlacklistedAddr(arg2, msg.sender, arg1);
        revert
    if 1 == ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)))))):
        emit RejectedPaymentToBlacklistedAddr(arg2, msg.sender, arg1);
        revert
    if 2 == ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', 'msg.sender', ('name', 'stor5', 5)))))):
        require openingTime <= block.timestamp
        if not block.timestamp - openingTime / 720 * 24 * 3600:
            if arg2 + searchInvestor[msg.sender].field_0 >= searchInvestor[msg.sender].field_0:
                require 25 * 10^14 * 3600 >= arg2 + searchInvestor[msg.sender].field_0
                require arg1
                require arg2 <= balanceOf[msg.sender]
                if arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                    require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
                    if balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]:
                        if arg2 <= balanceOf[msg.sender]:
                            balanceOf[msg.sender] -= arg2
                            if arg2 + searchInvestor[msg.sender].field_0 >= searchInvestor[msg.sender].field_0:
                                searchInvestor[msg.sender].field_0 += arg2
                                if arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    if balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]:
                                        if balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[address(arg1)] + balanceOf[msg.sender]:
                                            return 1
        else:
            if searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600 / block.timestamp - openingTime / 720 * 24 * 3600 == searchInvestor[msg.sender].field_512:
                if arg2 + searchInvestor[msg.sender].field_0 >= searchInvestor[msg.sender].field_0:
                    if (searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600) + (25 * 10^14 * 3600) >= searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600:
                        require (searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600) + (25 * 10^14 * 3600) >= arg2 + searchInvestor[msg.sender].field_0
                        require arg1
                        require arg2 <= balanceOf[msg.sender]
                        if arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                            require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
                            if balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]:
                                if arg2 <= balanceOf[msg.sender]:
                                    balanceOf[msg.sender] -= arg2
                                    if arg2 + searchInvestor[msg.sender].field_0 >= searchInvestor[msg.sender].field_0:
                                        searchInvestor[msg.sender].field_0 += arg2
                                        if arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            if balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]:
                                                if balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[address(arg1)] + balanceOf[msg.sender]:
                                                    return 1
        revert
    if superInvestor[msg.sender] != 2:
        emit Transfer(arg2, msg.sender, arg1);
        require not stor3
        if 1 == ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', 'msg.sender', ('name', 'stor4', 4)))))):
            emit RejectedPaymentFromBlacklistedAddr(arg2, msg.sender, arg1);
            revert
        if 1 == ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)))))):
            emit RejectedPaymentToBlacklistedAddr(arg2, msg.sender, arg1);
            revert
        require arg1
        require arg2 <= balanceOf[msg.sender]
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    else:
        if ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)))))) != 2:
            uint8(stor5[address(arg1)]) = 2
            searchInvestor[address(arg1)].field_0 = 0
            searchInvestor[address(arg1)].field_256 = arg2
            searchInvestor[address(arg1)].field_512 = arg2 / 10
        require arg1
        require owner != arg1
        require superInvestor[address(arg1)] != 2
        require cEx[address(arg1)] != 2
        require arg2 <= balanceOf[msg.sender]
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        require arg2 + balanceOf[arg1] + balanceOf[msg.sender] >= balanceOf[msg.sender]
        require arg2 + balanceOf[arg1] + balanceOf[msg.sender] == balanceOf[address(arg1)] + balanceOf[msg.sender]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
