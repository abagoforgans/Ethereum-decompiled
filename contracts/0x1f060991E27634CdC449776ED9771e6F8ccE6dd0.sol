contract main {




// =====================  Runtime code  =====================


const ROLE_WHITELISTED = 'whitelist'

const ROLE_SUPERUSER = 'superuser'


address owner;
mapping of uint8 stor1;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint256 round;
uint256 lastRound;
mapping of uint8 stor99;

function round() {
    return round
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function lastRound() {
    return lastRound
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function whitelist(address arg1) {
    mem[160 len 0] = None
    mem[160] = bool(stor1[mem[160 len 9]][address(arg1)])
    return memory
      from 160
       len 32
}

function isSuperuser(address arg1) {
    mem[160 len 0] = None
    mem[160] = bool(stor1[mem[160 len 9]][address(arg1)])
    return memory
      from 160
       len 32
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor1[mem[160 len 9]][address(arg1)] = 1
    emit RoleAdded('whitelist', arg1);
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor1[mem[160 len 9]][address(arg1)] = 0
    emit RoleRemoved('whitelist', arg1);
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        mem[160 len 0] = None
        require stor1[mem[160 len 9]][address(msg.sender)]
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferSuperuser(address arg1) {
    mem[160 len 0] = None
    require stor1[mem[160 len 9]][address(msg.sender)]
    require arg1
    mem[224 len 0] = None
    stor1[mem[224 len 9]][address(msg.sender)] = 0
    emit RoleRemoved('superuser', msg.sender);
    stor1[Mask(72, 0, 'superuser')][address(arg1)] = 1
    emit RoleAdded('superuser', arg1);
}

function bumpRound(uint256 arg1) {
    require msg.sender == owner
    round++
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lastRound = ext_call.return_data[0]
    rate = arg1
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

function addAddressesToWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _23 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _24 = mem[64]
        mem[64] = mem[64] + 64
        mem[_24] = 9
        mem[_24 + 32] = 'whitelist'
        t = _24 + 32
        u = mem[64]
        s = mem[_24]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_24])] = mem[_24 + floor32(mem[_24]) + -(mem[_24] % 32) + 64 len mem[_24] % 32] or Mask(8 * -(mem[_24] % 32) + 32, -(8 * -(mem[_24] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_24])])
        mem[mem[64] + 9] = 1
        _43 = sha3(mem[mem[64] len 9], 1)
        mem[0] = address(_23)
        mem[32] = _43
        stor[_43][address(_23)] = 1
        _46 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_24]
        _48 = mem[_24]
        s = 0
        while s < _48:
            mem[_46 + s + 64] = mem[_24 + s + 32]
            s = s + 32
            continue 
        if not _48 % 32:
            emit RoleAdded(mem[mem[64] len _48 + _46 + -mem[64] + 64], address(_23));
        else:
            mem[floor32(_48) + _46 + 64] = mem[floor32(_48) + _46 + -(_48 % 32) + 96 len _48 % 32]
            emit RoleAdded(mem[mem[64] len floor32(_48) + _46 + -mem[64] + 96], address(_23));
        idx = idx + 1
        continue 
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _23 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _24 = mem[64]
        mem[64] = mem[64] + 64
        mem[_24] = 9
        mem[_24 + 32] = 'whitelist'
        t = _24 + 32
        u = mem[64]
        s = mem[_24]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_24])] = mem[_24 + floor32(mem[_24]) + -(mem[_24] % 32) + 64 len mem[_24] % 32] or Mask(8 * -(mem[_24] % 32) + 32, -(8 * -(mem[_24] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_24])])
        mem[mem[64] + 9] = 1
        _43 = sha3(mem[mem[64] len 9], 1)
        mem[0] = address(_23)
        mem[32] = _43
        stor[_43][address(_23)] = 0
        _46 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_24]
        _48 = mem[_24]
        s = 0
        while s < _48:
            mem[_46 + s + 64] = mem[_24 + s + 32]
            s = s + 32
            continue 
        if not _48 % 32:
            emit RoleRemoved(mem[mem[64] len _48 + _46 + -mem[64] + 64], address(_23));
        else:
            mem[floor32(_48) + _46 + 64] = mem[floor32(_48) + _46 + -(_48 % 32) + 96 len _48 % 32]
            emit RoleRemoved(mem[mem[64] len floor32(_48) + _46 + -mem[64] + 96], address(_23));
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require ext_call.return_data[0] >= 0
        require ext_call.return_data[0] < 87191358 * 10^16 * 24 * 3600
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require (msg.value * rate) + ext_call.return_data[0] >= msg.value * rate
        require (msg.value * rate) + ext_call.return_data[0] < 87191358 * 10^16 * 24 * 3600
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require ext_call.return_data[0] >= 0
        if round != 4:
            if round == 3:
                if block.timestamp >= 429888 * 24 * 3600:
                    round++
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lastRound = ext_call.return_data[0]
                    rate = 32481
                else:
                    require lastRound <= ext_call.return_data[0]
                    if ext_call.return_data[0] - lastRound >= 666666667 * 10^18:
                        round++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastRound = ext_call.return_data[0]
                        rate = 32481
            else:
                if round == 2:
                    if block.timestamp >= 428784 * 24 * 3600:
                        round++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastRound = ext_call.return_data[0]
                        rate = 38977
                    else:
                        require lastRound <= ext_call.return_data[0]
                        if ext_call.return_data[0] - lastRound >= 925925925 * 10^14 * 24 * 3600:
                            round++
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            lastRound = ext_call.return_data[0]
                            rate = 38977
                else:
                    if round == 1:
                        if block.timestamp >= 427680 * 24 * 3600:
                            round++
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            lastRound = ext_call.return_data[0]
                            rate = 48721
                        else:
                            require lastRound <= ext_call.return_data[0]
                            if ext_call.return_data[0] - lastRound >= 250000000 * 10^18:
                                round++
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                lastRound = ext_call.return_data[0]
                                rate = 48721
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require (msg.value * rate) + ext_call.return_data[0] >= msg.value * rate
        if round != 4:
            if round == 3:
                if block.timestamp >= 429888 * 24 * 3600:
                    round++
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lastRound = ext_call.return_data[0]
                    rate = 32481
                else:
                    require lastRound <= (msg.value * rate) + ext_call.return_data[0]
                    if (msg.value * rate) + ext_call.return_data[0] - lastRound >= 666666667 * 10^18:
                        round++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastRound = ext_call.return_data[0]
                        rate = 32481
            else:
                if round == 2:
                    if block.timestamp >= 428784 * 24 * 3600:
                        round++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastRound = ext_call.return_data[0]
                        rate = 38977
                    else:
                        require lastRound <= (msg.value * rate) + ext_call.return_data[0]
                        if (msg.value * rate) + ext_call.return_data[0] - lastRound >= 925925925 * 10^14 * 24 * 3600:
                            round++
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            lastRound = ext_call.return_data[0]
                            rate = 38977
                else:
                    if round == 1:
                        if block.timestamp >= 427680 * 24 * 3600:
                            round++
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            lastRound = ext_call.return_data[0]
                            rate = 48721
                        else:
                            require lastRound <= (msg.value * rate) + ext_call.return_data[0]
                            if (msg.value * rate) + ext_call.return_data[0] - lastRound >= 250000000 * 10^18:
                                round++
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                lastRound = ext_call.return_data[0]
                                rate = 48721
    mem[160 len 0] = None
    require stor1[mem[160 len 9]][address(arg1)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require ext_call.return_data[0] >= 0
        require ext_call.return_data[0] < 87191358 * 10^16 * 24 * 3600
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require (msg.value * rate) + ext_call.return_data[0] >= msg.value * rate
        require (msg.value * rate) + ext_call.return_data[0] < 87191358 * 10^16 * 24 * 3600
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require ext_call.return_data[0] >= 0
        if round != 4:
            if round == 3:
                if block.timestamp >= 429888 * 24 * 3600:
                    round++
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lastRound = ext_call.return_data[0]
                    rate = 32481
                else:
                    require lastRound <= ext_call.return_data[0]
                    if ext_call.return_data[0] - lastRound >= 666666667 * 10^18:
                        round++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastRound = ext_call.return_data[0]
                        rate = 32481
            else:
                if round == 2:
                    if block.timestamp >= 428784 * 24 * 3600:
                        round++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastRound = ext_call.return_data[0]
                        rate = 38977
                    else:
                        require lastRound <= ext_call.return_data[0]
                        if ext_call.return_data[0] - lastRound >= 925925925 * 10^14 * 24 * 3600:
                            round++
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            lastRound = ext_call.return_data[0]
                            rate = 38977
                else:
                    if round == 1:
                        if block.timestamp >= 427680 * 24 * 3600:
                            round++
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            lastRound = ext_call.return_data[0]
                            rate = 48721
                        else:
                            require lastRound <= ext_call.return_data[0]
                            if ext_call.return_data[0] - lastRound >= 250000000 * 10^18:
                                round++
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                lastRound = ext_call.return_data[0]
                                rate = 48721
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require (msg.value * rate) + ext_call.return_data[0] >= msg.value * rate
        if round != 4:
            if round == 3:
                if block.timestamp >= 429888 * 24 * 3600:
                    round++
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lastRound = ext_call.return_data[0]
                    rate = 32481
                else:
                    require lastRound <= (msg.value * rate) + ext_call.return_data[0]
                    if (msg.value * rate) + ext_call.return_data[0] - lastRound >= 666666667 * 10^18:
                        round++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastRound = ext_call.return_data[0]
                        rate = 32481
            else:
                if round == 2:
                    if block.timestamp >= 428784 * 24 * 3600:
                        round++
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastRound = ext_call.return_data[0]
                        rate = 38977
                    else:
                        require lastRound <= (msg.value * rate) + ext_call.return_data[0]
                        if (msg.value * rate) + ext_call.return_data[0] - lastRound >= 925925925 * 10^14 * 24 * 3600:
                            round++
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            lastRound = ext_call.return_data[0]
                            rate = 38977
                else:
                    if round == 1:
                        if block.timestamp >= 427680 * 24 * 3600:
                            round++
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            lastRound = ext_call.return_data[0]
                            rate = 48721
                        else:
                            require lastRound <= (msg.value * rate) + ext_call.return_data[0]
                            if (msg.value * rate) + ext_call.return_data[0] - lastRound >= 250000000 * 10^18:
                                round++
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                lastRound = ext_call.return_data[0]
                                rate = 48721
    mem[160 len 0] = None
    require stor1[mem[160 len 9]][address(msg.sender)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
