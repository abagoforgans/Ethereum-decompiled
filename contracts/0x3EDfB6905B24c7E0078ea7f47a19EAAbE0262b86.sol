contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint128 stor4; offset 160
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    Mask(96, 0, stor4.field_160) = 0
    stor6 = 4 * 10^17
    stor7 = 35 * 10^16
    stor8 = 5 * 10^13 * 3600
    stor9 = 12 * 10^16
    stor10 = 4 * 10^16
    stor11 = 0
    stor12 = 0
    stor13 = 25
    stor14 = 50
    stor15 = 0
    require not msg.value
    require code.data[9099 len 32] > 0
    require code.data[9143 len 20]
    require code.data[9207 len 20]
    stor2 = code.data[9099 len 32]
    stor1 = code.data[9143 len 20]
    stor0 = code.data[9207 len 20]
    address(stor4.field_0) = msg.sender
    require code.data[9175 len 20]
    stor5 = code.data[9175 len 20]
    return code.data[667 len 8432]
}



// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor4; offset 160
uint128 stor4; offset 160
address owner;
address operatorAddress;
uint256 livePrice;
uint256 sub_00b39c6a;
uint256 sub_89d454af;
uint256 sub_96578879;
uint256 presalePrice;
uint256 sub_9681f874;
uint256 round3Bonus;
uint256 round2Bonus;
uint256 round1Bonus;
uint256 presaleBonus;

function presalePrice() {
    return presalePrice
}

function sub_00b39c6a(?) {
    return sub_00b39c6a
}

function round1Bonus() {
    return round1Bonus
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function round2Bonus() {
    return round2Bonus
}

function wallet() {
    return walletAddress
}

function operator() {
    return operatorAddress
}

function paused() {
    return bool(uint8(stor4.field_160))
}

function livePrice() {
    return livePrice
}

function round3Bonus() {
    return round3Bonus
}

function sub_89d454af(?) {
    return sub_89d454af
}

function owner() {
    return owner
}

function sub_96578879(?) {
    return sub_96578879
}

function sub_9681f874(?) {
    return sub_9681f874
}

function presaleBonus() {
    return presaleBonus
}

function token() {
    return tokenAddress
}

function unpause() {
    require msg.sender == owner
    require uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8a802bb9(?) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1 > 0
    emit 0x63245482: 4, livePrice, arg1
    livePrice = arg1
}

function sub_416e34e2(?) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1 > 0
    emit 0xd7b72104: 1, round1Bonus, arg1
    round1Bonus = arg1
}

function sub_6e6888d2(?) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1 > 0
    emit 0xd7b72104: 2, round2Bonus, arg1
    round2Bonus = arg1
}

function sub_f858b08f(?) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1 > 0
    emit 0xd7b72104: 3, round3Bonus, arg1
    round3Bonus = arg1
}

function sub_0e8011ba(?) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1 > 0
    emit 0x63245482: 2, sub_89d454af, arg1
    sub_89d454af = arg1
}

function sub_5090d32b(?) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1 > 0
    emit 0xd7b72104: 4, sub_9681f874, arg1
    sub_9681f874 = arg1
}

function sub_6366d65c(?) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1 > 0
    emit 0x63245482: 1, sub_96578879, arg1
    sub_96578879 = arg1
}

function sub_ed7166e0(?) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1 > 0
    emit 0x63245482: 3, sub_00b39c6a, arg1
    sub_00b39c6a = arg1
}

function updateWallet(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != walletAddress
    emit WalletUpdated(walletAddress, arg1);
    walletAddress = arg1
}

function updateOperator(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != operatorAddress
    emit OperatorUpdated(operatorAddress, arg1);
    operatorAddress = arg1
}

function updatePresaleBonus(uint256 arg1) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1 > 0
    emit 0xd7b72104: 0, presaleBonus, arg1
    presaleBonus = arg1
}

function updatePresalePrice(uint256 arg1) {
    require not uint8(stor4.field_160)
    require msg.sender == owner
    require arg1 > 0
    emit 0x63245482: 0, presalePrice, arg1
    presalePrice = arg1
}

