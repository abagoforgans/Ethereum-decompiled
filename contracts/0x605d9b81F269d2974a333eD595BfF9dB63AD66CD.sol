contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
mapping of uint256 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint16 stor13;

function _fallback() payable {
    stor0 = 500000000 * 10^18
    stor5 = 10^11
    stor6 = 1
    stor7 = 0
    stor8 = 0
    stor9 = 1000000 * 10^18
    stor10 = 1
    stor12 = 10
    stor13 = 0
    require not msg.value
    stor2 = msg.sender
    stor3[address(msg.sender)] = stor0
    stor3[address(msg.sender)] = stor0
    stor11 = code.data[6483 len 32]
    return code.data[222 len 6261]
}



// =====================  Runtime code  =====================


const name = 'Linker Coin'

const decimalOfPrice = 10

const multiplier = 10^18

const decimals = 18

const symbol = 'LNC'

const multiplierOfPrice = 10^10


uint256 totalSupply;
mapping of uint8 stor1;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 lpAskPrice;
uint256 lpBidPrice;
uint256 lpAskVolume;
uint256 lpBidVolume;
uint256 lpMaxVolume;
uint256 edgePerPosition;
uint256 lpTargetPosition;
uint256 lpFeeBp;
uint8 isLpStart;
uint8 isBurn; offset 8
uint256 stor13; offset 8

function totalSupply() {
    return totalSupply
}

function lpBidVolume() {
    return lpBidVolume
}

function IsFreezedAccount(address arg1) {
    return bool(stor1[address(arg1)])
}

function isBurn() {
    return bool(isBurn)
}

function isLpStart() {
    return bool(isLpStart)
}

function lpBidPrice() {
    return lpBidPrice
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function lpTargetPosition() {
    return lpTargetPosition
}

function lpAskPrice() {
    return lpAskPrice
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor1[arg1])
}

