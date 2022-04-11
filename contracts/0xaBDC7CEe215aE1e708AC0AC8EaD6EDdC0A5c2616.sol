contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    stor3 = block.timestamp
    stor4 = code.data[1507 len 32]
    stor5 = code.data[1539 len 32]
    return code.data[107 len 1400]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
uint256 lastUpdate;
uint256 decayRate;
uint256 omegaPerEther;
uint256 largestRetro;
uint256 largestPro;

function omegaPerEther() {
    return omegaPerEther
}

function largestRetro() {
    return largestRetro
}

function largestPro() {
    return largestPro
}

function owner() {
    return owner
}

function decayRate() {
    return decayRate
}

function lastUpdate() {
    return lastUpdate
}

function _fallback() payable {
    revert
}

function deltaTime() {
    return (block.timestamp - lastUpdate)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawAll() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getCurrentVelocity() {
    if 0 == decayRate:
        return stor1
    if stor1:
        if stor1 >= 0:
            if stor1 <= 0:
                if stor1 >= 0:
                    return (stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate))
                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                    return (stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate))
            else:
                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) >= 0:
                    if stor1 >= 0:
                        return (stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate))
                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                        return (stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate))
        else:
            if stor1 <= 0:
                if stor1 >= 0:
                    return (stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate))
                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                    return (stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate))
            else:
                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) >= 0:
                    if stor1 >= 0:
                        return (stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate))
                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                        return (stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate))
        return 0
    else:
        return 0
}

