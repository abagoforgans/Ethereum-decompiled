contract main {




// =====================  Runtime code  =====================


const name = 'Nynja'

const decimals = 18

const symbol = 'NYN'

const MAX_TOKEN_SALES = 1

const TOKEN_UNIT = 10^18

const MAX_BATCH_SIZE = 400

const MAX_TOKEN_SUPPLY = 50000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address assignerAddress;
address lockerAddress;
mapping of uint8 stor6;
uint256 currentTokenSaleId;
mapping of uint256 addressTokenSaleId;
uint8 stor9;

function totalSupply() {
    return totalSupply
}

function assigner() {
    return assignerAddress
}

function isLocked(address arg1) {
    return bool(stor6[address(arg1)])
}

function isTokenSaleOngoing() {
    return bool(stor9)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getAddressTokenSaleId(address arg1) {
    return addressTokenSaleId[address(arg1)]
}

function owner() {
    return owner
}

function getCurrentTokenSaleId() {
    return currentTokenSaleId
}

function locked(address arg1) {
    return bool(stor6[arg1])
}

function tokenSaleId(address arg1) {
    return addressTokenSaleId[arg1]
}

function tokenSaleOngoing() {
    return bool(stor9)
}

function locker() {
    return lockerAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function currentTokenSaleId() {
    return currentTokenSaleId
}

function _fallback() payable {
    revert
}

function tokenSaleEnd() {
    require owner == msg.sender
    require stor9
    emit TokenSaleEnding(currentTokenSaleId);
    stor9 = 0
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferLocker(address arg1) {
    require owner == msg.sender
    require arg1
    emit LockerTransferred(lockerAddress, arg1);
    lockerAddress = arg1
    return 1
}

function unlockAddress(address arg1) {
    require lockerAddress == msg.sender
    require stor6[address(arg1)]
    stor6[address(arg1)] = 0
    emit Unlock(arg1);
    return 1
}

function transferAssigner(address arg1) {
    require owner == msg.sender
    require arg1
    emit AssignerTransferred(assignerAddress, arg1);
    assignerAddress = arg1
    return 1
}

function tokenSaleStart() {
    require owner == msg.sender
    require not stor9
    require 1 > currentTokenSaleId
    currentTokenSaleId++
    stor9 = 1
    emit TokenSaleStarting(currentTokenSaleId + 1);
    return 1
}

function lockAddress(address arg1) {
    require lockerAddress == msg.sender
    require stor9
    require addressTokenSaleId[address(arg1)] == currentTokenSaleId
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit Lock(arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
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

function unlockInBatches(address[] arg1) {
    require lockerAddress == msg.sender
    require arg1.length > 0
    require arg1.length <= 400
    idx = 0
    while idx < arg1.length:
        require lockerAddress == msg.sender
        require stor6[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + arg1 + 36)])] = 0
        emit Unlock(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor6[address(msg.sender)]
    if stor9:
        require addressTokenSaleId[address(msg.sender)] < currentTokenSaleId
        require addressTokenSaleId[address(arg1)] < currentTokenSaleId
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require assignerAddress == msg.sender
    require stor9
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require 50000000 * 10^18 >= arg2 + totalSupply
    if not addressTokenSaleId[address(arg1)]:
        addressTokenSaleId[address(arg1)] = currentTokenSaleId
    require addressTokenSaleId[address(arg1)] == currentTokenSaleId
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function lockInBatches(address[] arg1) {
    require lockerAddress == msg.sender
    require arg1.length > 0
    require arg1.length <= 400
    idx = 0
    while idx < arg1.length:
        require lockerAddress == msg.sender
        require stor9
        require addressTokenSaleId[address(cd[((32 * idx) + arg1 + 36)])] == currentTokenSaleId
        require not stor6[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + arg1 + 36)])] = 1
        emit Lock(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    return 1
}

function assign(address arg1, uint256 arg2) {
    require assignerAddress == msg.sender
    require stor9
    require 1 == currentTokenSaleId
    if arg2 <= balanceOf[address(arg1)]:
        require arg2 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - arg2 <= totalSupply
        totalSupply = totalSupply - balanceOf[address(arg1)] + arg2
    else:
        require balanceOf[address(arg1)] <= arg2
        require arg2 - balanceOf[address(arg1)] + totalSupply >= totalSupply
        totalSupply = arg2 - balanceOf[address(arg1)] + totalSupply
    require 50000000 * 10^18 >= totalSupply
    balanceOf[address(arg1)] = arg2
    addressTokenSaleId[address(arg1)] = currentTokenSaleId
    emit Assign(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    if stor9:
        require addressTokenSaleId[address(msg.sender)] < currentTokenSaleId
        require addressTokenSaleId[address(arg1)] < currentTokenSaleId
        require addressTokenSaleId[address(arg2)] < currentTokenSaleId
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mintInBatches(address[] arg1, uint256[] arg2) {
    require assignerAddress == msg.sender
    require stor9
    require arg1.length > 0
    require arg2.length == arg1.length
    require arg1.length <= 400
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require assignerAddress == msg.sender
        require stor9
        require cd[((32 * idx) + arg2 + 36)] + totalSupply >= totalSupply
        totalSupply += cd[((32 * idx) + arg2 + 36)]
        require 50000000 * 10^18 >= cd[((32 * idx) + arg2 + 36)] + totalSupply
        if not addressTokenSaleId[address(cd[((32 * idx) + arg1 + 36)])]:
            addressTokenSaleId[address(cd[((32 * idx) + arg1 + 36)])] = currentTokenSaleId
        require addressTokenSaleId[address(cd[((32 * idx) + arg1 + 36)])] == currentTokenSaleId
        require cd[((32 * idx) + arg2 + 36)] + balanceOf[address(cd[((32 * idx) + arg1 + 36)])] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[32] = 0
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        emit Mint(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        emit Transfer(cd[((32 * idx) + arg2 + 36)], 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    return 1
}

function assignInBatches(address[] arg1, uint256[] arg2) {
    require assignerAddress == msg.sender
    require stor9
    require arg1.length > 0
    require arg2.length == arg1.length
    require arg1.length <= 400
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require assignerAddress == msg.sender
        require stor9
        require 1 == currentTokenSaleId
        if cd[((32 * idx) + arg2 + 36)] <= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
            require cd[((32 * idx) + arg2 + 36)] <= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
            require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] - cd[((32 * idx) + arg2 + 36)] <= totalSupply
            totalSupply = totalSupply - balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)]
        else:
            require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] <= cd[((32 * idx) + arg2 + 36)]
            require cd[((32 * idx) + arg2 + 36)] - balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + totalSupply >= totalSupply
            totalSupply = cd[((32 * idx) + arg2 + 36)] - balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + totalSupply
        require 50000000 * 10^18 >= totalSupply
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        mem[32] = 8
        addressTokenSaleId[address(cd[((32 * idx) + arg1 + 36)])] = currentTokenSaleId
        emit Assign(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        emit Transfer(cd[((32 * idx) + arg2 + 36)], 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    return 1
}



}
