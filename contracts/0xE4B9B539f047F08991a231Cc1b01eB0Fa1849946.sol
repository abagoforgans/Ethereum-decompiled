contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor4 = 5 * 10^12
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[971 len 32]
    stor2 = code.data[1003 len 32]
    stor3 = code.data[1035 len 32]
    return code.data[121 len 850]
}



// =====================  Runtime code  =====================


const isPricingStrategy = 1

const isSane(address arg1) = 1


address owner;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function getCurrentRound() {
    if block.timestamp < stor2:
        return 0
    if block.timestamp >= stor3:
        return 2
    return 1
}

function tokensToWei(uint256 arg1) {
    if not arg1:
        return (stor4 * arg1)
    require stor4 * arg1 / arg1 == stor4
    return (stor4 * arg1)
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    if arg1 < 10^16:
        return 0
    if block.timestamp < stor2:
        if stor4 > 0:
            if stor4:
                if arg1 == (stor4 * arg1 / stor4) + (arg1 % stor4):
                    if arg1 / stor4 == (100 * arg1 / stor4 / 100) + (arg1 / stor4 % 100):
                        if not arg1 / stor4 / 100:
                            return (115 * arg1 / stor4 / 100)
                        if 115 * arg1 / stor4 / 100 / arg1 / stor4 / 100 == 115:
                            return (115 * arg1 / stor4 / 100)
    else:
        if block.timestamp < stor2:
            require stor4
            return (arg1 / stor4)
        if block.timestamp >= stor3:
            require stor4
            return (arg1 / stor4)
        if stor4 > 0:
            if stor4:
                if arg1 == (stor4 * arg1 / stor4) + (arg1 % stor4):
                    if arg1 / stor4 == (100 * arg1 / stor4 / 100) + (arg1 / stor4 % 100):
                        if not arg1 / stor4 / 100:
                            return (110 * arg1 / stor4 / 100)
                        if 110 * arg1 / stor4 / 100 / arg1 / stor4 / 100 == 110:
                            return (110 * arg1 / stor4 / 100)
    revert 
}



}