function lpFeeBp() {
    return lpFeeBp
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function edgePerPosition() {
    return edgePerPosition
}

function lpMaxVolume() {
    return lpMaxVolume
}

function lpAskVolume() {
    return lpAskVolume
}

function _fallback() payable {
  stop
}

function setLpIsStart(bool arg1) {
    require owner == msg.sender
    isLpStart = uint8(arg1)
}

function setBurnStart(bool arg1) {
    require owner == msg.sender
    stor13 = Mask(248, 0, arg1)
}

function setLpFee(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= 100
    lpFeeBp = arg1
    emit SetLpFee(arg1);
}

function setEdgePerPosition(uint256 arg1) {
    require owner == msg.sender
    edgePerPosition = arg1
    emit SetEdgePerPosition(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function FreezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor1[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function setLPTargetPostion(uint256 arg1) {
    require owner == msg.sender
    require arg1 < totalSupply
    lpTargetPosition = arg1
    emit SetLPTargetPostion(arg1);
}

function transferEther(uint256 arg1) {
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
}

function setLpMaxVolume(uint256 arg1) {
    require owner == msg.sender
    require arg1 < 1000000 * 10^18
    lpMaxVolume = arg1
    if arg1 < lpBidVolume:
        lpBidVolume = lpMaxVolume
    if lpMaxVolume < lpAskVolume:
        lpAskVolume = lpMaxVolume
    emit SetLpMaxVolume(arg1);
}

function burn(uint256 arg1) {
    require owner == msg.sender
    if bool(isBurn) != 1:
        return 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function setPrices(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    require arg1 < arg2
    require arg3 <= lpMaxVolume
    require arg4 <= lpMaxVolume
    lpBidPrice = arg1
    lpAskPrice = arg2
    lpBidVolume = arg3
    lpAskVolume = arg4
    emit SetPrices(arg1, arg2, arg3, arg4);
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        return 0
    if stor1[address(msg.sender)]:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg2:
        return 0
    if stor1[address(arg1)]:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getLpBidPrice() {
    if lpTargetPosition >= balanceOf[stor2]:
        return lpBidPrice
    require lpTargetPosition <= balanceOf[stor2]
    if not balanceOf[stor2] - lpTargetPosition / 10^18:
        if edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 <= lpBidPrice:
            return (lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10))
    else:
        if balanceOf[stor2] - lpTargetPosition / 10^18:
            if edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / balanceOf[stor2] - lpTargetPosition / 10^18 == edgePerPosition:
                if edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 <= lpBidPrice:
                    return (lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10))
    revert
}

function getLpAskPrice() {
    if lpTargetPosition <= balanceOf[stor2]:
        return lpAskPrice
    require balanceOf[stor2] <= lpTargetPosition
    if not lpTargetPosition - balanceOf[stor2] / 10^18:
        if (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice:
            return ((edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice)
    else:
        if lpTargetPosition - balanceOf[stor2] / 10^18:
            if edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / lpTargetPosition - balanceOf[stor2] / 10^18 == edgePerPosition:
                if (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice:
                    return ((edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice)
    revert
}

function getLpIsWorking(int256 arg1) {
    if isLpStart:
        if lpAskVolume:
            if lpBidVolume:
                if lpTargetPosition >= balanceOf[stor2]:
                    if lpTargetPosition <= balanceOf[stor2]:
                        if lpAskPrice - lpBidPrice <= (lpAskPrice * arg1) + (lpBidPrice * arg1) / 2 / 10000:
                            return 1
                    else:
                        require balanceOf[stor2] <= lpTargetPosition
                        if lpTargetPosition - balanceOf[stor2] / 10^18:
                            require lpTargetPosition - balanceOf[stor2] / 10^18
                            require edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / lpTargetPosition - balanceOf[stor2] / 10^18 == edgePerPosition
                        require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice
                        if (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice - lpBidPrice <= (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10 * arg1) + (lpAskPrice * arg1) + (lpBidPrice * arg1) / 2 / 10000:
                            return 1
                else:
                    require lpTargetPosition <= balanceOf[stor2]
                    if balanceOf[stor2] - lpTargetPosition / 10^18:
                        require balanceOf[stor2] - lpTargetPosition / 10^18
                        require edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / balanceOf[stor2] - lpTargetPosition / 10^18 == edgePerPosition
                    require edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 <= lpBidPrice
                    if lpTargetPosition <= balanceOf[stor2]:
                        if lpAskPrice - lpBidPrice + (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) <= (lpAskPrice * arg1) + (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 2 / 10000:
                            return 1
                    else:
                        require balanceOf[stor2] <= lpTargetPosition
                        if lpTargetPosition - balanceOf[stor2] / 10^18:
                            require lpTargetPosition - balanceOf[stor2] / 10^18
                            require edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / lpTargetPosition - balanceOf[stor2] / 10^18 == edgePerPosition
                        require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice
                        if (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice - lpBidPrice + (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) <= (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10 * arg1) + (lpAskPrice * arg1) + (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 2 / 10000:
                            return 1
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function getAmountOfLinkerBuy(uint256 arg1) {
    require lpFeeBp <= 10000
    if lpTargetPosition <= balanceOf[stor2]:
        if 10^10 * arg1 / 10^10 == arg1:
            if lpAskPrice:
                if not 10^10 * arg1 / lpAskPrice:
                    return ((10000 * 10^10 * arg1 / lpAskPrice) - (lpFeeBp * 10^10 * arg1 / lpAskPrice) / 10000)
                if 10^10 * arg1 / lpAskPrice:
                    if (10000 * 10^10 * arg1 / lpAskPrice) - (lpFeeBp * 10^10 * arg1 / lpAskPrice) / 10^10 * arg1 / lpAskPrice == -lpFeeBp + 10000:
                        return ((10000 * 10^10 * arg1 / lpAskPrice) - (lpFeeBp * 10^10 * arg1 / lpAskPrice) / 10000)
    else:
        if balanceOf[stor2] <= lpTargetPosition:
            if not lpTargetPosition - balanceOf[stor2] / 10^18:
                if (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice:
                    if 10^10 * arg1 / 10^10 == arg1:
                        if (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice:
                            if not 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice:
                                return ((10000 * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000)
                            if 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice:
                                if (10000 * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice == -lpFeeBp + 10000:
                                    return ((10000 * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000)
            else:
                if lpTargetPosition - balanceOf[stor2] / 10^18:
                    if edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / lpTargetPosition - balanceOf[stor2] / 10^18 == edgePerPosition:
                        if (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice:
                            if 10^10 * arg1 / 10^10 == arg1:
                                if (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice:
                                    if not 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice:
                                        return ((10000 * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000)
                                    if 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice:
                                        if (10000 * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice == -lpFeeBp + 10000:
                                            return ((10000 * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * arg1 / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000)
    revert
}

function sell(uint256 arg1) {
    require isLpStart
    require lpAskVolume
    require lpBidVolume
    if lpTargetPosition >= balanceOf[stor2]:
        if lpTargetPosition <= balanceOf[stor2]:
            require lpAskPrice - lpBidPrice <= (500 * lpAskPrice) + (500 * lpBidPrice) / 2 / 10000
        else:
            require balanceOf[stor2] <= lpTargetPosition
            if lpTargetPosition - balanceOf[stor2] / 10^18:
                require lpTargetPosition - balanceOf[stor2] / 10^18
                require edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / lpTargetPosition - balanceOf[stor2] / 10^18 == edgePerPosition
            require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice
            require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice - lpBidPrice <= (500 * edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + (500 * lpAskPrice) + (500 * lpBidPrice) / 2 / 10000
    else:
        require lpTargetPosition <= balanceOf[stor2]
        if balanceOf[stor2] - lpTargetPosition / 10^18:
            require balanceOf[stor2] - lpTargetPosition / 10^18
            require edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / balanceOf[stor2] - lpTargetPosition / 10^18 == edgePerPosition
        require edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 <= lpBidPrice
        if lpTargetPosition <= balanceOf[stor2]:
            require lpAskPrice - lpBidPrice + (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) <= (500 * lpAskPrice) + (500 * lpBidPrice) - (500 * edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) / 2 / 10000
        else:
            require balanceOf[stor2] <= lpTargetPosition
            if lpTargetPosition - balanceOf[stor2] / 10^18:
                require lpTargetPosition - balanceOf[stor2] / 10^18
                require edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / lpTargetPosition - balanceOf[stor2] / 10^18 == edgePerPosition
            require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice
            require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice - lpBidPrice + (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) <= (500 * edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + (500 * lpAskPrice) + (500 * lpBidPrice) - (500 * edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) / 2 / 10000
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 + balanceOf[stor2] >= balanceOf[stor2]
    balanceOf[stor2] += arg1
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= lpBidVolume
    lpBidVolume -= arg1
    require lpFeeBp <= 10000
    if lpTargetPosition >= balanceOf[stor2]:
        if lpBidPrice:
            require lpBidPrice
            require arg1 * lpBidPrice / lpBidPrice == arg1
        if arg1 * lpBidPrice / 10^10:
            require arg1 * lpBidPrice / 10^10
            require (10000 * arg1 * lpBidPrice / 10^10) - (lpFeeBp * arg1 * lpBidPrice / 10^10) / arg1 * lpBidPrice / 10^10 == -lpFeeBp + 10000
        call msg.sender with:
           value (10000 * arg1 * lpBidPrice / 10^10) - (lpFeeBp * arg1 * lpBidPrice / 10^10) / 10000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(((10000 * arg1 * lpBidPrice / 10^10) - (lpFeeBp * arg1 * lpBidPrice / 10^10) / 10000), msg.sender, this.address);
        return ((10000 * arg1 * lpBidPrice / 10^10) - (lpFeeBp * arg1 * lpBidPrice / 10^10) / 10000)
    require lpTargetPosition <= balanceOf[stor2]
    if balanceOf[stor2] - lpTargetPosition / 10^18:
        require balanceOf[stor2] - lpTargetPosition / 10^18
        require edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / balanceOf[stor2] - lpTargetPosition / 10^18 == edgePerPosition
    require edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 <= lpBidPrice
    if lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10):
        require lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10)
        require (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) == arg1
    if (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10:
        require (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10
        require (10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10 == -lpFeeBp + 10000
    call msg.sender with:
       value (10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(((10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000), msg.sender, this.address);
    return ((10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000)
}

function buy() payable {
    require isLpStart
    require lpAskVolume
    require lpBidVolume
    if lpTargetPosition >= balanceOf[stor2]:
        if lpTargetPosition <= balanceOf[stor2]:
            require lpAskPrice - lpBidPrice <= (500 * lpAskPrice) + (500 * lpBidPrice) / 2 / 10000
        else:
            require balanceOf[stor2] <= lpTargetPosition
            if lpTargetPosition - balanceOf[stor2] / 10^18:
                require lpTargetPosition - balanceOf[stor2] / 10^18
                require edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / lpTargetPosition - balanceOf[stor2] / 10^18 == edgePerPosition
            require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice
            require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice - lpBidPrice <= (500 * edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + (500 * lpAskPrice) + (500 * lpBidPrice) / 2 / 10000
    else:
        require lpTargetPosition <= balanceOf[stor2]
        if balanceOf[stor2] - lpTargetPosition / 10^18:
            require balanceOf[stor2] - lpTargetPosition / 10^18
            require edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / balanceOf[stor2] - lpTargetPosition / 10^18 == edgePerPosition
        require edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 <= lpBidPrice
        if lpTargetPosition <= balanceOf[stor2]:
            require lpAskPrice - lpBidPrice + (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) <= (500 * lpAskPrice) + (500 * lpBidPrice) - (500 * edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) / 2 / 10000
        else:
            require balanceOf[stor2] <= lpTargetPosition
            if lpTargetPosition - balanceOf[stor2] / 10^18:
                require lpTargetPosition - balanceOf[stor2] / 10^18
                require edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / lpTargetPosition - balanceOf[stor2] / 10^18 == edgePerPosition
            require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice
            require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice - lpBidPrice + (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) <= (500 * edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + (500 * lpAskPrice) + (500 * lpBidPrice) - (500 * edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) / 2 / 10000
    require lpFeeBp <= 10000
    if lpTargetPosition <= balanceOf[stor2]:
        require 10^10 * msg.value / 10^10 == msg.value
        require lpAskPrice
        if 10^10 * msg.value / lpAskPrice:
            require 10^10 * msg.value / lpAskPrice
            require (10000 * 10^10 * msg.value / lpAskPrice) - (lpFeeBp * 10^10 * msg.value / lpAskPrice) / 10^10 * msg.value / lpAskPrice == -lpFeeBp + 10000
        require balanceOf[stor2] >= (10000 * 10^10 * msg.value / lpAskPrice) - (lpFeeBp * 10^10 * msg.value / lpAskPrice) / 10000
        require ((10000 * 10^10 * msg.value / lpAskPrice) - (lpFeeBp * 10^10 * msg.value / lpAskPrice) / 10000) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += (10000 * 10^10 * msg.value / lpAskPrice) - (lpFeeBp * 10^10 * msg.value / lpAskPrice) / 10000
        require (10000 * 10^10 * msg.value / lpAskPrice) - (lpFeeBp * 10^10 * msg.value / lpAskPrice) / 10000 <= balanceOf[stor2]
        balanceOf[stor2] -= (10000 * 10^10 * msg.value / lpAskPrice) - (lpFeeBp * 10^10 * msg.value / lpAskPrice) / 10000
        require (10000 * 10^10 * msg.value / lpAskPrice) - (lpFeeBp * 10^10 * msg.value / lpAskPrice) / 10000 <= lpAskVolume
        lpAskVolume -= (10000 * 10^10 * msg.value / lpAskPrice) - (lpFeeBp * 10^10 * msg.value / lpAskPrice) / 10000
        emit Transfer(((10000 * 10^10 * msg.value / lpAskPrice) - (lpFeeBp * 10^10 * msg.value / lpAskPrice) / 10000), owner, msg.sender);
        return ((10000 * 10^10 * msg.value / lpAskPrice) - (lpFeeBp * 10^10 * msg.value / lpAskPrice) / 10000)
    require balanceOf[stor2] <= lpTargetPosition
    if lpTargetPosition - balanceOf[stor2] / 10^18:
        require lpTargetPosition - balanceOf[stor2] / 10^18
        require edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / lpTargetPosition - balanceOf[stor2] / 10^18 == edgePerPosition
    require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice >= lpAskPrice
    require 10^10 * msg.value / 10^10 == msg.value
    require (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice
    if 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice:
        require 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice
        require (10000 * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice == -lpFeeBp + 10000
    require balanceOf[stor2] >= (10000 * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000
    require ((10000 * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += (10000 * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000
    require (10000 * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000 <= balanceOf[stor2]
    balanceOf[stor2] -= (10000 * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000
    require (10000 * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000 <= lpAskVolume
    lpAskVolume -= (10000 * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000
    emit Transfer(((10000 * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000), owner, msg.sender);
    return ((10000 * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) - (lpFeeBp * 10^10 * msg.value / (edgePerPosition * lpTargetPosition - balanceOf[stor2] / 10^18 / 10^10) + lpAskPrice) / 10000)
}

function getAmountOfEtherSell(uint256 arg1) {
    require lpFeeBp <= 10000
    if lpTargetPosition >= balanceOf[stor2]:
        if not lpBidPrice:
            if not arg1 * lpBidPrice / 10^10:
                return ((10000 * arg1 * lpBidPrice / 10^10) - (lpFeeBp * arg1 * lpBidPrice / 10^10) / 10000)
            if arg1 * lpBidPrice / 10^10:
                if (10000 * arg1 * lpBidPrice / 10^10) - (lpFeeBp * arg1 * lpBidPrice / 10^10) / arg1 * lpBidPrice / 10^10 == -lpFeeBp + 10000:
                    return ((10000 * arg1 * lpBidPrice / 10^10) - (lpFeeBp * arg1 * lpBidPrice / 10^10) / 10000)
        else:
            if lpBidPrice:
                if arg1 * lpBidPrice / lpBidPrice == arg1:
                    if not arg1 * lpBidPrice / 10^10:
                        return ((10000 * arg1 * lpBidPrice / 10^10) - (lpFeeBp * arg1 * lpBidPrice / 10^10) / 10000)
                    if arg1 * lpBidPrice / 10^10:
                        if (10000 * arg1 * lpBidPrice / 10^10) - (lpFeeBp * arg1 * lpBidPrice / 10^10) / arg1 * lpBidPrice / 10^10 == -lpFeeBp + 10000:
                            return ((10000 * arg1 * lpBidPrice / 10^10) - (lpFeeBp * arg1 * lpBidPrice / 10^10) / 10000)
    else:
        if lpTargetPosition <= balanceOf[stor2]:
            if not balanceOf[stor2] - lpTargetPosition / 10^18:
                if edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 <= lpBidPrice:
                    if not lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10):
                        if not (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10:
                            return ((10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000)
                        if (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10:
                            if (10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10 == -lpFeeBp + 10000:
                                return ((10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000)
                    else:
                        if lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10):
                            if (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) == arg1:
                                if not (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10:
                                    return ((10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000)
                                if (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10:
                                    if (10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10 == -lpFeeBp + 10000:
                                        return ((10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000)
            else:
                if balanceOf[stor2] - lpTargetPosition / 10^18:
                    if edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / balanceOf[stor2] - lpTargetPosition / 10^18 == edgePerPosition:
                        if edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 <= lpBidPrice:
                            if not lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10):
                                if not (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10:
                                    return ((10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000)
                                if (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10:
                                    if (10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10 == -lpFeeBp + 10000:
                                        return ((10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000)
                            else:
                                if lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10):
                                    if (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / lpBidPrice - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10) == arg1:
                                        if not (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10:
                                            return ((10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000)
                                        if (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10:
                                            if (10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10 == -lpFeeBp + 10000:
                                                return ((10000 * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) - (lpFeeBp * (lpBidPrice * arg1) - (edgePerPosition * balanceOf[stor2] - lpTargetPosition / 10^18 / 10^10 * arg1) / 10^10) / 10000)
    revert
}



}
