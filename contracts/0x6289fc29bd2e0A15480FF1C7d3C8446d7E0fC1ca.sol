contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
address stor2;
uint256 sub_85559977;
address evilMortyAddress;
uint256 sub_4894e46d;
uint256 sub_312d03d5;
uint256 roundEndTimestamp;
uint256 sub_c14ac0de;
uint256 sub_c243213e;
uint256 price;
uint256 minPrice;
uint256 sub_23eaf0e4;
uint256 sub_4fca9851;
uint256 sub_602de1ee;
uint256 sub_90cd0e90;
uint256 sub_0e3aeff9;
uint256 minBuyAmount;
uint256 maxBuyAmount;
uint256 sub_0a68450e;
uint256 roundNumber;
uint8 sub_f222793a;

function sub_0a68450e(?) {
    return sub_0a68450e
}

function getRoundNumber() {
    return roundNumber
}

function sub_0e3aeff9(?) {
    return sub_0e3aeff9
}

function sub_23eaf0e4(?) {
    return sub_23eaf0e4
}

function sub_312d03d5(?) {
    return sub_312d03d5
}

function sub_4894e46d(?) {
    return sub_4894e46d
}

function sub_4fca9851(?) {
    return sub_4fca9851
}

function getMaxBuyAmount() {
    return maxBuyAmount
}

function sub_602de1ee(?) {
    return sub_602de1ee
}

function getEvilMortyAddress() {
    return evilMortyAddress
}

function sub_85559977(?) {
    return sub_85559977
}

function owner() {
    return owner
}

function sub_90cd0e90(?) {
    return sub_90cd0e90
}

function getPrice() {
    return price
}

function getRoundEndTimestamp() {
    return roundEndTimestamp
}

function sub_c14ac0de(?) {
    return sub_c14ac0de
}

function sub_c243213e(?) {
    return sub_c243213e
}

function getMinBuyAmount() {
    return minBuyAmount
}

function getMinPrice() {
    return minPrice
}

function sub_f222793a(?) {
    return bool(sub_f222793a)
}

function _fallback() payable {
  stop
}

function claimOwnership() {
    require msg.sender == stor2
    owner = stor2
    return 1
}

function sub_4f2b39a2(?) {
    require msg.sender == owner
    sub_85559977 = arg1
    return 1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == evilMortyAddress
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    emit 0xf240f0f6: price, arg1
    price = arg1
    return 1
}

function upgradeEvilMorty(address arg1) {
    require msg.sender == owner
    if ext_code.size(arg1):
        evilMortyAddress = arg1
}

function sub_0abc0e51(?) {
    require msg.sender == owner
    emit 0xf2285d8d: sub_0e3aeff9, arg1
    sub_0e3aeff9 = arg1
    return 1
}

