contract main {




// =====================  Runtime code  =====================


const name = 'YOACoin'

const decimals = 8

const symbol = 'YOA'

const INITIAL_SUPPLY = 4 * 10^17


address owner;
mapping of uint256 balanceOf;
uint256 totalSupply_;
uint256 privatePreSale;
uint256 openPreSale;
uint256 openSale;
uint256 iCOstarttime;
uint256 iCOendtime;
mapping of uint256 allowance;
array of address receivers;
mapping of uint8 stor10;

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
    return bool(stor10[arg1])
}

function privatePreSale() {
    return privatePreSale
}

function receivers(uint256 arg1) {
    require arg1 < receivers.length
    return receivers[arg1]
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

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor10[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply_
    totalSupply_ -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    if iCOstarttime < block.timestamp:
        require block.timestamp >= iCOendtime
    require not stor10[address(arg1)]
    require not stor10[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor10[msg.sender]:
        emit AccountFrozenError()
        return 0
    require arg1
    require arg2 <= balanceOf[msg.sender]
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
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    receivers.length++
    receivers[receivers.length] = arg1
    if not stor10[address(arg1)]:
        stor10[address(arg1)] = 1
        emit FrozenFunds(address(arg1), 1);
    return 1
}



}