function updateRate(uint256 arg1) {
    require not uint8(stor4.field_160)
    if owner != msg.sender:
        require msg.sender == operatorAddress
    require arg1 > 0
    emit RateUpdated(rate, arg1);
    rate = arg1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function buyTokens(address arg1) payable {
    require not uint8(stor4.field_160)
    require arg1
    require msg.value
    if block.timestamp >= 428783 * 3600:
        if not msg.value:
            require livePrice
            if not 0 / livePrice / 100:
                require 0 / livePrice >= 0 / livePrice
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 0 / livePrice
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 0 / livePrice, msg.sender, arg1);
            else:
                require 0 / livePrice / 100
                require 0 / livePrice / 100 * sub_9681f874 / 0 / livePrice / 100 == sub_9681f874
                require (0 / livePrice) + (0 / livePrice / 100 * sub_9681f874) >= 0 / livePrice
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), (0 / livePrice) + (0 / livePrice / 100 * sub_9681f874)
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, (0 / livePrice) + (0 / livePrice / 100 * sub_9681f874), msg.sender, arg1);
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            require livePrice
            if not msg.value * rate / livePrice / 100:
                require msg.value * rate / livePrice >= msg.value * rate / livePrice
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), msg.value * rate / livePrice
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, msg.value * rate / livePrice, msg.sender, arg1);
            else:
                require msg.value * rate / livePrice / 100
                require msg.value * rate / livePrice / 100 * sub_9681f874 / msg.value * rate / livePrice / 100 == sub_9681f874
                require (msg.value * rate / livePrice) + (msg.value * rate / livePrice / 100 * sub_9681f874) >= msg.value * rate / livePrice
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), (msg.value * rate / livePrice) + (msg.value * rate / livePrice / 100 * sub_9681f874)
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, (msg.value * rate / livePrice) + (msg.value * rate / livePrice / 100 * sub_9681f874), msg.sender, arg1);
    else:
        if block.timestamp >= 424294 * 3600:
            if not msg.value:
                require sub_00b39c6a
                if not 0 / sub_00b39c6a / 100:
                    require 0 / sub_00b39c6a >= 0 / sub_00b39c6a
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0 / sub_00b39c6a
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0 / sub_00b39c6a, msg.sender, arg1);
                else:
                    require 0 / sub_00b39c6a / 100
                    require 0 / sub_00b39c6a / 100 * round3Bonus / 0 / sub_00b39c6a / 100 == round3Bonus
                    require (0 / sub_00b39c6a) + (0 / sub_00b39c6a / 100 * round3Bonus) >= 0 / sub_00b39c6a
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), (0 / sub_00b39c6a) + (0 / sub_00b39c6a / 100 * round3Bonus)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (0 / sub_00b39c6a) + (0 / sub_00b39c6a / 100 * round3Bonus), msg.sender, arg1);
            else:
                require msg.value
                require msg.value * rate / msg.value == rate
                require sub_00b39c6a
                if not msg.value * rate / sub_00b39c6a / 100:
                    require msg.value * rate / sub_00b39c6a >= msg.value * rate / sub_00b39c6a
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), msg.value * rate / sub_00b39c6a
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, msg.value * rate / sub_00b39c6a, msg.sender, arg1);
                else:
                    require msg.value * rate / sub_00b39c6a / 100
                    require msg.value * rate / sub_00b39c6a / 100 * round3Bonus / msg.value * rate / sub_00b39c6a / 100 == round3Bonus
                    require (msg.value * rate / sub_00b39c6a) + (msg.value * rate / sub_00b39c6a / 100 * round3Bonus) >= msg.value * rate / sub_00b39c6a
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), (msg.value * rate / sub_00b39c6a) + (msg.value * rate / sub_00b39c6a / 100 * round3Bonus)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (msg.value * rate / sub_00b39c6a) + (msg.value * rate / sub_00b39c6a / 100 * round3Bonus), msg.sender, arg1);
        else:
            if block.timestamp >= 423622 * 3600:
                if not msg.value:
                    require sub_89d454af
                    if not 0 / sub_89d454af / 100:
                        require 0 / sub_89d454af >= 0 / sub_89d454af
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0 / sub_89d454af
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0 / sub_89d454af, msg.sender, arg1);
                    else:
                        require 0 / sub_89d454af / 100
                        require 0 / sub_89d454af / 100 * round2Bonus / 0 / sub_89d454af / 100 == round2Bonus
                        require (0 / sub_89d454af) + (0 / sub_89d454af / 100 * round2Bonus) >= 0 / sub_89d454af
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), (0 / sub_89d454af) + (0 / sub_89d454af / 100 * round2Bonus)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (0 / sub_89d454af) + (0 / sub_89d454af / 100 * round2Bonus), msg.sender, arg1);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require sub_89d454af
                    if not msg.value * rate / sub_89d454af / 100:
                        require msg.value * rate / sub_89d454af >= msg.value * rate / sub_89d454af
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), msg.value * rate / sub_89d454af
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, msg.value * rate / sub_89d454af, msg.sender, arg1);
                    else:
                        require msg.value * rate / sub_89d454af / 100
                        require msg.value * rate / sub_89d454af / 100 * round2Bonus / msg.value * rate / sub_89d454af / 100 == round2Bonus
                        require (msg.value * rate / sub_89d454af) + (msg.value * rate / sub_89d454af / 100 * round2Bonus) >= msg.value * rate / sub_89d454af
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), (msg.value * rate / sub_89d454af) + (msg.value * rate / sub_89d454af / 100 * round2Bonus)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (msg.value * rate / sub_89d454af) + (msg.value * rate / sub_89d454af / 100 * round2Bonus), msg.sender, arg1);
            else:
                if block.timestamp < 422782 * 3600:
                    if not msg.value:
                        require presalePrice
                        if not 0 / presalePrice / 100:
                            require 0 / presalePrice >= 0 / presalePrice
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / presalePrice
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 0 / presalePrice, msg.sender, arg1);
                        else:
                            require 0 / presalePrice / 100
                            require 0 / presalePrice / 100 * presaleBonus / 0 / presalePrice / 100 == presaleBonus
                            require (0 / presalePrice) + (0 / presalePrice / 100 * presaleBonus) >= 0 / presalePrice
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / presalePrice) + (0 / presalePrice / 100 * presaleBonus)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (0 / presalePrice) + (0 / presalePrice / 100 * presaleBonus), msg.sender, arg1);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require presalePrice
                        if not msg.value * rate / presalePrice / 100:
                            require msg.value * rate / presalePrice >= msg.value * rate / presalePrice
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), msg.value * rate / presalePrice
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, msg.value * rate / presalePrice, msg.sender, arg1);
                        else:
                            require msg.value * rate / presalePrice / 100
                            require msg.value * rate / presalePrice / 100 * presaleBonus / msg.value * rate / presalePrice / 100 == presaleBonus
                            require (msg.value * rate / presalePrice) + (msg.value * rate / presalePrice / 100 * presaleBonus) >= msg.value * rate / presalePrice
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (msg.value * rate / presalePrice) + (msg.value * rate / presalePrice / 100 * presaleBonus)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate / presalePrice) + (msg.value * rate / presalePrice / 100 * presaleBonus), msg.sender, arg1);
                else:
                    if not msg.value:
                        require sub_96578879
                        if not 0 / sub_96578879 / 100:
                            require 0 / sub_96578879 >= 0 / sub_96578879
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / sub_96578879
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 0 / sub_96578879, msg.sender, arg1);
                        else:
                            require 0 / sub_96578879 / 100
                            require 0 / sub_96578879 / 100 * round1Bonus / 0 / sub_96578879 / 100 == round1Bonus
                            require (0 / sub_96578879) + (0 / sub_96578879 / 100 * round1Bonus) >= 0 / sub_96578879
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / sub_96578879) + (0 / sub_96578879 / 100 * round1Bonus)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (0 / sub_96578879) + (0 / sub_96578879 / 100 * round1Bonus), msg.sender, arg1);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require sub_96578879
                        if not msg.value * rate / sub_96578879 / 100:
                            require msg.value * rate / sub_96578879 >= msg.value * rate / sub_96578879
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), msg.value * rate / sub_96578879
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, msg.value * rate / sub_96578879, msg.sender, arg1);
                        else:
                            require msg.value * rate / sub_96578879 / 100
                            require msg.value * rate / sub_96578879 / 100 * round1Bonus / msg.value * rate / sub_96578879 / 100 == round1Bonus
                            require (msg.value * rate / sub_96578879) + (msg.value * rate / sub_96578879 / 100 * round1Bonus) >= msg.value * rate / sub_96578879
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (msg.value * rate / sub_96578879) + (msg.value * rate / sub_96578879 / 100 * round1Bonus)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate / sub_96578879) + (msg.value * rate / sub_96578879 / 100 * round1Bonus), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor4.field_160)
    require msg.sender
    require msg.value
    if block.timestamp >= 428783 * 3600:
        if not msg.value:
            require livePrice
            if not 0 / livePrice / 100:
                require 0 / livePrice >= 0 / livePrice
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0 / livePrice
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 0 / livePrice, msg.sender, msg.sender);
            else:
                require 0 / livePrice / 100
                require 0 / livePrice / 100 * sub_9681f874 / 0 / livePrice / 100 == sub_9681f874
                require (0 / livePrice) + (0 / livePrice / 100 * sub_9681f874) >= 0 / livePrice
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, (0 / livePrice) + (0 / livePrice / 100 * sub_9681f874)
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, (0 / livePrice) + (0 / livePrice / 100 * sub_9681f874), msg.sender, msg.sender);
        else:
            require msg.value
            require msg.value * rate / msg.value == rate
            require livePrice
            if not msg.value * rate / livePrice / 100:
                require msg.value * rate / livePrice >= msg.value * rate / livePrice
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * rate / livePrice
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, msg.value * rate / livePrice, msg.sender, msg.sender);
            else:
                require msg.value * rate / livePrice / 100
                require msg.value * rate / livePrice / 100 * sub_9681f874 / msg.value * rate / livePrice / 100 == sub_9681f874
                require (msg.value * rate / livePrice) + (msg.value * rate / livePrice / 100 * sub_9681f874) >= msg.value * rate / livePrice
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, (msg.value * rate / livePrice) + (msg.value * rate / livePrice / 100 * sub_9681f874)
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, (msg.value * rate / livePrice) + (msg.value * rate / livePrice / 100 * sub_9681f874), msg.sender, msg.sender);
    else:
        if block.timestamp >= 424294 * 3600:
            if not msg.value:
                require sub_00b39c6a
                if not 0 / sub_00b39c6a / 100:
                    require 0 / sub_00b39c6a >= 0 / sub_00b39c6a
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_00b39c6a
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0 / sub_00b39c6a, msg.sender, msg.sender);
                else:
                    require 0 / sub_00b39c6a / 100
                    require 0 / sub_00b39c6a / 100 * round3Bonus / 0 / sub_00b39c6a / 100 == round3Bonus
                    require (0 / sub_00b39c6a) + (0 / sub_00b39c6a / 100 * round3Bonus) >= 0 / sub_00b39c6a
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (0 / sub_00b39c6a) + (0 / sub_00b39c6a / 100 * round3Bonus)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (0 / sub_00b39c6a) + (0 / sub_00b39c6a / 100 * round3Bonus), msg.sender, msg.sender);
            else:
                require msg.value
                require msg.value * rate / msg.value == rate
                require sub_00b39c6a
                if not msg.value * rate / sub_00b39c6a / 100:
                    require msg.value * rate / sub_00b39c6a >= msg.value * rate / sub_00b39c6a
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, msg.value * rate / sub_00b39c6a
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, msg.value * rate / sub_00b39c6a, msg.sender, msg.sender);
                else:
                    require msg.value * rate / sub_00b39c6a / 100
                    require msg.value * rate / sub_00b39c6a / 100 * round3Bonus / msg.value * rate / sub_00b39c6a / 100 == round3Bonus
                    require (msg.value * rate / sub_00b39c6a) + (msg.value * rate / sub_00b39c6a / 100 * round3Bonus) >= msg.value * rate / sub_00b39c6a
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (msg.value * rate / sub_00b39c6a) + (msg.value * rate / sub_00b39c6a / 100 * round3Bonus)
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (msg.value * rate / sub_00b39c6a) + (msg.value * rate / sub_00b39c6a / 100 * round3Bonus), msg.sender, msg.sender);
        else:
            if block.timestamp >= 423622 * 3600:
                if not msg.value:
                    require sub_89d454af
                    if not 0 / sub_89d454af / 100:
                        require 0 / sub_89d454af >= 0 / sub_89d454af
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0 / sub_89d454af
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0 / sub_89d454af, msg.sender, msg.sender);
                    else:
                        require 0 / sub_89d454af / 100
                        require 0 / sub_89d454af / 100 * round2Bonus / 0 / sub_89d454af / 100 == round2Bonus
                        require (0 / sub_89d454af) + (0 / sub_89d454af / 100 * round2Bonus) >= 0 / sub_89d454af
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, (0 / sub_89d454af) + (0 / sub_89d454af / 100 * round2Bonus)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (0 / sub_89d454af) + (0 / sub_89d454af / 100 * round2Bonus), msg.sender, msg.sender);
                else:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                    require sub_89d454af
                    if not msg.value * rate / sub_89d454af / 100:
                        require msg.value * rate / sub_89d454af >= msg.value * rate / sub_89d454af
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, msg.value * rate / sub_89d454af
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, msg.value * rate / sub_89d454af, msg.sender, msg.sender);
                    else:
                        require msg.value * rate / sub_89d454af / 100
                        require msg.value * rate / sub_89d454af / 100 * round2Bonus / msg.value * rate / sub_89d454af / 100 == round2Bonus
                        require (msg.value * rate / sub_89d454af) + (msg.value * rate / sub_89d454af / 100 * round2Bonus) >= msg.value * rate / sub_89d454af
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, (msg.value * rate / sub_89d454af) + (msg.value * rate / sub_89d454af / 100 * round2Bonus)
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (msg.value * rate / sub_89d454af) + (msg.value * rate / sub_89d454af / 100 * round2Bonus), msg.sender, msg.sender);
            else:
                if block.timestamp < 422782 * 3600:
                    if not msg.value:
                        require presalePrice
                        if not 0 / presalePrice / 100:
                            require 0 / presalePrice >= 0 / presalePrice
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / presalePrice
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 0 / presalePrice, msg.sender, msg.sender);
                        else:
                            require 0 / presalePrice / 100
                            require 0 / presalePrice / 100 * presaleBonus / 0 / presalePrice / 100 == presaleBonus
                            require (0 / presalePrice) + (0 / presalePrice / 100 * presaleBonus) >= 0 / presalePrice
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / presalePrice) + (0 / presalePrice / 100 * presaleBonus)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (0 / presalePrice) + (0 / presalePrice / 100 * presaleBonus), msg.sender, msg.sender);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require presalePrice
                        if not msg.value * rate / presalePrice / 100:
                            require msg.value * rate / presalePrice >= msg.value * rate / presalePrice
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value * rate / presalePrice
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, msg.value * rate / presalePrice, msg.sender, msg.sender);
                        else:
                            require msg.value * rate / presalePrice / 100
                            require msg.value * rate / presalePrice / 100 * presaleBonus / msg.value * rate / presalePrice / 100 == presaleBonus
                            require (msg.value * rate / presalePrice) + (msg.value * rate / presalePrice / 100 * presaleBonus) >= msg.value * rate / presalePrice
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (msg.value * rate / presalePrice) + (msg.value * rate / presalePrice / 100 * presaleBonus)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate / presalePrice) + (msg.value * rate / presalePrice / 100 * presaleBonus), msg.sender, msg.sender);
                else:
                    if not msg.value:
                        require sub_96578879
                        if not 0 / sub_96578879 / 100:
                            require 0 / sub_96578879 >= 0 / sub_96578879
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_96578879
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 0 / sub_96578879, msg.sender, msg.sender);
                        else:
                            require 0 / sub_96578879 / 100
                            require 0 / sub_96578879 / 100 * round1Bonus / 0 / sub_96578879 / 100 == round1Bonus
                            require (0 / sub_96578879) + (0 / sub_96578879 / 100 * round1Bonus) >= 0 / sub_96578879
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / sub_96578879) + (0 / sub_96578879 / 100 * round1Bonus)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (0 / sub_96578879) + (0 / sub_96578879 / 100 * round1Bonus), msg.sender, msg.sender);
                    else:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                        require sub_96578879
                        if not msg.value * rate / sub_96578879 / 100:
                            require msg.value * rate / sub_96578879 >= msg.value * rate / sub_96578879
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value * rate / sub_96578879
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, msg.value * rate / sub_96578879, msg.sender, msg.sender);
                        else:
                            require msg.value * rate / sub_96578879 / 100
                            require msg.value * rate / sub_96578879 / 100 * round1Bonus / msg.value * rate / sub_96578879 / 100 == round1Bonus
                            require (msg.value * rate / sub_96578879) + (msg.value * rate / sub_96578879 / 100 * round1Bonus) >= msg.value * rate / sub_96578879
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (msg.value * rate / sub_96578879) + (msg.value * rate / sub_96578879 / 100 * round1Bonus)
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate / sub_96578879) + (msg.value * rate / sub_96578879 / 100 * round1Bonus), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