function sub_9e46e1f0(?) {
    require msg.sender == owner
    emit 0xc5edd883: sub_602de1ee, arg1
    sub_602de1ee = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isSuperContract(address arg1) {
    if not ext_code.size(arg1):
        return 0
    if stor1[address(arg1)] != 1:
        return 0
    return 1
}

function addContractAddress(address arg1) {
    require msg.sender == owner
    if not ext_code.size(arg1):
        return 0
    stor1[address(arg1)] = 1
    return 1
}

function removeContractAddress(address arg1) {
    require msg.sender == owner
    if not ext_code.size(arg1):
        return 0
    stor1[address(arg1)] = 0
    return 1
}

function sub_746416ec(?) {
    if sub_c14ac0de > maxBuyAmount:
        return maxBuyAmount
    if sub_c14ac0de >= minBuyAmount:
        return sub_c14ac0de
    return minBuyAmount
}

function setMinBuyAmount(uint256 arg1) {
    require msg.sender == owner
    require arg1 < maxBuyAmount
    emit 0x3cd8b598: minBuyAmount, arg1
    minBuyAmount = arg1
    return 1
}

function setMaxBuyAmount(uint256 arg1) {
    require msg.sender == owner
    require arg1 > minBuyAmount
    emit 0x1b616178: maxBuyAmount, arg1
    maxBuyAmount = arg1
    return 1
}

function setMinPrice(uint256 arg1) {
    require msg.sender == owner
    emit 0xd8565536: minPrice, arg1
    minPrice = arg1
    if price < minPrice:
        price = minPrice
    return 1
}

function sub_1b6c7a91(?) {
    require msg.sender == owner
    sub_90cd0e90 = 30000 * 10^18
    sub_c14ac0de = sub_90cd0e90
    maxBuyAmount = sub_90cd0e90
    sub_23eaf0e4 = 3
    sub_4fca9851 = 3
}

function sub_76d24f4b(?) {
    require msg.sender == owner
    sub_90cd0e90 = 300000 * 10^18
    sub_c14ac0de = sub_90cd0e90
    maxBuyAmount = sub_90cd0e90
    sub_23eaf0e4 = 1
    sub_4fca9851 = 2
}

function sub_20fcdcee(?) {
    require msg.sender == owner
    emit 0x30f773c8: sub_23eaf0e4, arg1
    emit 0xc5edd883: sub_602de1ee, arg2
    sub_23eaf0e4 = arg1
    sub_602de1ee = arg2
    return 1
}

function sub_45b487ba(?) {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    sub_f222793a = 0
    emit 0xb5665379 
    return 1
}

function sub_a6d1b5ac(?) {
    require msg.sender == owner
    emit 0x53578050: sub_4fca9851, arg1
    emit 0xc5edd883: sub_602de1ee, arg2
    sub_4fca9851 = arg1
    sub_602de1ee = arg2
    return 1
}

function sub_f5168f10(?) {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    sub_f222793a = 1
    emit 0xcabca855 
    return 1
}

function sub_ea97a64f(?) {
    require sub_4894e46d <= arg1
    require sub_0a68450e
    require (arg1 - sub_4894e46d / sub_0a68450e) + 1 >= arg1 - sub_4894e46d / sub_0a68450e
    return ((arg1 - sub_4894e46d / sub_0a68450e) + 1)
}

function sub_2d1d0960(?) {
    require arg2 <= arg1
    if not arg1 - arg2:
        return 0
    require arg1 - arg2
    require (arg1 * price) - (arg2 * price) / arg1 - arg2 == price
    return ((arg1 * price) - (arg2 * price) / 10^18)
}

function sub_9df4c7c1(?) {
    if not arg1:
        if price:
            return (0 / price)
    else:
        if arg1:
            if 10^18 * arg1 / arg1 == 10^18:
                if price:
                    return (10^18 * arg1 / price)
    revert
}

function sub_de27b0a1(?) {
    require msg.sender == owner
    emit 0x7fb98fea: sub_90cd0e90, arg1
    emit 0xf2285d8d: sub_0e3aeff9, arg2
    sub_90cd0e90 = arg1
    sub_c14ac0de = sub_90cd0e90
    sub_0e3aeff9 = arg2
    if maxBuyAmount > sub_90cd0e90:
        maxBuyAmount = sub_90cd0e90
    return 1
}

function getTotalAvailable() {
    require ext_code.size(evilMortyAddress)
    call evilMortyAddress.0xcf20ac40 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw() {
    require msg.sender == owner
    emit Withdraw(eth.balance(this.address), msg.sender);
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a9528bbf(?) {
    require msg.sender == owner
    require sub_4894e46d <= block.number
    require sub_0a68450e
    require (block.number - sub_4894e46d / sub_0a68450e) + 1 >= block.number - sub_4894e46d / sub_0a68450e
    roundNumber = (block.number - sub_4894e46d / sub_0a68450e) + 1
    if not roundNumber:
        require sub_4894e46d >= sub_4894e46d
        roundEndTimestamp = sub_4894e46d
    else:
        require roundNumber
        require roundNumber * sub_0a68450e / roundNumber == sub_0a68450e
        require sub_4894e46d + (roundNumber * sub_0a68450e) >= sub_4894e46d
        roundEndTimestamp = sub_4894e46d + (roundNumber * sub_0a68450e)
    require sub_0a68450e <= roundEndTimestamp
    sub_312d03d5 = roundEndTimestamp - sub_0a68450e
}

function sub_8c4acf95(?) {
    require msg.sender == owner
    emit 0xd9123a7f: sub_0a68450e, arg1
    sub_0a68450e = arg1
    require sub_4894e46d <= block.number
    require sub_0a68450e
    require (block.number - sub_4894e46d / sub_0a68450e) + 1 >= block.number - sub_4894e46d / sub_0a68450e
    roundNumber = (block.number - sub_4894e46d / sub_0a68450e) + 1
    if not roundNumber:
        require sub_4894e46d >= sub_4894e46d
        roundEndTimestamp = sub_4894e46d
    else:
        require roundNumber
        require roundNumber * sub_0a68450e / roundNumber == sub_0a68450e
        require sub_4894e46d + (roundNumber * sub_0a68450e) >= sub_4894e46d
        roundEndTimestamp = sub_4894e46d + (roundNumber * sub_0a68450e)
    require sub_0a68450e <= roundEndTimestamp
    sub_312d03d5 = roundEndTimestamp - sub_0a68450e
    return 1
}

function sub_0060a300(?) {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    require ext_code.size(evilMortyAddress)
    call evilMortyAddress.0xcf20ac40 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require sub_c14ac0de > 0
    require arg2 >= minBuyAmount
    require ext_code.size(evilMortyAddress)
    call evilMortyAddress.0x7132d337 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= sub_c14ac0de
    sub_c14ac0de -= arg2
    emit Buy(arg2, arg1);
}

function sub_b2405cff(?) {
    require msg.sender == owner
    if sub_90cd0e90 - sub_c14ac0de >= 2 * sub_0e3aeff9:
        require sub_0e3aeff9
        require sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9)
        if not price:
            price = 0
        else:
            require price
            require price * 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / price == 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9)
            price = price * 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / 10^10
        emit 0x57d44621: price, roundNumber
    else:
        if sub_90cd0e90 - sub_c14ac0de >= sub_0e3aeff9:
            if not price:
                require sub_602de1ee
                price = 0 / sub_602de1ee
            else:
                require price
                require (sub_602de1ee * price) + (sub_23eaf0e4 * price) / price == sub_602de1ee + sub_23eaf0e4
                require sub_602de1ee
                price = (sub_602de1ee * price) + (sub_23eaf0e4 * price) / sub_602de1ee
            emit 0x57d44621: price, roundNumber
        else:
            if not price:
                require sub_602de1ee
                if 0 / sub_602de1ee < minPrice:
                    price = minPrice
                else:
                    require sub_602de1ee
                    price = 0 / sub_602de1ee
            else:
                require price
                require (sub_602de1ee * price) - (sub_4fca9851 * price) / price == sub_602de1ee - sub_4fca9851
                require sub_602de1ee
                if (sub_602de1ee * price) - (sub_4fca9851 * price) / sub_602de1ee < minPrice:
                    price = minPrice
                else:
                    require sub_602de1ee
                    price = (sub_602de1ee * price) - (sub_4fca9851 * price) / sub_602de1ee
            emit 0xbe7bd559: price, roundNumber
}

function sub_2729e24e(?) {
    require msg.sender == owner
    if arg1 / 10 >= 100:
        price = minPrice
    else:
        require sub_4fca9851 <= sub_602de1ee
        s = 0
        idx = 0
        while idx < arg1 / 10:
            require sub_602de1ee^10
            if not price:
                if 0 >= minPrice:
                    price = 0
                    s = 10^10 * (sub_602de1ee - sub_4fca9851)^10 / sub_602de1ee^10
                    idx = idx + 1
                    continue 
            else:
                require price
                require price * 10^10 * (sub_602de1ee - sub_4fca9851)^10 / sub_602de1ee^10 / price == 10^10 * (sub_602de1ee - sub_4fca9851)^10 / sub_602de1ee^10
                if price * 10^10 * (sub_602de1ee - sub_4fca9851)^10 / sub_602de1ee^10 / 10^10 >= minPrice:
                    price = price * 10^10 * (sub_602de1ee - sub_4fca9851)^10 / sub_602de1ee^10 / 10^10
                    s = 10^10 * (sub_602de1ee - sub_4fca9851)^10 / sub_602de1ee^10
                    idx = idx + 1
                    continue 
            price = minPrice
            emit 0xbe7bd559: price, roundNumber
            return 1
        if not arg1 / 10:
            require 0 <= arg1
            if not price:
                require sub_602de1ee^arg1
                if 0 / sub_602de1ee^arg1 >= minPrice:
                    price = 0 / sub_602de1ee^arg1
                else:
                    price = minPrice
            else:
                require price
                require price * (sub_602de1ee - sub_4fca9851)^arg1 / price == (sub_602de1ee - sub_4fca9851)^arg1
                require sub_602de1ee^arg1
                if price * (sub_602de1ee - sub_4fca9851)^arg1 / sub_602de1ee^arg1 >= minPrice:
                    price = price * (sub_602de1ee - sub_4fca9851)^arg1 / sub_602de1ee^arg1
                else:
                    price = minPrice
        else:
            require arg1 / 10
            require 10 * arg1 / 10 / arg1 / 10 == 10
            require 10 * arg1 / 10 <= arg1
            if not price:
                require sub_602de1ee^(arg1 - (10 * arg1 / 10))
                if 0 / sub_602de1ee^(arg1 - (10 * arg1 / 10)) >= minPrice:
                    price = 0 / sub_602de1ee^(arg1 - (10 * arg1 / 10))
                else:
                    price = minPrice
            else:
                require price
                require price * (sub_602de1ee - sub_4fca9851)^(arg1 - (10 * arg1 / 10)) / price == (sub_602de1ee - sub_4fca9851)^(arg1 - (10 * arg1 / 10))
                require sub_602de1ee^(arg1 - (10 * arg1 / 10))
                if price * (sub_602de1ee - sub_4fca9851)^(arg1 - (10 * arg1 / 10)) / sub_602de1ee^(arg1 - (10 * arg1 / 10)) >= minPrice:
                    price = price * (sub_602de1ee - sub_4fca9851)^(arg1 - (10 * arg1 / 10)) / sub_602de1ee^(arg1 - (10 * arg1 / 10))
                else:
                    price = minPrice
    emit 0xbe7bd559: price, roundNumber
    return 1
}

function buy() payable {
    require bool(sub_f222793a) == 1
    require ext_code.size(evilMortyAddress)
    call evilMortyAddress.0xcf20ac40 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require sub_c14ac0de > 0
    if block.number > roundEndTimestamp:
        require sub_4894e46d <= block.number
        require sub_0a68450e
        require (block.number - sub_4894e46d / sub_0a68450e) + 1 >= block.number - sub_4894e46d / sub_0a68450e
        roundNumber = (block.number - sub_4894e46d / sub_0a68450e) + 1
        if not roundNumber:
            require sub_4894e46d >= sub_4894e46d
            roundEndTimestamp = sub_4894e46d
        else:
            require roundNumber
            require roundNumber * sub_0a68450e / roundNumber == sub_0a68450e
            require sub_4894e46d + (roundNumber * sub_0a68450e) >= sub_4894e46d
            roundEndTimestamp = sub_4894e46d + (roundNumber * sub_0a68450e)
        require sub_0a68450e <= roundEndTimestamp
        sub_312d03d5 = roundEndTimestamp - sub_0a68450e
        if sub_90cd0e90 - sub_c14ac0de >= 2 * sub_0e3aeff9:
            require sub_0e3aeff9
            require sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9)
            if not price:
                price = 0
            else:
                require price
                require price * 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / price == 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9)
                price = price * 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / 10^10
            emit 0x57d44621: price, roundNumber
        else:
            if sub_90cd0e90 - sub_c14ac0de >= sub_0e3aeff9:
                if not price:
                    require sub_602de1ee
                    price = 0 / sub_602de1ee
                else:
                    require price
                    require (sub_602de1ee * price) + (sub_23eaf0e4 * price) / price == sub_602de1ee + sub_23eaf0e4
                    require sub_602de1ee
                    price = (sub_602de1ee * price) + (sub_23eaf0e4 * price) / sub_602de1ee
                emit 0x57d44621: price, roundNumber
            else:
                if not price:
                    require sub_602de1ee
                    if 0 / sub_602de1ee < minPrice:
                        price = minPrice
                    else:
                        require sub_602de1ee
                        price = 0 / sub_602de1ee
                else:
                    require price
                    require (sub_602de1ee * price) - (sub_4fca9851 * price) / price == sub_602de1ee - sub_4fca9851
                    require sub_602de1ee
                    if (sub_602de1ee * price) - (sub_4fca9851 * price) / sub_602de1ee < minPrice:
                        price = minPrice
                    else:
                        require sub_602de1ee
                        price = (sub_602de1ee * price) - (sub_4fca9851 * price) / sub_602de1ee
                emit 0xbe7bd559: price, roundNumber
        sub_c243213e = sub_c14ac0de
        sub_c14ac0de = sub_90cd0e90
        require roundNumber <= roundNumber
    if not msg.value:
        require price
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0xcf20ac40 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require sub_c14ac0de > 0
        require 0 / price >= minBuyAmount
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0x7132d337 with:
             gas gas_remaining wei
            args msg.sender, 0 / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 / price <= sub_c14ac0de
        sub_c14ac0de -= 0 / price
        emit Buy((0 / price), msg.sender);
    else:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
        require price
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0xcf20ac40 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require sub_c14ac0de > 0
        require 10^18 * msg.value / price >= minBuyAmount
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0x7132d337 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^18 * msg.value / price <= sub_c14ac0de
        sub_c14ac0de -= 10^18 * msg.value / price
        emit Buy((10^18 * msg.value / price), msg.sender);
}

