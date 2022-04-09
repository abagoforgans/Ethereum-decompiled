contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
uint256 stor2;
address stor4;

function _fallback() {
    stor4 = msg.sender
    stor0 = 2 * 10^16
    stor2 = 15
    stor1 = 3
    return code.data[114 len 2929]
}



// =====================  Runtime code  =====================


uint256 cost;
uint8 waitTime;
uint256 max;
mapping of struct pendingNumbers;
address owner;

function cost() {
    return cost
}

function max() {
    return max
}

function owner() {
    return owner
}

function pendingNumbers(address arg1) {
    return pendingNumbers[arg1].field_0, 
           pendingNumbers[arg1].field_256,
           pendingNumbers[arg1].field_512,
           pendingNumbers[arg1].field_768,
           pendingNumbers[arg1].field_1024
}

function waitTime() {
    return waitTime
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function owned() {
    owner = msg.sender
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_cf041d58(?) {
    require owner == msg.sender
    waitTime = arg1
    emit EventLuckyNumberUpdated(cost, max, arg1);
    return 1
}

function setMax(uint256 arg1) {
    require owner == msg.sender
    max = arg1
    emit EventLuckyNumberUpdated(cost, arg1, waitTime);
    return 1
}

function setCost(uint256 arg1) {
    require owner == msg.sender
    cost = arg1
    emit EventLuckyNumberUpdated(arg1, max, waitTime);
    return 1
}

function checkNumber(address arg1) {
    if pendingNumbers[address(arg1)].field_256:
        return 0
    if pendingNumbers[address(arg1)].field_1024 <= 0:
        return 0
    return 1
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function getNumber(address arg1) {
    return pendingNumbers[address(arg1)].field_256, 
           pendingNumbers[address(arg1)].field_768,
           pendingNumbers[address(arg1)].field_512,
           arg1
}

function getRand(uint256 arg1, uint256 arg2) {
    require arg2
    require (sha3(block.hash(arg1)) % arg2) + 1 >= sha3(block.hash(arg1)) % arg2
    require (sha3(block.hash(arg1)) % arg2) + 1 >= 1
    return ((sha3(block.hash(arg1)) % arg2) + 1)
}

function requestNumber(address arg1, uint256 arg2, uint8 arg3) payable {
    require msg.value >= cost
    if not pendingNumbers[address(arg1)].field_256:
        require pendingNumbers[address(arg1)].field_1024 <= 0
    pendingNumbers[address(arg1)].field_0 = tx.origin
    pendingNumbers[address(arg1)].field_256 = 0
    pendingNumbers[address(arg1)].field_512 = block.number
    pendingNumbers[address(arg1)].field_768 = max
    pendingNumbers[address(arg1)].field_1024 = waitTime
    if arg2 > 1:
        pendingNumbers[address(arg1)].field_768 = arg2
    if arg3 > 0:
        if arg3 < 8:
            pendingNumbers[address(arg1)].field_1024 = arg3
    emit EventLuckyNumberRequested(address(arg1), pendingNumbers[address(arg1)].field_768, pendingNumbers[address(arg1)].field_512, pendingNumbers[address(arg1)].field_1024);
}

function revealNumber(address arg1) payable {
    require not pendingNumbers[address(arg1)].field_256
    require pendingNumbers[address(arg1)].field_1024 > 0
    require pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512
    require pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024
    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 > block.number:
        require pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number
        require not pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number
    if pendingNumbers[address(arg1)].field_0 != arg1:
        require msg.sender == pendingNumbers[address(arg1)].field_0
    require pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512
    require pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024
    require pendingNumbers[address(arg1)].field_768
    require (sha3(block.hash(pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512)) % pendingNumbers[address(arg1)].field_768) + 1 >= sha3(block.hash(pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512)) % pendingNumbers[address(arg1)].field_768
    require (sha3(block.hash(pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512)) % pendingNumbers[address(arg1)].field_768) + 1 >= 1
    pendingNumbers[address(arg1)].field_256 = (sha3(block.hash(pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512)) % pendingNumbers[address(arg1)].field_768) + 1
    pendingNumbers[address(arg1)].field_1024 = 0
    pendingNumbers[address(arg1)].field_512 += pendingNumbers[address(arg1)].field_1024
    emit EventLuckyNumberRevealed(address(arg1), pendingNumbers[address(arg1)].field_768, (sha3(block.hash(pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512)) % pendingNumbers[address(arg1)].field_768) + 1);
}

function canReveal(address arg1) {
    if pendingNumbers[address(arg1)].field_256:
        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 <= block.number:
                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                            return 0, 0, pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512, address(arg1), msg.sender
                else:
                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number:
                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                return 0, 
                                       pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number,
                                       pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512,
                                       address(arg1),
                                       msg.sender
    else:
        if pendingNumbers[address(arg1)].field_1024 <= 0:
            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 <= block.number:
                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                return 0, 0, pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512, address(arg1), msg.sender
                    else:
                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number:
                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                    return 0, 
                                           pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number,
                                           pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512,
                                           address(arg1),
                                           msg.sender
        else:
            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 <= block.number:
                        if pendingNumbers[address(arg1)].field_0 == arg1:
                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 <= block.number:
                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                return 1, 0, pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512, address(arg1), msg.sender
                                    else:
                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                    return 1, 
                                                           pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number,
                                                           pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512,
                                                           address(arg1),
                                                           msg.sender
                        else:
                            if pendingNumbers[address(arg1)].field_0 != msg.sender:
                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 <= block.number:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                    return 0, 0, pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512, address(arg1), msg.sender
                                        else:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                        return 0, 
                                                               pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number,
                                                               pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512,
                                                               address(arg1),
                                                               msg.sender
                            else:
                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 <= block.number:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                    return 1, 0, pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512, address(arg1), msg.sender
                                        else:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                        return 1, 
                                                               pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number,
                                                               pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512,
                                                               address(arg1),
                                                               msg.sender
                    else:
                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number:
                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number:
                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 <= block.number:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                    return 0, 0, pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512, address(arg1), msg.sender
                                        else:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                        return 0, 
                                                               pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number,
                                                               pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512,
                                                               address(arg1),
                                                               msg.sender
                            else:
                                if pendingNumbers[address(arg1)].field_0 == arg1:
                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 <= block.number:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                        return 1, 0, pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512, address(arg1), msg.sender
                                            else:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number:
                                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                            return 1, 
                                                                   pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number,
                                                                   pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512,
                                                                   address(arg1),
                                                                   msg.sender
                                else:
                                    if pendingNumbers[address(arg1)].field_0 != msg.sender:
                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 <= block.number:
                                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                            return 0, 0, pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512, address(arg1), msg.sender
                                                else:
                                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number:
                                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                                return 0, 
                                                                       pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number,
                                                                       pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512,
                                                                       address(arg1),
                                                                       msg.sender
                                    else:
                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 <= block.number:
                                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                            return 1, 0, pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512, address(arg1), msg.sender
                                                else:
                                                    if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= block.number:
                                                        if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_512:
                                                            if pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 >= pendingNumbers[address(arg1)].field_1024:
                                                                return 1, 
                                                                       pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512 - block.number,
                                                                       pendingNumbers[address(arg1)].field_1024 + pendingNumbers[address(arg1)].field_512,
                                                                       address(arg1),
                                                                       msg.sender
    revert
}



}
