contract main {




// =====================  Runtime code  =====================


const ROLE_SUPERUSER = 'superuser'


address owner;
mapping of uint8 stor1;
uint256 previousWeiBalance;
uint256 nextSeedHashed;
uint256 percentWeiDividend;
uint256 percentWeiJackpot;
uint256 percentWeiMC;
uint256 FACTOR;
uint8 stor8;
address stor8; offset 8
address stor9;
address stor10;
address stor11;
uint256 stor11;
address stor12;
mapping of uint8 stor99;

function nextSeedHashed() {
    return nextSeedHashed
}

function FACTOR() {
    return FACTOR
}

function percentWeiDividend() {
    return percentWeiDividend
}

function percentWeiMC() {
    return percentWeiMC
}

function percentWeiJackpot() {
    return percentWeiJackpot
}

function owner() {
    return owner
}

function wormholeIsOpen() {
    return bool(uint8(stor8.field_0))
}

function previousWeiBalance() {
    return previousWeiBalance
}

function setNextSeedHash(uint256 arg1) {
    require msg.sender == owner
    nextSeedHashed = arg1
}

function openWormhole() {
    require msg.sender == owner
    uint8(stor8.field_0) = 1
    emit OpenWormhole()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function closeWormhole() {
    require msg.sender == owner
    uint8(stor8.field_0) = 0
    emit CloseWormhole()
}

function setPercentWeiMC(uint256 arg1) {
    require msg.sender == owner
    emit SystemChangePercentWeiMC(percentWeiMC, arg1);
    percentWeiMC = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isSuperuser(address arg1) {
    mem[160 len 0] = None
    mem[160] = bool(stor1[mem[160 len 9]][address(arg1)])
    return memory
      from 160
       len 32
}

function setPercentWeiJackpot(uint256 arg1) {
    require msg.sender == owner
    emit SystemChangePercentWeiJackpot(percentWeiJackpot, arg1);
    percentWeiJackpot = arg1
}

function setPercentWeiDividend(uint256 arg1) {
    require msg.sender == owner
    emit SystemChangePercentWeiDividend(percentWeiDividend, arg1);
    percentWeiDividend = arg1
}

function getNumDividends() {
    require ext_code.size(stor10)
    call stor10.0x52d23633 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNumOfRickHolders() {
    require ext_code.size(stor9)
    call stor9.0xc33df4ba with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNumOfLotteryTickets() {
    require ext_code.size(stor9)
    call stor9.0x353d90ec with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferSuperuser(address arg1) {
    require msg.sender == owner
    require arg1
    mem[160 len 0] = None
    stor1[mem[160 len 9]][address(msg.sender)] = 0
    emit RoleRemoved(msg.sender, 'superuser');
    stor1[0][address(arg1)] = 1
    emit RoleAdded(address(arg1), 'superuser');
}

function balanceOfRick(address arg1) {
    require ext_code.size(stor9)
    call stor9.0xfefd41b9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfMorty(address arg1) {
    require ext_code.size(stor9)
    call stor9.0xebf95043 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfFlurbo(address arg1) {
    require ext_code.size(stor9)
    call stor9.0xb2389da8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function upgradeComponent(uint256 arg1, address arg2) {
    require msg.sender == owner
    if ext_code.size(arg2):
        if arg1 == 1:
            address(stor8.field_8) = arg2
        else:
            if arg1 == 2:
                stor9 = arg2
            else:
                if arg1 == 3:
                    stor10 = arg2
}

function resetDividends() {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor1[mem[160 len 9]][address(msg.sender)]
    require ext_code.size(stor9)
    call stor9.0xc60f6462 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferDividends() {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor1[mem[160 len 9]][address(msg.sender)]
    require ext_code.size(stor10)
    call stor10.0xa8fc32de with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferJackpot(address arg1) {
    require msg.sender == owner
    emit Withdraw(eth.balance(this.address), arg1);
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    previousWeiBalance = 0
    return 0
}

function redeemLottery(uint256 arg1) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor1[mem[160 len 9]][address(msg.sender)]
    require ext_code.size(stor9)
    call stor9.0xdb006a75 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function upgradeEvilMorty() {
    require msg.sender == owner
    require ext_code.size(address(stor8.field_8))
    call address(stor8.field_8).0x81ea6834 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require bool(uint8(stor8.field_0)) == 1
    require msg.sender == address(stor11)
    if arg1 != owner:
        require ext_code.size(stor9)
        call stor9.0xb64afbe5 with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function prepareDividends() {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor1[mem[160 len 9]][address(msg.sender)]
    require ext_code.size(stor10)
    call stor10.0x50a5ebd9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor9)
    call stor9.0xeaf4181a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function finishDividends() {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor1[mem[160 len 9]][address(msg.sender)]
    require ext_code.size(stor10)
    call stor10.0xb139af17 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    call stor9.startPortalGun() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor9)
    call stor9.0x5c3a4c3d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buyMorty() payable {
    require bool(uint8(stor8.field_0)) == 1
    require ext_code.size(address(stor8.field_8))
    call address(stor8.field_8).0xe4db915e with:
         gas gas_remaining wei
        args msg.value, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Refund(ext_call.return_data[0], msg.sender);
    require previousWeiBalance <= eth.balance(this.address)
    if not eth.balance(this.address) - previousWeiBalance:
        require FACTOR
        if not eth.balance(this.address) - previousWeiBalance:
            require FACTOR
            if not eth.balance(this.address) - previousWeiBalance:
                require FACTOR
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR)
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - (2 * 0 / FACTOR)
                call stor10 with:
                   value 0 / FACTOR wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor12 with:
                   value 0 / FACTOR wei
                     gas 2300 * is_zero(value) wei
                call owner with:
                   value eth.balance(this.address) - previousWeiBalance - (3 * 0 / FACTOR) wei
                     gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) - previousWeiBalance
                require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / eth.balance(this.address) - previousWeiBalance == percentWeiMC
                require FACTOR
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR)
                require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR <= eth.balance(this.address) - previousWeiBalance - (2 * 0 / FACTOR)
                call stor10 with:
                   value 0 / FACTOR wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor12 with:
                   value (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR wei
                     gas 2300 * is_zero(value) wei
                call owner with:
                   value eth.balance(this.address) - previousWeiBalance - (2 * 0 / FACTOR) - ((eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR) wei
                     gas 2300 * is_zero(value) wei
        else:
            require eth.balance(this.address) - previousWeiBalance
            require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / eth.balance(this.address) - previousWeiBalance == percentWeiJackpot
            require FACTOR
            if not eth.balance(this.address) - previousWeiBalance:
                require FACTOR
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance
                require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR)
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR)
                call stor10 with:
                   value 0 / FACTOR wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor12 with:
                   value 0 / FACTOR wei
                     gas 2300 * is_zero(value) wei
                call owner with:
                   value eth.balance(this.address) - previousWeiBalance - (2 * 0 / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR) wei
                     gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) - previousWeiBalance
                require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / eth.balance(this.address) - previousWeiBalance == percentWeiMC
                require FACTOR
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance
                require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR)
                require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR)
                call stor10 with:
                   value 0 / FACTOR wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor12 with:
                   value (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR wei
                     gas 2300 * is_zero(value) wei
                call owner with:
                   value eth.balance(this.address) - previousWeiBalance - (0 / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR) - ((eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR) wei
                     gas 2300 * is_zero(value) wei
    else:
        require eth.balance(this.address) - previousWeiBalance
        require (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / eth.balance(this.address) - previousWeiBalance == percentWeiDividend
        require FACTOR
        if not eth.balance(this.address) - previousWeiBalance:
            require FACTOR
            if not eth.balance(this.address) - previousWeiBalance:
                require FACTOR
                require (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR <= eth.balance(this.address) - previousWeiBalance
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR)
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - (0 / FACTOR)
                call stor10 with:
                   value (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor12 with:
                   value 0 / FACTOR wei
                     gas 2300 * is_zero(value) wei
                call owner with:
                   value eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - (2 * 0 / FACTOR) wei
                     gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) - previousWeiBalance
                require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / eth.balance(this.address) - previousWeiBalance == percentWeiMC
                require FACTOR
                require (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR <= eth.balance(this.address) - previousWeiBalance
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR)
                require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - (0 / FACTOR)
                call stor10 with:
                   value (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor12 with:
                   value (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR wei
                     gas 2300 * is_zero(value) wei
                call owner with:
                   value eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - (0 / FACTOR) - ((eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR) wei
                     gas 2300 * is_zero(value) wei
        else:
            require eth.balance(this.address) - previousWeiBalance
            require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / eth.balance(this.address) - previousWeiBalance == percentWeiJackpot
            require FACTOR
            if not eth.balance(this.address) - previousWeiBalance:
                require FACTOR
                require (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR <= eth.balance(this.address) - previousWeiBalance
                require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR)
                require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR)
                call stor10 with:
                   value (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor12 with:
                   value 0 / FACTOR wei
                     gas 2300 * is_zero(value) wei
                call owner with:
                   value eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR) - (0 / FACTOR) wei
                     gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) - previousWeiBalance
                require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / eth.balance(this.address) - previousWeiBalance == percentWeiMC
                require FACTOR
                require (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR <= eth.balance(this.address) - previousWeiBalance
                require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR)
                require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR)
                call stor10 with:
                   value (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor12 with:
                   value (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR wei
                     gas 2300 * is_zero(value) wei
                call owner with:
                   value eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR) - ((eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR) wei
                     gas 2300 * is_zero(value) wei
    previousWeiBalance = eth.balance(this.address)
}

function _fallback() payable {
    if owner != msg.sender:
        require bool(uint8(stor8.field_0)) == 1
        require ext_code.size(address(stor8.field_8))
        call address(stor8.field_8).0xe4db915e with:
             gas gas_remaining wei
            args msg.value, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Refund(ext_call.return_data[0], msg.sender);
        require previousWeiBalance <= eth.balance(this.address)
        if not eth.balance(this.address) - previousWeiBalance:
            require FACTOR
            if not eth.balance(this.address) - previousWeiBalance:
                require FACTOR
                if not eth.balance(this.address) - previousWeiBalance:
                    require FACTOR
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR)
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - (2 * 0 / FACTOR)
                    call stor10 with:
                       value 0 / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor12 with:
                       value 0 / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    call owner with:
                       value eth.balance(this.address) - previousWeiBalance - (3 * 0 / FACTOR) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require eth.balance(this.address) - previousWeiBalance
                    require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / eth.balance(this.address) - previousWeiBalance == percentWeiMC
                    require FACTOR
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR)
                    require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR <= eth.balance(this.address) - previousWeiBalance - (2 * 0 / FACTOR)
                    call stor10 with:
                       value 0 / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor12 with:
                       value (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    call owner with:
                       value eth.balance(this.address) - previousWeiBalance - (2 * 0 / FACTOR) - ((eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR) wei
                         gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) - previousWeiBalance
                require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / eth.balance(this.address) - previousWeiBalance == percentWeiJackpot
                require FACTOR
                if not eth.balance(this.address) - previousWeiBalance:
                    require FACTOR
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance
                    require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR)
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR)
                    call stor10 with:
                       value 0 / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor12 with:
                       value 0 / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    call owner with:
                       value eth.balance(this.address) - previousWeiBalance - (2 * 0 / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require eth.balance(this.address) - previousWeiBalance
                    require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / eth.balance(this.address) - previousWeiBalance == percentWeiMC
                    require FACTOR
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance
                    require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR)
                    require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR <= eth.balance(this.address) - previousWeiBalance - (0 / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR)
                    call stor10 with:
                       value 0 / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor12 with:
                       value (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    call owner with:
                       value eth.balance(this.address) - previousWeiBalance - (0 / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR) - ((eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR) wei
                         gas 2300 * is_zero(value) wei
        else:
            require eth.balance(this.address) - previousWeiBalance
            require (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / eth.balance(this.address) - previousWeiBalance == percentWeiDividend
            require FACTOR
            if not eth.balance(this.address) - previousWeiBalance:
                require FACTOR
                if not eth.balance(this.address) - previousWeiBalance:
                    require FACTOR
                    require (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR <= eth.balance(this.address) - previousWeiBalance
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR)
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - (0 / FACTOR)
                    call stor10 with:
                       value (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor12 with:
                       value 0 / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    call owner with:
                       value eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - (2 * 0 / FACTOR) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require eth.balance(this.address) - previousWeiBalance
                    require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / eth.balance(this.address) - previousWeiBalance == percentWeiMC
                    require FACTOR
                    require (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR <= eth.balance(this.address) - previousWeiBalance
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR)
                    require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - (0 / FACTOR)
                    call stor10 with:
                       value (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor12 with:
                       value (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    call owner with:
                       value eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - (0 / FACTOR) - ((eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR) wei
                         gas 2300 * is_zero(value) wei
            else:
                require eth.balance(this.address) - previousWeiBalance
                require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / eth.balance(this.address) - previousWeiBalance == percentWeiJackpot
                require FACTOR
                if not eth.balance(this.address) - previousWeiBalance:
                    require FACTOR
                    require (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR <= eth.balance(this.address) - previousWeiBalance
                    require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR)
                    require 0 / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR)
                    call stor10 with:
                       value (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor12 with:
                       value 0 / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    call owner with:
                       value eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR) - (0 / FACTOR) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require eth.balance(this.address) - previousWeiBalance
                    require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / eth.balance(this.address) - previousWeiBalance == percentWeiMC
                    require FACTOR
                    require (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR <= eth.balance(this.address) - previousWeiBalance
                    require (eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR)
                    require (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR <= eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR)
                    call stor10 with:
                       value (eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor12 with:
                       value (eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR wei
                         gas 2300 * is_zero(value) wei
                    call owner with:
                       value eth.balance(this.address) - previousWeiBalance - ((eth.balance(this.address) * percentWeiDividend) - (previousWeiBalance * percentWeiDividend) / FACTOR) - ((eth.balance(this.address) * percentWeiJackpot) - (previousWeiBalance * percentWeiJackpot) / FACTOR) - ((eth.balance(this.address) * percentWeiMC) - (previousWeiBalance * percentWeiMC) / FACTOR) wei
                         gas 2300 * is_zero(value) wei
        previousWeiBalance = eth.balance(this.address)
}



}