function refreshPrice() {
    if block.number <= roundEndTimestamp:
    require sub_4894e46d <= block.number
    require sub_0a68450e
    require (block.number - sub_4894e46d / sub_0a68450e) + 1 >= block.number - sub_4894e46d / sub_0a68450e
    roundNumber = (block.number - sub_4894e46d / sub_0a68450e) + 1
    if not roundNumber:
        if sub_4894e46d >= sub_4894e46d:
            roundEndTimestamp = sub_4894e46d
            if sub_0a68450e <= roundEndTimestamp:
                sub_312d03d5 = roundEndTimestamp - sub_0a68450e
                if sub_90cd0e90 - sub_c14ac0de >= 2 * sub_0e3aeff9:
                    if sub_0e3aeff9:
                        if sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9):
                            if not price:
                                price = 0
                                emit 0x57d44621: price, roundNumber
                                sub_c243213e = sub_c14ac0de
                                sub_c14ac0de = sub_90cd0e90
                                if roundNumber <= roundNumber:
                            else:
                                if price:
                                    if price * 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / price == 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9):
                                        price = price * 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / 10^10
                                        emit 0x57d44621: price, roundNumber
                                        sub_c243213e = sub_c14ac0de
                                        sub_c14ac0de = sub_90cd0e90
                                        if roundNumber <= roundNumber:
                else:
                    if sub_90cd0e90 - sub_c14ac0de >= sub_0e3aeff9:
                        if not price:
                            if sub_602de1ee:
                                price = 0 / sub_602de1ee
                                emit 0x57d44621: price, roundNumber
                                sub_c243213e = sub_c14ac0de
                                sub_c14ac0de = sub_90cd0e90
                                if roundNumber <= roundNumber:
                        else:
                            if price:
                                if (sub_602de1ee * price) + (sub_23eaf0e4 * price) / price == sub_602de1ee + sub_23eaf0e4:
                                    if sub_602de1ee:
                                        price = (sub_602de1ee * price) + (sub_23eaf0e4 * price) / sub_602de1ee
                                        emit 0x57d44621: price, roundNumber
                                        sub_c243213e = sub_c14ac0de
                                        sub_c14ac0de = sub_90cd0e90
                                        if roundNumber <= roundNumber:
                    else:
                        if not price:
                            if sub_602de1ee:
                                if 0 / sub_602de1ee < minPrice:
                                    price = minPrice
                                    emit 0xbe7bd559: price, roundNumber
                                    sub_c243213e = sub_c14ac0de
                                    sub_c14ac0de = sub_90cd0e90
                                    if roundNumber <= roundNumber:
                                else:
                                    if sub_602de1ee:
                                        price = 0 / sub_602de1ee
                                        emit 0xbe7bd559: price, roundNumber
                                        sub_c243213e = sub_c14ac0de
                                        sub_c14ac0de = sub_90cd0e90
                                        if roundNumber <= roundNumber:
                        else:
                            if price:
                                if (sub_602de1ee * price) - (sub_4fca9851 * price) / price == sub_602de1ee - sub_4fca9851:
                                    if sub_602de1ee:
                                        if (sub_602de1ee * price) - (sub_4fca9851 * price) / sub_602de1ee < minPrice:
                                            price = minPrice
                                            emit 0xbe7bd559: price, roundNumber
                                            sub_c243213e = sub_c14ac0de
                                            sub_c14ac0de = sub_90cd0e90
                                            if roundNumber <= roundNumber:
                                        else:
                                            if sub_602de1ee:
                                                price = (sub_602de1ee * price) - (sub_4fca9851 * price) / sub_602de1ee
                                                emit 0xbe7bd559: price, roundNumber
                                                sub_c243213e = sub_c14ac0de
                                                sub_c14ac0de = sub_90cd0e90
                                                if roundNumber <= roundNumber:
    else:
        if roundNumber:
            if roundNumber * sub_0a68450e / roundNumber == sub_0a68450e:
                if sub_4894e46d + (roundNumber * sub_0a68450e) >= sub_4894e46d:
                    roundEndTimestamp = sub_4894e46d + (roundNumber * sub_0a68450e)
                    if sub_0a68450e <= roundEndTimestamp:
                        sub_312d03d5 = roundEndTimestamp - sub_0a68450e
                        if sub_90cd0e90 - sub_c14ac0de >= 2 * sub_0e3aeff9:
                            if sub_0e3aeff9:
                                if sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9):
                                    if not price:
                                        price = 0
                                        emit 0x57d44621: price, roundNumber
                                        sub_c243213e = sub_c14ac0de
                                        sub_c14ac0de = sub_90cd0e90
                                        if roundNumber <= roundNumber:
                                    else:
                                        if price:
                                            if price * 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / price == 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9):
                                                price = price * 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / 10^10
                                                emit 0x57d44621: price, roundNumber
                                                sub_c243213e = sub_c14ac0de
                                                sub_c14ac0de = sub_90cd0e90
                                                if roundNumber <= roundNumber:
                        else:
                            if sub_90cd0e90 - sub_c14ac0de >= sub_0e3aeff9:
                                if not price:
                                    if sub_602de1ee:
                                        price = 0 / sub_602de1ee
                                        emit 0x57d44621: price, roundNumber
                                        sub_c243213e = sub_c14ac0de
                                        sub_c14ac0de = sub_90cd0e90
                                        if roundNumber <= roundNumber:
                                else:
                                    if price:
                                        if (sub_602de1ee * price) + (sub_23eaf0e4 * price) / price == sub_602de1ee + sub_23eaf0e4:
                                            if sub_602de1ee:
                                                price = (sub_602de1ee * price) + (sub_23eaf0e4 * price) / sub_602de1ee
                                                emit 0x57d44621: price, roundNumber
                                                sub_c243213e = sub_c14ac0de
                                                sub_c14ac0de = sub_90cd0e90
                                                if roundNumber <= roundNumber:
                            else:
                                if not price:
                                    if sub_602de1ee:
                                        if 0 / sub_602de1ee < minPrice:
                                            price = minPrice
                                            emit 0xbe7bd559: price, roundNumber
                                            sub_c243213e = sub_c14ac0de
                                            sub_c14ac0de = sub_90cd0e90
                                            if roundNumber <= roundNumber:
                                        else:
                                            if sub_602de1ee:
                                                price = 0 / sub_602de1ee
                                                emit 0xbe7bd559: price, roundNumber
                                                sub_c243213e = sub_c14ac0de
                                                sub_c14ac0de = sub_90cd0e90
                                                if roundNumber <= roundNumber:
                                else:
                                    if price:
                                        if (sub_602de1ee * price) - (sub_4fca9851 * price) / price == sub_602de1ee - sub_4fca9851:
                                            if sub_602de1ee:
                                                if (sub_602de1ee * price) - (sub_4fca9851 * price) / sub_602de1ee < minPrice:
                                                    price = minPrice
                                                    emit 0xbe7bd559: price, roundNumber
                                                    sub_c243213e = sub_c14ac0de
                                                    sub_c14ac0de = sub_90cd0e90
                                                    if roundNumber <= roundNumber:
                                                else:
                                                    if sub_602de1ee:
                                                        price = (sub_602de1ee * price) - (sub_4fca9851 * price) / sub_602de1ee
                                                        emit 0xbe7bd559: price, roundNumber
                                                        sub_c243213e = sub_c14ac0de
                                                        sub_c14ac0de = sub_90cd0e90
                                                        if roundNumber <= roundNumber:
    revert
}