function getCurrentDisplacement() {
    if 0 == decayRate:
        return (stor2 + (block.timestamp * stor1) - (lastUpdate * stor1))
    require decayRate
    if stor1 / decayRate >= 0:
        if block.timestamp - lastUpdate <= stor1 / decayRate:
            if 0 == decayRate:
                return (stor2 + ((block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2))
            if stor1:
                if stor1 >= 0:
                    if stor1 <= 0:
                        if stor1 >= 0:
                            return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2))
                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                            return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2))
                    else:
                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) >= 0:
                            if stor1 >= 0:
                                return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2))
                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2))
                else:
                    if stor1 <= 0:
                        if stor1 >= 0:
                            return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2))
                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                            return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2))
                    else:
                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) >= 0:
                            if stor1 >= 0:
                                return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2))
                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2))
            return (stor2 + ((block.timestamp * stor1) - (lastUpdate * stor1) / 2))
        if 0 == decayRate:
            return (stor2 + (2 * stor1 * stor1 / decayRate / 2))
        if stor1:
            if stor1 >= 0:
                if stor1 <= 0:
                    if stor1 >= 0:
                        return (stor2 + ((2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2))
                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                        return (stor2 + ((2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2))
                else:
                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) >= 0:
                        if stor1 >= 0:
                            return (stor2 + ((2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2))
                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                            return (stor2 + ((2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2))
            else:
                if stor1 <= 0:
                    if stor1 >= 0:
                        return (stor2 + ((2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2))
                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                        return (stor2 + ((2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2))
                else:
                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) >= 0:
                        if stor1 >= 0:
                            return (stor2 + ((2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2))
                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                            return (stor2 + ((2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2))
        return (stor2 + (stor1 * stor1 / decayRate / 2))
    if block.timestamp - lastUpdate <= -stor1 / decayRate:
        if 0 == decayRate:
            return (stor2 + ((block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2))
        if stor1:
            if stor1 >= 0:
                if stor1 <= 0:
                    if stor1 >= 0:
                        return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2))
                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                        return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2))
                else:
                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) >= 0:
                        if stor1 >= 0:
                            return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2))
                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                            return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2))
            else:
                if stor1 <= 0:
                    if stor1 >= 0:
                        return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2))
                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                        return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2))
                else:
                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) >= 0:
                        if stor1 >= 0:
                            return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2))
                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                            return (stor2 + ((2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2))
        return (stor2 + ((block.timestamp * stor1) - (lastUpdate * stor1) / 2))
    if 0 == decayRate:
        return (stor2 + (-1 * 2 * stor1 * stor1 / decayRate / 2))
    if stor1:
        if stor1 >= 0:
            if stor1 <= 0:
                if stor1 >= 0:
                    return (stor2 + ((-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2))
                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                    return (stor2 + ((-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2))
            else:
                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) >= 0:
                    if stor1 >= 0:
                        return (stor2 + ((-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2))
                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                        return (stor2 + ((-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2))
        else:
            if stor1 <= 0:
                if stor1 >= 0:
                    return (stor2 + ((-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2))
                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                    return (stor2 + ((-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2))
            else:
                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) >= 0:
                    if stor1 >= 0:
                        return (stor2 + ((-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2))
                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                        return (stor2 + ((-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2))
    return (stor2 + (-1 * stor1 * stor1 / decayRate / 2))
}

function spin(int256 arg1) payable {
    if arg1 != -1:
        require 1 == arg1
    if 0 == decayRate:
        stor1 += arg1 * msg.value * omegaPerEther / 10^18
        stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
        if -stor1 - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
            largestRetro = -stor1
        else:
            if stor1 > largestPro:
                largestPro = stor1
    else:
        if not stor1:
            if 0 == decayRate:
                stor1 = arg1 * msg.value * omegaPerEther / 10^18
                stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                    largestRetro = -stor1
                else:
                    if stor1 > largestPro:
                        largestPro = stor1
            else:
                require decayRate
                stor1 = arg1 * msg.value * omegaPerEther / 10^18
                if stor1 / decayRate >= 0:
                    if block.timestamp - lastUpdate <= stor1 / decayRate:
                        if 0 == decayRate:
                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                largestRetro = -stor1
                            else:
                                if stor1 > largestPro:
                                    largestPro = stor1
                        else:
                            if not stor1:
                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                    largestRetro = -stor1
                                else:
                                    if stor1 > largestPro:
                                        largestPro = stor1
                            else:
                                if stor1 >= 0:
                                    if stor1 <= 0:
                                        if stor1 >= 0:
                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                            else:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                    else:
                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                else:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                else:
                                    if stor1 <= 0:
                                        if stor1 >= 0:
                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                            else:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                    else:
                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                else:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                    else:
                        if 0 == decayRate:
                            stor2 += 2 * stor1 * stor1 / decayRate / 2
                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                largestRetro = -stor1
                            else:
                                if stor1 > largestPro:
                                    largestPro = stor1
                        else:
                            if not stor1:
                                stor2 += stor1 * stor1 / decayRate / 2
                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                    largestRetro = -stor1
                                else:
                                    if stor1 > largestPro:
                                        largestPro = stor1
                            else:
                                if stor1 >= 0:
                                    if stor1 <= 0:
                                        if stor1 >= 0:
                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                            else:
                                                stor2 += stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                    else:
                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                            stor2 += stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                else:
                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                else:
                                    if stor1 <= 0:
                                        if stor1 >= 0:
                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                            else:
                                                stor2 += stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                    else:
                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                            stor2 += stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                else:
                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                else:
                    if block.timestamp - lastUpdate <= -stor1 / decayRate:
                        if 0 == decayRate:
                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                largestRetro = -stor1
                            else:
                                if stor1 > largestPro:
                                    largestPro = stor1
                        else:
                            if not stor1:
                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                    largestRetro = -stor1
                                else:
                                    if stor1 > largestPro:
                                        largestPro = stor1
                            else:
                                if stor1 >= 0:
                                    if stor1 <= 0:
                                        if stor1 >= 0:
                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                            else:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                    else:
                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                else:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                else:
                                    if stor1 <= 0:
                                        if stor1 >= 0:
                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                            else:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                    else:
                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                else:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                    else:
                        if 0 == decayRate:
                            stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                largestRetro = -stor1
                            else:
                                if stor1 > largestPro:
                                    largestPro = stor1
                        else:
                            if not stor1:
                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                    largestRetro = -stor1
                                else:
                                    if stor1 > largestPro:
                                        largestPro = stor1
                            else:
                                if stor1 >= 0:
                                    if stor1 <= 0:
                                        if stor1 >= 0:
                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                            else:
                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                    else:
                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                else:
                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                else:
                                    if stor1 <= 0:
                                        if stor1 >= 0:
                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                            else:
                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                    else:
                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                else:
                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
        else:
            if stor1 >= 0:
                if stor1 <= 0:
                    if stor1 >= 0:
                        if 0 == decayRate:
                            stor1 = stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                            stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                largestRetro = -stor1
                            else:
                                if stor1 > largestPro:
                                    largestPro = stor1
                        else:
                            require decayRate
                            stor1 = stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                            if stor1 / decayRate >= 0:
                                if block.timestamp - lastUpdate <= stor1 / decayRate:
                                    if 0 == decayRate:
                                        stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                else:
                                    if 0 == decayRate:
                                        stor2 += 2 * stor1 * stor1 / decayRate / 2
                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += stor1 * stor1 / decayRate / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                            else:
                                if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                    if 0 == decayRate:
                                        stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                else:
                                    if 0 == decayRate:
                                        stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                    else:
                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                            if 0 == decayRate:
                                stor1 = stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                    largestRetro = -stor1
                                else:
                                    if stor1 > largestPro:
                                        largestPro = stor1
                            else:
                                require decayRate
                                stor1 = stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                if stor1 / decayRate >= 0:
                                    if block.timestamp - lastUpdate <= stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += 2 * stor1 * stor1 / decayRate / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += stor1 * stor1 / decayRate / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                else:
                                    if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                        else:
                            if 0 == decayRate:
                                stor1 = arg1 * msg.value * omegaPerEther / 10^18
                                stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                    largestRetro = -stor1
                                else:
                                    if stor1 > largestPro:
                                        largestPro = stor1
                            else:
                                require decayRate
                                stor1 = arg1 * msg.value * omegaPerEther / 10^18
                                if stor1 / decayRate >= 0:
                                    if block.timestamp - lastUpdate <= stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += 2 * stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                else:
                                    if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                else:
                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                        if 0 == decayRate:
                            stor1 = arg1 * msg.value * omegaPerEther / 10^18
                            stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                largestRetro = -stor1
                            else:
                                if stor1 > largestPro:
                                    largestPro = stor1
                        else:
                            require decayRate
                            stor1 = arg1 * msg.value * omegaPerEther / 10^18
                            if stor1 / decayRate >= 0:
                                if block.timestamp - lastUpdate <= stor1 / decayRate:
                                    if 0 == decayRate:
                                        stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                else:
                                    if 0 == decayRate:
                                        stor2 += 2 * stor1 * stor1 / decayRate / 2
                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                            else:
                                if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                    if 0 == decayRate:
                                        stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                else:
                                    if 0 == decayRate:
                                        stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                    else:
                        if stor1 >= 0:
                            if 0 == decayRate:
                                stor1 = stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                    largestRetro = -stor1
                                else:
                                    if stor1 > largestPro:
                                        largestPro = stor1
                            else:
                                require decayRate
                                stor1 = stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                if stor1 / decayRate >= 0:
                                    if block.timestamp - lastUpdate <= stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += 2 * stor1 * stor1 / decayRate / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += stor1 * stor1 / decayRate / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                else:
                                    if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                        else:
                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                if 0 == decayRate:
                                    stor1 = stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                    stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                        largestRetro = -stor1
                                    else:
                                        if stor1 > largestPro:
                                            largestPro = stor1
                                else:
                                    require decayRate
                                    stor1 = stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                    if stor1 / decayRate >= 0:
                                        if block.timestamp - lastUpdate <= stor1 / decayRate:
                                            if 0 == decayRate:
                                                stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                        else:
                                            if 0 == decayRate:
                                                stor2 += 2 * stor1 * stor1 / decayRate / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                    else:
                                        if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                            if 0 == decayRate:
                                                stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                        else:
                                            if 0 == decayRate:
                                                stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                    if -stor1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * decayRate) - (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                            else:
                                if 0 == decayRate:
                                    stor1 = arg1 * msg.value * omegaPerEther / 10^18
                                    stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                        largestRetro = -stor1
                                    else:
                                        if stor1 > largestPro:
                                            largestPro = stor1
                                else:
                                    require decayRate
                                    stor1 = arg1 * msg.value * omegaPerEther / 10^18
                                    if stor1 / decayRate >= 0:
                                        if block.timestamp - lastUpdate <= stor1 / decayRate:
                                            if 0 == decayRate:
                                                stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                        else:
                                            if 0 == decayRate:
                                                stor2 += 2 * stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                    else:
                                        if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                            if 0 == decayRate:
                                                stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                        else:
                                            if 0 == decayRate:
                                                stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
            else:
                if stor1 <= 0:
                    if stor1 >= 0:
                        if 0 == decayRate:
                            stor1 = stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                            stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                largestRetro = -stor1
                            else:
                                if stor1 > largestPro:
                                    largestPro = stor1
                        else:
                            require decayRate
                            stor1 = stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                            if stor1 / decayRate >= 0:
                                if block.timestamp - lastUpdate <= stor1 / decayRate:
                                    if 0 == decayRate:
                                        stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                else:
                                    if 0 == decayRate:
                                        stor2 += 2 * stor1 * stor1 / decayRate / 2
                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += stor1 * stor1 / decayRate / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                            else:
                                if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                    if 0 == decayRate:
                                        stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                else:
                                    if 0 == decayRate:
                                        stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                    else:
                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                            if 0 == decayRate:
                                stor1 = stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                    largestRetro = -stor1
                                else:
                                    if stor1 > largestPro:
                                        largestPro = stor1
                            else:
                                require decayRate
                                stor1 = stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                if stor1 / decayRate >= 0:
                                    if block.timestamp - lastUpdate <= stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += 2 * stor1 * stor1 / decayRate / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += stor1 * stor1 / decayRate / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                else:
                                    if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                        else:
                            if 0 == decayRate:
                                stor1 = arg1 * msg.value * omegaPerEther / 10^18
                                stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                    largestRetro = -stor1
                                else:
                                    if stor1 > largestPro:
                                        largestPro = stor1
                            else:
                                require decayRate
                                stor1 = arg1 * msg.value * omegaPerEther / 10^18
                                if stor1 / decayRate >= 0:
                                    if block.timestamp - lastUpdate <= stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += 2 * stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                else:
                                    if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                else:
                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                        if 0 == decayRate:
                            stor1 = arg1 * msg.value * omegaPerEther / 10^18
                            stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                largestRetro = -stor1
                            else:
                                if stor1 > largestPro:
                                    largestPro = stor1
                        else:
                            require decayRate
                            stor1 = arg1 * msg.value * omegaPerEther / 10^18
                            if stor1 / decayRate >= 0:
                                if block.timestamp - lastUpdate <= stor1 / decayRate:
                                    if 0 == decayRate:
                                        stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                else:
                                    if 0 == decayRate:
                                        stor2 += 2 * stor1 * stor1 / decayRate / 2
                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                            else:
                                if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                    if 0 == decayRate:
                                        stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                        else:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                else:
                                    if 0 == decayRate:
                                        stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                            largestRetro = -stor1
                                        else:
                                            if stor1 > largestPro:
                                                largestPro = stor1
                                    else:
                                        if not stor1:
                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if stor1 >= 0:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                            else:
                                                if stor1 <= 0:
                                                    if stor1 >= 0:
                                                        stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                        else:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                else:
                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                        if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                            largestRetro = -stor1
                                                        else:
                                                            if stor1 > largestPro:
                                                                largestPro = stor1
                                                    else:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                    else:
                        if stor1 >= 0:
                            if 0 == decayRate:
                                stor1 = stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                    largestRetro = -stor1
                                else:
                                    if stor1 > largestPro:
                                        largestPro = stor1
                            else:
                                require decayRate
                                stor1 = stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                if stor1 / decayRate >= 0:
                                    if block.timestamp - lastUpdate <= stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += 2 * stor1 * stor1 / decayRate / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += stor1 * stor1 / decayRate / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                else:
                                    if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                        if 0 == decayRate:
                                            stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                            else:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                    else:
                                        if 0 == decayRate:
                                            stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                largestRetro = -stor1
                                            else:
                                                if stor1 > largestPro:
                                                    largestPro = stor1
                                        else:
                                            if not stor1:
                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if stor1 >= 0:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                else:
                                                    if stor1 <= 0:
                                                        if stor1 >= 0:
                                                            stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                            else:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                    else:
                                                        if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                            stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                            if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                largestRetro = -stor1
                                                            else:
                                                                if stor1 > largestPro:
                                                                    largestPro = stor1
                                                        else:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                        else:
                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                if 0 == decayRate:
                                    stor1 = stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                    stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                        largestRetro = -stor1
                                    else:
                                        if stor1 > largestPro:
                                            largestPro = stor1
                                else:
                                    require decayRate
                                    stor1 = stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) + (arg1 * msg.value * omegaPerEther / 10^18)
                                    if stor1 / decayRate >= 0:
                                        if block.timestamp - lastUpdate <= stor1 / decayRate:
                                            if 0 == decayRate:
                                                stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                        else:
                                            if 0 == decayRate:
                                                stor2 += 2 * stor1 * stor1 / decayRate / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                    else:
                                        if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                            if 0 == decayRate:
                                                stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                        else:
                                            if 0 == decayRate:
                                                stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                    if -stor1 - (block.timestamp * decayRate) + (lastUpdate * decayRate) - (arg1 * msg.value * omegaPerEther / 10^18) > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                            else:
                                if 0 == decayRate:
                                    stor1 = arg1 * msg.value * omegaPerEther / 10^18
                                    stor2 = stor2 + (block.timestamp * stor1) - (lastUpdate * stor1)
                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                        largestRetro = -stor1
                                    else:
                                        if stor1 > largestPro:
                                            largestPro = stor1
                                else:
                                    require decayRate
                                    stor1 = arg1 * msg.value * omegaPerEther / 10^18
                                    if stor1 / decayRate >= 0:
                                        if block.timestamp - lastUpdate <= stor1 / decayRate:
                                            if 0 == decayRate:
                                                stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                        else:
                                            if 0 == decayRate:
                                                stor2 += 2 * stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * stor1 * stor1 / decayRate) + (block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += stor1 * stor1 / decayRate / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                    else:
                                        if block.timestamp - lastUpdate <= -stor1 / decayRate:
                                            if 0 == decayRate:
                                                stor2 += (block.timestamp * 2 * stor1) - (lastUpdate * 2 * stor1) / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) - (block.timestamp * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.timestamp * lastUpdate * decayRate) - (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                else:
                                                                    stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (2 * block.timestamp * stor1) + (2 * -1 * lastUpdate * stor1) + (block.timestamp * block.timestamp * decayRate) - (lastUpdate * block.timestamp * decayRate) - (block.timestamp * lastUpdate * decayRate) + (lastUpdate * lastUpdate * decayRate) / 2
                                                                    else:
                                                                        stor2 += (block.timestamp * stor1) - (lastUpdate * stor1) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                        else:
                                            if 0 == decayRate:
                                                stor2 += -1 * 2 * stor1 * stor1 / decayRate / 2
                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                    largestRetro = -stor1
                                                else:
                                                    if stor1 > largestPro:
                                                        largestPro = stor1
                                            else:
                                                if not stor1:
                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                        largestRetro = -stor1
                                                    else:
                                                        if stor1 > largestPro:
                                                            largestPro = stor1
                                                else:
                                                    if stor1 >= 0:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) < 0:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 - (block.timestamp * decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate) <= 0:
                                                                        stor2 += (-2 * stor1 * stor1 / decayRate) + (0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0000000000000000000000000000000000000000000000000000000000000001 * block.timestamp * decayRate * stor1 / decayRate) - (lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                    else:
                                                        if stor1 <= 0:
                                                            if stor1 >= 0:
                                                                stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                else:
                                                                    stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                        else:
                                                            if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) < 0:
                                                                stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                    largestRetro = -stor1
                                                                else:
                                                                    if stor1 > largestPro:
                                                                        largestPro = stor1
                                                            else:
                                                                if stor1 >= 0:
                                                                    stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
                                                                else:
                                                                    if stor1 + (block.timestamp * decayRate) - (lastUpdate * decayRate) <= 0:
                                                                        stor2 += (-2 * stor1 * stor1 / decayRate) - (block.timestamp * decayRate * stor1 / decayRate) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lastUpdate * decayRate * stor1 / decayRate) / 2
                                                                    else:
                                                                        stor2 += -1 * stor1 * stor1 / decayRate / 2
                                                                    if -arg1 * msg.value * omegaPerEther / 10^18 > largestRetro:
                                                                        largestRetro = -stor1
                                                                    else:
                                                                        if stor1 > largestPro:
                                                                            largestPro = stor1
    emit Spin(msg.value, msg.sender, arg1);
    lastUpdate = block.timestamp
}



}
