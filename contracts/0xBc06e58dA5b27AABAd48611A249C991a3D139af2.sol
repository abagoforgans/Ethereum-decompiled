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
uint8 stor6;
uint256 iCOstarttime;
uint256 iCOendtime;
mapping of uint256 allowance;
array of address receivers;
mapping of uint8 stor11;

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

function unFreeze() {
    return bool(stor6)
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
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

function unFreezeAll() {
    require msg.sender == owner
    stor6 = 1
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
    stor11[address(arg1)] = uint8(arg2)
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

function getAccountList() {
    if receivers.length:
        mem[128 len 32 * receivers.length] = code.data[4242 len 32 * receivers.length]
    idx = 0
    while idx < receivers.length:
        mem[0] = 10
        require idx < receivers.length
        mem[(32 * idx) + 128] = receivers[idx]
        idx = idx + 1
        continue 
    mem[(32 * receivers.length) + 192 len floor32(receivers.length)] = mem[128 len floor32(receivers.length)]
    return Array(len=receivers.length, data=mem[128 len floor32(receivers.length)], mem[(32 * receivers.length) + floor32(receivers.length) + 192 len (32 * receivers.length) - floor32(receivers.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor11[address(arg1)]:
        if not stor6:
            emit AccountFrozenError()
            return 0
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    if iCOstarttime < block.timestamp:
        require block.timestamp >= iCOendtime
    require not stor11[address(arg1)]
    require not stor11[address(arg2)]
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
    if stor11[msg.sender]:
        if not stor6:
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
    return 1
}



}