function citadelBuy(uint256 arg1, address arg2) {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    if block.number > roundEndTimestamp:
        require sub_4894e46d <= block.number
        require sub_0a68450e
        require (block.number - sub_4894e46d / sub_0a68450e) + 1 >= block.number - sub_4894e46d / sub_0a68450e
        roundNumber = (block.number - sub_4894e46d / sub_0a68450e) + 1
        if not roundNumber:
            require sub_4894e46d >= sub_4894e46d
            roundEndTimestamp = sub_4894e46d
        else:
            require roundNumber
            require roundNumber * sub_0a68450e / roundNumber == sub_0a68450e
            require sub_4894e46d + (roundNumber * sub_0a68450e) >= sub_4894e46d
            roundEndTimestamp = sub_4894e46d + (roundNumber * sub_0a68450e)
        require sub_0a68450e <= roundEndTimestamp
        sub_312d03d5 = roundEndTimestamp - sub_0a68450e
        if sub_90cd0e90 - sub_c14ac0de >= 2 * sub_0e3aeff9:
            require sub_0e3aeff9
            require sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9)
            if not price:
                price = 0
            else:
                require price
                require price * 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / price == 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9)
                price = price * 10^10 * (sub_602de1ee + sub_23eaf0e4)^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / sub_602de1ee^(sub_90cd0e90 - sub_c14ac0de / sub_0e3aeff9) / 10^10
            emit 0x57d44621: price, roundNumber
        else:
            if sub_90cd0e90 - sub_c14ac0de >= sub_0e3aeff9:
                if not price:
                    require sub_602de1ee
                    price = 0 / sub_602de1ee
                else:
                    require price
                    require (sub_602de1ee * price) + (sub_23eaf0e4 * price) / price == sub_602de1ee + sub_23eaf0e4
                    require sub_602de1ee
                    price = (sub_602de1ee * price) + (sub_23eaf0e4 * price) / sub_602de1ee
                emit 0x57d44621: price, roundNumber
            else:
                if not price:
                    require sub_602de1ee
                    if 0 / sub_602de1ee < minPrice:
                        price = minPrice
                    else:
                        require sub_602de1ee
                        price = 0 / sub_602de1ee
                else:
                    require price
                    require (sub_602de1ee * price) - (sub_4fca9851 * price) / price == sub_602de1ee - sub_4fca9851
                    require sub_602de1ee
                    if (sub_602de1ee * price) - (sub_4fca9851 * price) / sub_602de1ee < minPrice:
                        price = minPrice
                    else:
                        require sub_602de1ee
                        price = (sub_602de1ee * price) - (sub_4fca9851 * price) / sub_602de1ee
                emit 0xbe7bd559: price, roundNumber
        sub_c243213e = sub_c14ac0de
        sub_c14ac0de = sub_90cd0e90
        require roundNumber <= roundNumber
    if not arg1:
        require price
        if sub_c14ac0de > maxBuyAmount:
            if 0 / price <= maxBuyAmount:
                require ext_code.size(evilMortyAddress)
                call evilMortyAddress.0xcf20ac40 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > 0
                require sub_c14ac0de > 0
                require 0 / price >= minBuyAmount
                require ext_code.size(evilMortyAddress)
                call evilMortyAddress.0x7132d337 with:
                     gas gas_remaining wei
                    args address(arg2), 0 / price
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 / price <= sub_c14ac0de
                sub_c14ac0de -= 0 / price
                emit Buy((0 / price), arg2);
                return 0
            require maxBuyAmount <= 0 / price
            if not (0 / price) - maxBuyAmount:
                require 0 < arg1
                require ext_code.size(evilMortyAddress)
                call evilMortyAddress.0xcf20ac40 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > 0
                require sub_c14ac0de > 0
                require maxBuyAmount >= minBuyAmount
                require ext_code.size(evilMortyAddress)
                call evilMortyAddress.0x7132d337 with:
                     gas gas_remaining wei
                    args address(arg2), maxBuyAmount
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require maxBuyAmount <= sub_c14ac0de
                sub_c14ac0de -= maxBuyAmount
                emit Buy(maxBuyAmount, arg2);
                return 0
            require (0 / price) - maxBuyAmount
            require (0 / price * price) - (maxBuyAmount * price) / (0 / price) - maxBuyAmount == price
            require (0 / price * price) - (maxBuyAmount * price) / 10^18 < arg1
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0xcf20ac40 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require sub_c14ac0de > 0
            require maxBuyAmount >= minBuyAmount
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0x7132d337 with:
                 gas gas_remaining wei
                args address(arg2), maxBuyAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require maxBuyAmount <= sub_c14ac0de
            sub_c14ac0de -= maxBuyAmount
            emit Buy(maxBuyAmount, arg2);
            return ((0 / price * price) - (maxBuyAmount * price) / 10^18)
        if sub_c14ac0de >= minBuyAmount:
            if 0 / price <= sub_c14ac0de:
                require ext_code.size(evilMortyAddress)
                call evilMortyAddress.0xcf20ac40 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > 0
                require sub_c14ac0de > 0
                require 0 / price >= minBuyAmount
                require ext_code.size(evilMortyAddress)
                call evilMortyAddress.0x7132d337 with:
                     gas gas_remaining wei
                    args address(arg2), 0 / price
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 / price <= sub_c14ac0de
                sub_c14ac0de -= 0 / price
                emit Buy((0 / price), arg2);
                return 0
            require sub_c14ac0de <= 0 / price
            if not (0 / price) - sub_c14ac0de:
                require 0 < arg1
                require ext_code.size(evilMortyAddress)
                call evilMortyAddress.0xcf20ac40 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > 0
                require sub_c14ac0de > 0
                require sub_c14ac0de >= minBuyAmount
                require ext_code.size(evilMortyAddress)
                call evilMortyAddress.0x7132d337 with:
                     gas gas_remaining wei
                    args address(arg2), sub_c14ac0de
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require sub_c14ac0de <= sub_c14ac0de
                sub_c14ac0de = 0
                emit Buy(sub_c14ac0de, arg2);
                return 0
            require (0 / price) - sub_c14ac0de
            require (0 / price * price) - (sub_c14ac0de * price) / (0 / price) - sub_c14ac0de == price
            require (0 / price * price) - (sub_c14ac0de * price) / 10^18 < arg1
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0xcf20ac40 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require sub_c14ac0de > 0
            require sub_c14ac0de >= minBuyAmount
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0x7132d337 with:
                 gas gas_remaining wei
                args address(arg2), sub_c14ac0de
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require sub_c14ac0de <= sub_c14ac0de
            sub_c14ac0de = 0
            emit Buy(sub_c14ac0de, arg2);
            return ((0 / price * price) - (sub_c14ac0de * price) / 10^18)
        if 0 / price <= minBuyAmount:
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0xcf20ac40 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require sub_c14ac0de > 0
            require 0 / price >= minBuyAmount
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0x7132d337 with:
                 gas gas_remaining wei
                args address(arg2), 0 / price
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 / price <= sub_c14ac0de
            sub_c14ac0de -= 0 / price
            emit Buy((0 / price), arg2);
            return 0
        require minBuyAmount <= 0 / price
        if not (0 / price) - minBuyAmount:
            require 0 < arg1
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0xcf20ac40 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require sub_c14ac0de > 0
            require minBuyAmount >= minBuyAmount
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0x7132d337 with:
                 gas gas_remaining wei
                args address(arg2), minBuyAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require minBuyAmount <= sub_c14ac0de
            sub_c14ac0de -= minBuyAmount
            emit Buy(minBuyAmount, arg2);
            return 0
        require (0 / price) - minBuyAmount
        require (0 / price * price) - (minBuyAmount * price) / (0 / price) - minBuyAmount == price
        require (0 / price * price) - (minBuyAmount * price) / 10^18 < arg1
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0xcf20ac40 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require sub_c14ac0de > 0
        require minBuyAmount >= minBuyAmount
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0x7132d337 with:
             gas gas_remaining wei
            args address(arg2), minBuyAmount
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require minBuyAmount <= sub_c14ac0de
        sub_c14ac0de -= minBuyAmount
        emit Buy(minBuyAmount, arg2);
        return ((0 / price * price) - (minBuyAmount * price) / 10^18)
    require arg1
    require 10^18 * arg1 / arg1 == 10^18
    require price
    if sub_c14ac0de > maxBuyAmount:
        if 10^18 * arg1 / price <= maxBuyAmount:
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0xcf20ac40 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require sub_c14ac0de > 0
            require 10^18 * arg1 / price >= minBuyAmount
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0x7132d337 with:
                 gas gas_remaining wei
                args address(arg2), 10^18 * arg1 / price
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * arg1 / price <= sub_c14ac0de
            sub_c14ac0de -= 10^18 * arg1 / price
            emit Buy((10^18 * arg1 / price), arg2);
            return 0
        require maxBuyAmount <= 10^18 * arg1 / price
        if not (10^18 * arg1 / price) - maxBuyAmount:
            require 0 < arg1
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0xcf20ac40 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require sub_c14ac0de > 0
            require maxBuyAmount >= minBuyAmount
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0x7132d337 with:
                 gas gas_remaining wei
                args address(arg2), maxBuyAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require maxBuyAmount <= sub_c14ac0de
            sub_c14ac0de -= maxBuyAmount
            emit Buy(maxBuyAmount, arg2);
            return 0
        require (10^18 * arg1 / price) - maxBuyAmount
        require (10^18 * arg1 / price * price) - (maxBuyAmount * price) / (10^18 * arg1 / price) - maxBuyAmount == price
        require (10^18 * arg1 / price * price) - (maxBuyAmount * price) / 10^18 < arg1
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0xcf20ac40 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require sub_c14ac0de > 0
        require maxBuyAmount >= minBuyAmount
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0x7132d337 with:
             gas gas_remaining wei
            args address(arg2), maxBuyAmount
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require maxBuyAmount <= sub_c14ac0de
        sub_c14ac0de -= maxBuyAmount
        emit Buy(maxBuyAmount, arg2);
        return ((10^18 * arg1 / price * price) - (maxBuyAmount * price) / 10^18)
    if sub_c14ac0de >= minBuyAmount:
        if 10^18 * arg1 / price <= sub_c14ac0de:
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0xcf20ac40 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require sub_c14ac0de > 0
            require 10^18 * arg1 / price >= minBuyAmount
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0x7132d337 with:
                 gas gas_remaining wei
                args address(arg2), 10^18 * arg1 / price
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 10^18 * arg1 / price <= sub_c14ac0de
            sub_c14ac0de -= 10^18 * arg1 / price
            emit Buy((10^18 * arg1 / price), arg2);
            return 0
        require sub_c14ac0de <= 10^18 * arg1 / price
        if not (10^18 * arg1 / price) - sub_c14ac0de:
            require 0 < arg1
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0xcf20ac40 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            require sub_c14ac0de > 0
            require sub_c14ac0de >= minBuyAmount
            require ext_code.size(evilMortyAddress)
            call evilMortyAddress.0x7132d337 with:
                 gas gas_remaining wei
                args address(arg2), sub_c14ac0de
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require sub_c14ac0de <= sub_c14ac0de
            sub_c14ac0de = 0
            emit Buy(sub_c14ac0de, arg2);
            return 0
        require (10^18 * arg1 / price) - sub_c14ac0de
        require (10^18 * arg1 / price * price) - (sub_c14ac0de * price) / (10^18 * arg1 / price) - sub_c14ac0de == price
        require (10^18 * arg1 / price * price) - (sub_c14ac0de * price) / 10^18 < arg1
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0xcf20ac40 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require sub_c14ac0de > 0
        require sub_c14ac0de >= minBuyAmount
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0x7132d337 with:
             gas gas_remaining wei
            args address(arg2), sub_c14ac0de
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_c14ac0de <= sub_c14ac0de
        sub_c14ac0de = 0
        emit Buy(sub_c14ac0de, arg2);
        return ((10^18 * arg1 / price * price) - (sub_c14ac0de * price) / 10^18)
    if 10^18 * arg1 / price <= minBuyAmount:
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0xcf20ac40 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require sub_c14ac0de > 0
        require 10^18 * arg1 / price >= minBuyAmount
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0x7132d337 with:
             gas gas_remaining wei
            args address(arg2), 10^18 * arg1 / price
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10^18 * arg1 / price <= sub_c14ac0de
        sub_c14ac0de -= 10^18 * arg1 / price
        emit Buy((10^18 * arg1 / price), arg2);
        return 0
    require minBuyAmount <= 10^18 * arg1 / price
    if not (10^18 * arg1 / price) - minBuyAmount:
        require 0 < arg1
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0xcf20ac40 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require sub_c14ac0de > 0
        require minBuyAmount >= minBuyAmount
        require ext_code.size(evilMortyAddress)
        call evilMortyAddress.0x7132d337 with:
             gas gas_remaining wei
            args address(arg2), minBuyAmount
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require minBuyAmount <= sub_c14ac0de
        sub_c14ac0de -= minBuyAmount
        emit Buy(minBuyAmount, arg2);
        return 0
    require (10^18 * arg1 / price) - minBuyAmount
    require (10^18 * arg1 / price * price) - (minBuyAmount * price) / (10^18 * arg1 / price) - minBuyAmount == price
    require (10^18 * arg1 / price * price) - (minBuyAmount * price) / 10^18 < arg1
    require ext_code.size(evilMortyAddress)
    call evilMortyAddress.0xcf20ac40 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require sub_c14ac0de > 0
    require minBuyAmount >= minBuyAmount
    require ext_code.size(evilMortyAddress)
    call evilMortyAddress.0x7132d337 with:
         gas gas_remaining wei
        args address(arg2), minBuyAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require minBuyAmount <= sub_c14ac0de
    sub_c14ac0de -= minBuyAmount
    emit Buy(minBuyAmount, arg2);
    return ((10^18 * arg1 / price * price) - (minBuyAmount * price) / 10^18)
}



}
