contract main {




// =====================  Runtime code  =====================


const name = 'ISTCoin'

const decimals = 8

const symbol = 'IST'

const INITIAL_SUPPLY = 2 * 10^16


address owner;
mapping of uint256 balanceOf;
uint256 totalSupply_;
uint256 privatePreSale;
uint256 openPreSale;
uint256 openSale;
uint256 iCOstarttime;
uint256 iCOendtime;
mapping of uint256 allowance;
mapping of uint8 stor9;

function openSale() {
    return openSale
}

function totalSupply() {
    return totalSupply_
}

function totalSupply_() {
    return totalSupply_
}

function openPreSale() {
    return openPreSale
}

function ICOstarttime() {
    return iCOstarttime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function privatePreSale() {
    return privatePreSale
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ICOendtime() {
    return iCOendtime
}

function _fallback() payable {
    revert
}

function ICOactive() {
    if iCOstarttime >= block.timestamp:
        return (iCOstarttime < block.timestamp)
    return (block.timestamp < iCOendtime)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply_
    totalSupply_ -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if iCOstarttime < block.timestamp:
        require block.timestamp >= iCOendtime
    require not stor9[address(arg1)]
    require not stor9[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    if msg.sender == owner:
        if block.timestamp < 425869 * 3600:
            if block.timestamp > 426709 * 3600:
                if block.timestamp < 428390 * 3600:
                    require arg2 <= openSale
                    openSale -= arg2
        else:
            if block.timestamp < 1534337940:
                require arg2 <= privatePreSale
                privatePreSale -= arg2
            else:
                if block.timestamp < 426205 * 3600:
                    if block.timestamp > 426709 * 3600:
                        if block.timestamp < 428390 * 3600:
                            require arg2 <= openSale
                            openSale -= arg2
                else:
                    if block.timestamp < 426541 * 3600:
                        require arg2 <= openPreSale
                        openPreSale -= arg2
                    else:
                        if block.timestamp > 426709 * 3600:
                            if block.timestamp < 428390 * 3600:
                                require arg2 <= openSale
                                openSale -= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
