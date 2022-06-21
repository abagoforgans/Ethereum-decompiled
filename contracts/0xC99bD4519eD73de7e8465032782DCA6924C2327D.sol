contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const sub_13e65069(?) = 10

const sub_2d5381da(?) = 143

const sub_76a29f23(?) = 15

const sub_7b77bbd7(?) = 0x9e35ee118d9b305f27ae1234bf5c035c1860989c

const sub_887c9e73(?) = (432130 * 3600)

const sub_9c9d53ac(?) = 200 * 10^6

const sub_aaeee9e5(?) = 1555970399

const sub_cfe3c884(?) = 2200 * 10^6

const sub_d37a85cd(?) = 5

const ONE_YEAR = (8760 * 24 * 3600)

const ROLE_WHITELISTED = Array(len=9, data=code.data[9854 len 9])

const TEAM_WALLET = 0x992cead41b885dc90ef82673c3c211efa1ef1ae2

const TWO = 2

const BONUS_DURATION = (336 * 24 * 3600)

const PRECISION = 10^6

const FOUR = 4

const HUNDRED = 100


address owner;
mapping of uint8 stor1;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint8 stor9;
uint8 stor9; offset 8
uint8 stor9; offset 16
array of address sub_e08d72ac;
address stor11;
address stor12;
mapping of uint8 stor13;
uint256 tokensMinted;
uint256 rateDecimals;
mapping of uint8 stor99;

function rateDecimals() {
    return rateDecimals
}

function rate() {
    return rate
}

function cap() {
    return cap
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

function paused() {
    return bool(uint8(stor9.field_8))
}

function tokensMinted() {
    return tokensMinted
}

function isFinalized() {
    return bool(uint8(stor9.field_0))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(uint8(stor1[Mask(72, 184, code.data[9831 len 32]) >> 184][address(arg1)]))
}

function openingTime() {
    return openingTime
}

function sub_cd9b68d1(?) {
    return bool(uint8(stor9.field_16))
}

function sub_e08d72ac(?) {
    require arg1 < 3
    return sub_e08d72ac[arg1]
}

function isManager(address arg1) {
    return bool(stor13[arg1])
}

function token() {
    return tokenAddress
}

function capReached() {
    return tokensMinted >= cap
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    if not stor13[msg.sender]:
        revert with 0, 32, 11, code.data[9799 len 32]
    require uint8(stor9.field_8)
    uint8(stor9.field_8) = 0
    emit Unpause()
}

function setManager(address arg1, bool arg2) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'invalid address'
    stor13[address(arg1)] = uint8(arg2)
    emit ChangedManager(arg2, arg1);
}

function sub_d2de7f18(?) {
    idx = 192
    s = 10
    while 288 > idx + 32:
        mem[idx + 32] = address(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return sub_e08d72ac.length, mem[224 len 64]
}

function pause() {
    if not stor13[msg.sender]:
        revert with 0, 32, 11, code.data[9799 len 32]
    require not uint8(stor9.field_8)
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    uint8(stor9.field_8) = 1
    emit Pause()
}

function addAddressToWhitelist(address arg1) {
    if not stor13[msg.sender]:
        revert with 0, 32, 11, code.data[9799 len 32]
    uint8(stor1[Mask(72, 184, code.data[9831 len 32]) >> 184][address(arg1)]) = 1
    emit RoleAdded(Array(len=9, data=code.data[9854 len 9]), arg1);
}

function removeAddressFromWhitelist(address arg1) {
    if not stor13[msg.sender]:
        revert with 0, 32, 11, code.data[9799 len 32]
    uint8(stor1[Mask(72, 184, code.data[9831 len 32]) >> 184][address(arg1)]) = 0
    emit RoleRemoved(Array(len=9, data=code.data[9854 len 9]), arg1);
}

function updateRate(uint256 arg1, uint256 arg2) {
    if not stor13[msg.sender]:
        revert with 0, 32, 11, code.data[9799 len 32]
    require arg2 <= 18
    rateDecimals = 10^arg2
    if not arg1:
        rate = 0
    else:
        require 10000 * arg1 / arg1 == 10000
        if not 10000 * arg1:
            rate = 0
        else:
            require 10^10 * arg1 / 10000 * arg1 == 10^6
            rate = 10^10 * arg1 / 143
    emit 0x1632e064: arg1, arg2
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function finalize() {
    if not stor13[msg.sender]:
        revert with 0, 32, 11, code.data[9799 len 32]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require not uint8(stor9.field_0)
    require block.timestamp > closingTime
    emit Finalized()
    uint8(stor9.field_0) = 1
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function sub_0be6315d(?) {
    if not stor13[msg.sender]:
        revert with 0, 32, 11, code.data[9799 len 32]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    if not arg2:
        revert with 0, 'invalid address'
    if arg3 <= 0:
        revert with 0, 'invalid amount'
    require arg3 + tokensMinted >= tokensMinted
    tokensMinted += arg3
    if cap < arg3 + tokensMinted:
        revert with 0, 'tokensMinted > cap'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x747cb234: arg1, arg3, arg2
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_2de49b10(?) {
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'length !='
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0, 'length !='
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        mem[0] = msg.sender
        mem[32] = 13
        if not stor13[msg.sender]:
            revert with 0, 32, 11, code.data[9799 len 32]
        require block.timestamp >= openingTime
        require block.timestamp <= closingTime
        if not address(cd[((32 * idx) + cd[36] + 36)]):
            revert with 0, 'invalid address'
        if cd[((32 * idx) + cd[68] + 36)] <= 0:
            revert with 0, 'invalid amount'
        require cd[((32 * idx) + cd[68] + 36)] + tokensMinted >= tokensMinted
        tokensMinted += cd[((32 * idx) + cd[68] + 36)]
        if cap < cd[((32 * idx) + cd[68] + 36)] + tokensMinted:
            revert with 0, 'tokensMinted > cap'
        mem[132] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[96] = cd[((32 * idx) + cd[4] + 36)]
        mem[128] = cd[((32 * idx) + cd[68] + 36)]
        emit 0x747cb234: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[68] + 36)], address(cd[((32 * idx) + cd[36] + 36)])
        require idx + 1 >= idx
        idx = idx + 1
        continue 
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[0] = msg.sender
    mem[32] = 13
    if not stor13[msg.sender]:
        revert with 0, 32, 11, code.data[9799 len 32]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _35 = mem[(32 * idx) + 128]
        mem[0] = msg.sender
        mem[32] = 13
        if not stor13[msg.sender]:
            revert with 0, 32, 11, code.data[9799 len 32]
        _37 = mem[64]
        mem[64] = mem[64] + 64
        mem[_37] = 9
        mem[0] = msg.sender
        mem[_37 + 32] = code.data[9831 len 32]
        _44 = mem[64]
        t = _37 + 32
        u = mem[64]
        s = mem[_37]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_37])] = 256^(-(mem[_37] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_37])] or mem[_37 + floor32(mem[_37]) + 32] and !(256^(-(mem[_37] % 32) + 32) - 1)
        mem[_44 + 9] = 1
        _62 = sha3(mem[mem[64] len _44 + -mem[64] + 41])
        mem[0] = address(_35)
        mem[32] = _62
        stor[_62][address(_35)] = 0
        _65 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_37]
        _67 = mem[_37]
        s = 0
        while s < _67:
            mem[s + _65 + 64] = mem[s + _37 + 32]
            s = s + 32
            continue 
        if not _67 % 32:
            emit RoleRemoved(mem[mem[64] len _67 + _65 + -mem[64] + 64], address(_35));
        else:
            mem[floor32(_67) + _65 + 64] = mem[floor32(_67) + _65 + -(_67 % 32) + 96 len _67 % 32]
            emit RoleRemoved(mem[mem[64] len floor32(_67) + _65 + -mem[64] + 96], address(_35));
        idx = idx + 1
        continue 
}

function mintTeamTokens() {
    if not stor13[msg.sender]:
        revert with 0, 32, 11, code.data[9799 len 32]
    if uint8(stor9.field_16):
        revert with 0, 'team tokens already minted'
    uint8(stor9.field_16) = 1
    require openingTime + (8760 * 24 * 3600) >= openingTime
    create contract with 0 wei
                    code: code.data[8958 len 841], tokenAddress, 0x992cead41b885dc90ef82673c3c211efa1ef1ae2, openingTime + (8760 * 24 * 3600)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require openingTime + (17520 * 24 * 3600) >= openingTime
    create contract with 0 wei
                    code: code.data[8958 len 841], tokenAddress, 0x992cead41b885dc90ef82673c3c211efa1ef1ae2, openingTime + (17520 * 24 * 3600)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require openingTime + (26280 * 24 * 3600) >= openingTime
    create contract with 0 wei
                    code: code.data[8958 len 841], tokenAddress, 0x992cead41b885dc90ef82673c3c211efa1ef1ae2, openingTime + (26280 * 24 * 3600)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e08d72ac.length = address(create.new_address)
    stor11 = address(create.new_address)
    stor12 = address(create.new_address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(create.new_address), 50 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(create.new_address), 50 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(create.new_address), 100 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function addAddressesToWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[0] = msg.sender
    mem[32] = 13
    if not stor13[msg.sender]:
        revert with 0, 32, 11, code.data[9799 len 32]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _39 = mem[(32 * idx) + 128]
        mem[0] = msg.sender
        mem[32] = 13
        if not stor13[msg.sender]:
            revert with 0, 32, 11, code.data[9799 len 32]
        _41 = mem[64]
        mem[64] = mem[64] + 64
        mem[_41] = 9
        mem[0] = msg.sender
        mem[_41 + 32] = code.data[9831 len 32]
        _48 = mem[64]
        t = _41 + 32
        u = mem[64]
        s = mem[_41]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_41])] = 256^(-(mem[_41] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_41])] or mem[_41 + floor32(mem[_41]) + 32] and !(256^(-(mem[_41] % 32) + 32) - 1)
        mem[_48 + 9] = 1
        _70 = sha3(mem[mem[64] len _48 + -mem[64] + 41])
        mem[0] = address(_39)
        mem[32] = _70
        stor[_70][address(_39)] = 1
        _73 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_41]
        _75 = mem[_41]
        if 0 >= mem[_41]:
            if not mem[_41] % 32:
                emit RoleAdded(address arg1, string arg2):
                               32,
                               mem[mem[64] + 32 len mem[_41] + 32],
                               address(_39),
            else:
                mem[floor32(mem[_41]) + mem[64] + 64] = mem[floor32(mem[_41]) + mem[64] + -(mem[_41] % 32) + 96 len mem[_41] % 32]
                emit RoleAdded(mem[mem[64] len floor32(_75) + _73 + -mem[64] + 96], address(_39));
        else:
            mem[mem[64] + 64] = mem[_41 + 32]
            s = 32
            while s < _75:
                mem[s + mem[64] + 64] = mem[s + _41 + 32]
                s = s + 32
                continue 
            if not _75 % 32:
                emit RoleAdded(mem[mem[64] len _75 + _73 + -mem[64] + 64], address(_39));
            else:
                mem[floor32(_75) + _73 + 64] = mem[floor32(_75) + _73 + -(_75 % 32) + 96 len _75 % 32]
                emit RoleAdded(mem[mem[64] len floor32(_75) + _73 + -mem[64] + 96], address(_39));
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require not uint8(stor9.field_8)
    require uint8(stor1[Mask(72, 184, code.data[9831 len 32]) >> 184][address(arg1)])
    if not msg.value:
        revert with 0, 'invalid amount'
    if tokensMinted >= cap:
        revert with 0, 'cap has been reached'
    if not msg.value:
        require rateDecimals
        if not 0 / rateDecimals / 10^18 / 10^6:
            require rate
            if 0 / rate >= msg.value:
                require 0 <= msg.value
                require openingTime + (336 * 24 * 3600) >= openingTime
                if block.timestamp < openingTime + (336 * 24 * 3600):
                    if not 0 / rateDecimals / 10^18 / 10^6:
                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                            revert with 0, 'tokensMinted > cap'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                    else:
                        require 15 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 15
                        require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                        tokensMinted = (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                        if cap < (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                            revert with 0, 'tokensMinted > cap'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                else:
                    require openingTime + (672 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (672 * 24 * 3600):
                        if not 0 / rateDecimals / 10^18 / 10^6:
                            require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                            if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                        else:
                            require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                            require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                            if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    else:
                        require openingTime + (1008 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (1008 * 24 * 3600):
                            if not 0 / rateDecimals / 10^18 / 10^6:
                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 5 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 5
                                require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            if block.timestamp < 432130 * 3600:
                                if 0 / rateDecimals / 10^18 / 10^6:
                                    require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                if block.timestamp >= 1555970399:
                                    if 0 / rateDecimals / 10^18 / 10^6:
                                        require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                    require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                    if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    if not 0 / rateDecimals / 10^18 / 10^6:
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                        require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                require 0 / rate <= msg.value
                if msg.value - (0 / rate) > 0:
                    call msg.sender with:
                       value msg.value - (0 / rate) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit RefundAmount((msg.value - (0 / rate)), msg.sender);
                    require msg.value - (0 / rate) <= msg.value
                require openingTime + (336 * 24 * 3600) >= openingTime
                if block.timestamp < openingTime + (336 * 24 * 3600):
                    if not 0 / rateDecimals / 10^18 / 10^6:
                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                        require (0 / rate) + weiRaised >= weiRaised
                        weiRaised += 0 / rate
                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                            revert with 0, 'tokensMinted > cap'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                    else:
                        require 15 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 15
                        require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                        require (0 / rate) + weiRaised >= weiRaised
                        weiRaised += 0 / rate
                        require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                        tokensMinted = (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                        if cap < (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                            revert with 0, 'tokensMinted > cap'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(0 / rate, (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                else:
                    require openingTime + (672 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (672 * 24 * 3600):
                        if not 0 / rateDecimals / 10^18 / 10^6:
                            require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                            require (0 / rate) + weiRaised >= weiRaised
                            weiRaised += 0 / rate
                            require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                            if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                        else:
                            require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                            require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                            require (0 / rate) + weiRaised >= weiRaised
                            weiRaised += 0 / rate
                            require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                            if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(0 / rate, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    else:
                        require openingTime + (1008 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (1008 * 24 * 3600):
                            if not 0 / rateDecimals / 10^18 / 10^6:
                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 5 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 5
                                require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            if block.timestamp < 432130 * 3600:
                                if 0 / rateDecimals / 10^18 / 10^6:
                                    require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                if block.timestamp >= 1555970399:
                                    if 0 / rateDecimals / 10^18 / 10^6:
                                        require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                    require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                    if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    if not 0 / rateDecimals / 10^18 / 10^6:
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                        require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                call walletAddress with:
                   value 0 / rate wei
                     gas 2300 * is_zero(value) wei
        else:
            require 10^18 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10^18
            if not 10^18 * 0 / rateDecimals / 10^18 / 10^6:
                require rate
                if 0 / rate >= msg.value:
                    require 0 <= msg.value
                    require openingTime + (336 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (336 * 24 * 3600):
                        if not 0 / rateDecimals / 10^18 / 10^6:
                            require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                            if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                        else:
                            require 15 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 15
                            require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted = (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                            if cap < (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    else:
                        require openingTime + (672 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (672 * 24 * 3600):
                            if not 0 / rateDecimals / 10^18 / 10^6:
                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (1008 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (1008 * 24 * 3600):
                                if not 0 / rateDecimals / 10^18 / 10^6:
                                    require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                    if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 5 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 5
                                    require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                if block.timestamp < 432130 * 3600:
                                    if 0 / rateDecimals / 10^18 / 10^6:
                                        require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                    require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                    if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    if block.timestamp >= 1555970399:
                                        if 0 / rateDecimals / 10^18 / 10^6:
                                            require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if not 0 / rateDecimals / 10^18 / 10^6:
                                            require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                            if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                            require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                            if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require 0 / rate <= msg.value
                    if msg.value - (0 / rate) > 0:
                        call msg.sender with:
                           value msg.value - (0 / rate) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit RefundAmount((msg.value - (0 / rate)), msg.sender);
                        require msg.value - (0 / rate) <= msg.value
                    require openingTime + (336 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (336 * 24 * 3600):
                        if not 0 / rateDecimals / 10^18 / 10^6:
                            require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                            require (0 / rate) + weiRaised >= weiRaised
                            weiRaised += 0 / rate
                            require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                            if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                        else:
                            require 15 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 15
                            require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                            require (0 / rate) + weiRaised >= weiRaised
                            weiRaised += 0 / rate
                            require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted = (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                            if cap < (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(0 / rate, (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    else:
                        require openingTime + (672 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (672 * 24 * 3600):
                            if not 0 / rateDecimals / 10^18 / 10^6:
                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (1008 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (1008 * 24 * 3600):
                                if not 0 / rateDecimals / 10^18 / 10^6:
                                    require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                    if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 5 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 5
                                    require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                if block.timestamp < 432130 * 3600:
                                    if 0 / rateDecimals / 10^18 / 10^6:
                                        require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                    require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                    if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    if block.timestamp >= 1555970399:
                                        if 0 / rateDecimals / 10^18 / 10^6:
                                            require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if not 0 / rateDecimals / 10^18 / 10^6:
                                            require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                            require (0 / rate) + weiRaised >= weiRaised
                                            weiRaised += 0 / rate
                                            require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                            if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                            require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                            require (0 / rate) + weiRaised >= weiRaised
                                            weiRaised += 0 / rate
                                            require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                            if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(0 / rate, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    call walletAddress with:
                       value 0 / rate wei
                         gas 2300 * is_zero(value) wei
            else:
                require 1000000 * 10^18 * 0 / rateDecimals / 10^18 / 10^6 / 10^18 * 0 / rateDecimals / 10^18 / 10^6 == 10^6
                if not 1000000 * 10^18 * 0 / rateDecimals / 10^18 / 10^6:
                    require rate
                    if 0 / rate >= msg.value:
                        require 0 <= msg.value
                        require openingTime + (336 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (336 * 24 * 3600):
                            if not 0 / rateDecimals / 10^18 / 10^6:
                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 15 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 15
                                require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (672 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (672 * 24 * 3600):
                                if not 0 / rateDecimals / 10^18 / 10^6:
                                    require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                    if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                    require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                require openingTime + (1008 * 24 * 3600) >= openingTime
                                if block.timestamp < openingTime + (1008 * 24 * 3600):
                                    if not 0 / rateDecimals / 10^18 / 10^6:
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 5 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 5
                                        require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                                else:
                                    if block.timestamp < 432130 * 3600:
                                        if 0 / rateDecimals / 10^18 / 10^6:
                                            require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if block.timestamp >= 1555970399:
                                            if 0 / rateDecimals / 10^18 / 10^6:
                                                require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                            require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                            if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            if not 0 / rateDecimals / 10^18 / 10^6:
                                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                            else:
                                                require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                                if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(msg.value, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / rate <= msg.value
                        if msg.value - (0 / rate) > 0:
                            call msg.sender with:
                               value msg.value - (0 / rate) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit RefundAmount((msg.value - (0 / rate)), msg.sender);
                            require msg.value - (0 / rate) <= msg.value
                        require openingTime + (336 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (336 * 24 * 3600):
                            if not 0 / rateDecimals / 10^18 / 10^6:
                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 15 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 15
                                require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (672 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (672 * 24 * 3600):
                                if not 0 / rateDecimals / 10^18 / 10^6:
                                    require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                    if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                    require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                require openingTime + (1008 * 24 * 3600) >= openingTime
                                if block.timestamp < openingTime + (1008 * 24 * 3600):
                                    if not 0 / rateDecimals / 10^18 / 10^6:
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 5 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 5
                                        require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                                else:
                                    if block.timestamp < 432130 * 3600:
                                        if 0 / rateDecimals / 10^18 / 10^6:
                                            require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if block.timestamp >= 1555970399:
                                            if 0 / rateDecimals / 10^18 / 10^6:
                                                require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                            require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                            require (0 / rate) + weiRaised >= weiRaised
                                            weiRaised += 0 / rate
                                            require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                            if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            if not 0 / rateDecimals / 10^18 / 10^6:
                                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                                require (0 / rate) + weiRaised >= weiRaised
                                                weiRaised += 0 / rate
                                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(0 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                            else:
                                                require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                                require (0 / rate) + weiRaised >= weiRaised
                                                weiRaised += 0 / rate
                                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                                if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(0 / rate, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        call walletAddress with:
                           value 0 / rate wei
                             gas 2300 * is_zero(value) wei
                else:
                    require 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / 1000000 * 10^18 * 0 / rateDecimals / 10^18 / 10^6 == rateDecimals
                    require rate
                    if 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate >= msg.value:
                        require 0 <= msg.value
                        require openingTime + (336 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (336 * 24 * 3600):
                            if not 0 / rateDecimals / 10^18 / 10^6:
                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 15 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 15
                                require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (672 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (672 * 24 * 3600):
                                if not 0 / rateDecimals / 10^18 / 10^6:
                                    require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                    if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                    require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                require openingTime + (1008 * 24 * 3600) >= openingTime
                                if block.timestamp < openingTime + (1008 * 24 * 3600):
                                    if not 0 / rateDecimals / 10^18 / 10^6:
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 5 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 5
                                        require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                                else:
                                    if block.timestamp < 432130 * 3600:
                                        if 0 / rateDecimals / 10^18 / 10^6:
                                            require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if block.timestamp >= 1555970399:
                                            if 0 / rateDecimals / 10^18 / 10^6:
                                                require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                            require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                            if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            if not 0 / rateDecimals / 10^18 / 10^6:
                                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(msg.value, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                            else:
                                                require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                                if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(msg.value, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate <= msg.value
                        if msg.value - (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) > 0:
                            call msg.sender with:
                               value msg.value - (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit RefundAmount((msg.value - (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate)), msg.sender);
                            require msg.value - (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) <= msg.value
                        require openingTime + (336 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (336 * 24 * 3600):
                            if not 0 / rateDecimals / 10^18 / 10^6:
                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                require (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                weiRaised += 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate
                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 15 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 15
                                require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                require (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                weiRaised += 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate
                                require (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate, (15 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (672 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (672 * 24 * 3600):
                                if not 0 / rateDecimals / 10^18 / 10^6:
                                    require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                    require (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                    weiRaised += 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate
                                    require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                    if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                    require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                    require (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                    weiRaised += 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate
                                    require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                require openingTime + (1008 * 24 * 3600) >= openingTime
                                if block.timestamp < openingTime + (1008 * 24 * 3600):
                                    if not 0 / rateDecimals / 10^18 / 10^6:
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                        weiRaised += 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 5 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 5
                                        require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                        require (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                        weiRaised += 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate
                                        require (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate, (5 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                                else:
                                    if block.timestamp < 432130 * 3600:
                                        if 0 / rateDecimals / 10^18 / 10^6:
                                            require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                        require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                        require (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                        weiRaised += 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate
                                        require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                        if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if block.timestamp >= 1555970399:
                                            if 0 / rateDecimals / 10^18 / 10^6:
                                                require not 0 / 0 / rateDecimals / 10^18 / 10^6
                                            require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                            require (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                            weiRaised += 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate
                                            require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                            if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            if not 0 / rateDecimals / 10^18 / 10^6:
                                                require 0 / rateDecimals / 10^18 / 10^6 >= 0 / rateDecimals / 10^18 / 10^6
                                                require (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                                weiRaised += 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate
                                                require (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted += 0 / rateDecimals / 10^18 / 10^6
                                                if cap < (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), 0 / rateDecimals / 10^18 / 10^6
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate, 0 / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                            else:
                                                require 10 * 0 / rateDecimals / 10^18 / 10^6 / 0 / rateDecimals / 10^18 / 10^6 == 10
                                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) >= 0 / rateDecimals / 10^18 / 10^6
                                                require (1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                                weiRaised += 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate
                                                require (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted = (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted
                                                if cap < (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate, (10 * 0 / rateDecimals / 10^18 / 10^6 / 100) + (0 / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        call walletAddress with:
                           value 1000000 * 10^18 * rateDecimals * 0 / rateDecimals / 10^18 / 10^6 / rate wei
                             gas 2300 * is_zero(value) wei
    else:
        require rate * msg.value / msg.value == rate
        require rateDecimals
        if not rate * msg.value / rateDecimals / 10^18 / 10^6:
            require rate
            if 0 / rate >= msg.value:
                require 0 <= msg.value
                require openingTime + (336 * 24 * 3600) >= openingTime
                if block.timestamp < openingTime + (336 * 24 * 3600):
                    if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                            revert with 0, 'tokensMinted > cap'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                    else:
                        require 15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 15
                        require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                        tokensMinted = (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                        if cap < (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                            revert with 0, 'tokensMinted > cap'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                else:
                    require openingTime + (672 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (672 * 24 * 3600):
                        if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                            require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                            if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                        else:
                            require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                            require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                            if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    else:
                        require openingTime + (1008 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (1008 * 24 * 3600):
                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 5
                                require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            if block.timestamp < 432130 * 3600:
                                if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                    require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                if block.timestamp >= 1555970399:
                                    if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                        require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                        require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                require 0 / rate <= msg.value
                if msg.value - (0 / rate) > 0:
                    call msg.sender with:
                       value msg.value - (0 / rate) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit RefundAmount((msg.value - (0 / rate)), msg.sender);
                    require msg.value - (0 / rate) <= msg.value
                require openingTime + (336 * 24 * 3600) >= openingTime
                if block.timestamp < openingTime + (336 * 24 * 3600):
                    if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                        require (0 / rate) + weiRaised >= weiRaised
                        weiRaised += 0 / rate
                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                            revert with 0, 'tokensMinted > cap'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                    else:
                        require 15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 15
                        require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                        require (0 / rate) + weiRaised >= weiRaised
                        weiRaised += 0 / rate
                        require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                        tokensMinted = (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                        if cap < (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                            revert with 0, 'tokensMinted > cap'
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        emit TokenPurchase(0 / rate, (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                else:
                    require openingTime + (672 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (672 * 24 * 3600):
                        if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                            require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                            require (0 / rate) + weiRaised >= weiRaised
                            weiRaised += 0 / rate
                            require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                            if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                        else:
                            require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                            require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                            require (0 / rate) + weiRaised >= weiRaised
                            weiRaised += 0 / rate
                            require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                            if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(0 / rate, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    else:
                        require openingTime + (1008 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (1008 * 24 * 3600):
                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 5
                                require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            if block.timestamp < 432130 * 3600:
                                if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                    require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                if block.timestamp >= 1555970399:
                                    if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                        require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                        require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                call walletAddress with:
                   value 0 / rate wei
                     gas 2300 * is_zero(value) wei
        else:
            require 10^18 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10^18
            if not 10^18 * rate * msg.value / rateDecimals / 10^18 / 10^6:
                require rate
                if 0 / rate >= msg.value:
                    require 0 <= msg.value
                    require openingTime + (336 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (336 * 24 * 3600):
                        if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                            require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                            if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                        else:
                            require 15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 15
                            require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted = (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                            if cap < (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    else:
                        require openingTime + (672 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (672 * 24 * 3600):
                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (1008 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (1008 * 24 * 3600):
                                if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                    require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 5
                                    require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                if block.timestamp < 432130 * 3600:
                                    if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                        require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    if block.timestamp >= 1555970399:
                                        if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                            require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                            require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                            require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                            if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require 0 / rate <= msg.value
                    if msg.value - (0 / rate) > 0:
                        call msg.sender with:
                           value msg.value - (0 / rate) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit RefundAmount((msg.value - (0 / rate)), msg.sender);
                        require msg.value - (0 / rate) <= msg.value
                    require openingTime + (336 * 24 * 3600) >= openingTime
                    if block.timestamp < openingTime + (336 * 24 * 3600):
                        if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                            require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                            require (0 / rate) + weiRaised >= weiRaised
                            weiRaised += 0 / rate
                            require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                            if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                        else:
                            require 15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 15
                            require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                            require (0 / rate) + weiRaised >= weiRaised
                            weiRaised += 0 / rate
                            require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                            tokensMinted = (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                            if cap < (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                revert with 0, 'tokensMinted > cap'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(0 / rate, (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    else:
                        require openingTime + (672 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (672 * 24 * 3600):
                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (1008 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (1008 * 24 * 3600):
                                if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                    require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 5
                                    require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                if block.timestamp < 432130 * 3600:
                                    if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                        require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    if block.timestamp >= 1555970399:
                                        if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                            require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                            require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require (0 / rate) + weiRaised >= weiRaised
                                            weiRaised += 0 / rate
                                            require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                            require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require (0 / rate) + weiRaised >= weiRaised
                                            weiRaised += 0 / rate
                                            require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                            if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(0 / rate, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                    call walletAddress with:
                       value 0 / rate wei
                         gas 2300 * is_zero(value) wei
            else:
                require 1000000 * 10^18 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 10^18 * rate * msg.value / rateDecimals / 10^18 / 10^6 == 10^6
                if not 1000000 * 10^18 * rate * msg.value / rateDecimals / 10^18 / 10^6:
                    require rate
                    if 0 / rate >= msg.value:
                        require 0 <= msg.value
                        require openingTime + (336 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (336 * 24 * 3600):
                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 15
                                require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (672 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (672 * 24 * 3600):
                                if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                    require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                    require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                require openingTime + (1008 * 24 * 3600) >= openingTime
                                if block.timestamp < openingTime + (1008 * 24 * 3600):
                                    if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 5
                                        require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                                else:
                                    if block.timestamp < 432130 * 3600:
                                        if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                            require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if block.timestamp >= 1555970399:
                                            if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                                require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                            else:
                                                require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                                if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(msg.value, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / rate <= msg.value
                        if msg.value - (0 / rate) > 0:
                            call msg.sender with:
                               value msg.value - (0 / rate) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit RefundAmount((msg.value - (0 / rate)), msg.sender);
                            require msg.value - (0 / rate) <= msg.value
                        require openingTime + (336 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (336 * 24 * 3600):
                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 15
                                require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require (0 / rate) + weiRaised >= weiRaised
                                weiRaised += 0 / rate
                                require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(0 / rate, (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (672 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (672 * 24 * 3600):
                                if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                    require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                    require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require (0 / rate) + weiRaised >= weiRaised
                                    weiRaised += 0 / rate
                                    require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(0 / rate, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                require openingTime + (1008 * 24 * 3600) >= openingTime
                                if block.timestamp < openingTime + (1008 * 24 * 3600):
                                    if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 5
                                        require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                                else:
                                    if block.timestamp < 432130 * 3600:
                                        if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                            require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require (0 / rate) + weiRaised >= weiRaised
                                        weiRaised += 0 / rate
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if block.timestamp >= 1555970399:
                                            if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                                require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require (0 / rate) + weiRaised >= weiRaised
                                            weiRaised += 0 / rate
                                            require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                                require (0 / rate) + weiRaised >= weiRaised
                                                weiRaised += 0 / rate
                                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(0 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                            else:
                                                require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                                require (0 / rate) + weiRaised >= weiRaised
                                                weiRaised += 0 / rate
                                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                                if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(0 / rate, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        call walletAddress with:
                           value 0 / rate wei
                             gas 2300 * is_zero(value) wei
                else:
                    require 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / 1000000 * 10^18 * rate * msg.value / rateDecimals / 10^18 / 10^6 == rateDecimals
                    require rate
                    if 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate >= msg.value:
                        require 0 <= msg.value
                        require openingTime + (336 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (336 * 24 * 3600):
                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 15
                                require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(msg.value, (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (672 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (672 * 24 * 3600):
                                if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                    require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                    require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(msg.value, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                require openingTime + (1008 * 24 * 3600) >= openingTime
                                if block.timestamp < openingTime + (1008 * 24 * 3600):
                                    if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 5
                                        require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                                else:
                                    if block.timestamp < 432130 * 3600:
                                        if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                            require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if block.timestamp >= 1555970399:
                                            if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                                require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(msg.value, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                            else:
                                                require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                                require msg.value + weiRaised >= weiRaised
                                                weiRaised += msg.value
                                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                                if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(msg.value, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate <= msg.value
                        if msg.value - (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) > 0:
                            call msg.sender with:
                               value msg.value - (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit RefundAmount((msg.value - (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate)), msg.sender);
                            require msg.value - (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) <= msg.value
                        require openingTime + (336 * 24 * 3600) >= openingTime
                        if block.timestamp < openingTime + (336 * 24 * 3600):
                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                weiRaised += 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate
                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                            else:
                                require 15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 15
                                require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                require (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                weiRaised += 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate
                                require (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                tokensMinted = (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                if cap < (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                    revert with 0, 'tokensMinted > cap'
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(arg1), (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                emit TokenPurchase(1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate, (15 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        else:
                            require openingTime + (672 * 24 * 3600) >= openingTime
                            if block.timestamp < openingTime + (672 * 24 * 3600):
                                if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                    require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                    weiRaised += 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate
                                    require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                else:
                                    require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                    require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                    require (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                    weiRaised += 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate
                                    require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                    tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                    if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                        revert with 0, 'tokensMinted > cap'
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    emit TokenPurchase(1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                            else:
                                require openingTime + (1008 * 24 * 3600) >= openingTime
                                if block.timestamp < openingTime + (1008 * 24 * 3600):
                                    if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                        weiRaised += 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        require 5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 5
                                        require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                        weiRaised += 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate
                                        require (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted = (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                        if cap < (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate, (5 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                                else:
                                    if block.timestamp < 432130 * 3600:
                                        if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                            require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                        require (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                        weiRaised += 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate
                                        require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                        tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                            revert with 0, 'tokensMinted > cap'
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        emit TokenPurchase(1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                    else:
                                        if block.timestamp >= 1555970399:
                                            if rate * msg.value / rateDecimals / 10^18 / 10^6:
                                                require not 0 / rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                            require (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                            weiRaised += 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate
                                            require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                            tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                revert with 0, 'tokensMinted > cap'
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            emit TokenPurchase(1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                        else:
                                            if not rate * msg.value / rateDecimals / 10^18 / 10^6:
                                                require rate * msg.value / rateDecimals / 10^18 / 10^6 >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                                require (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                                weiRaised += 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate
                                                require (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted += rate * msg.value / rateDecimals / 10^18 / 10^6
                                                if cap < (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), rate * msg.value / rateDecimals / 10^18 / 10^6
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate, rate * msg.value / rateDecimals / 10^18 / 10^6, msg.sender, arg1);
                                            else:
                                                require 10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate * msg.value / rateDecimals / 10^18 / 10^6 == 10
                                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) >= rate * msg.value / rateDecimals / 10^18 / 10^6
                                                require (1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate) + weiRaised >= weiRaised
                                                weiRaised += 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate
                                                require (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted >= tokensMinted
                                                tokensMinted = (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted
                                                if cap < (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6) + tokensMinted:
                                                    revert with 0, 'tokensMinted > cap'
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(arg1), (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0]
                                                emit TokenPurchase(1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate, (10 * rate * msg.value / rateDecimals / 10^18 / 10^6 / 100) + (rate * msg.value / rateDecimals / 10^18 / 10^6), msg.sender, arg1);
                        call walletAddress with:
                           value 1000000 * 10^18 * rateDecimals * rate * msg.value / rateDecimals / 10^18 / 10^6 / rate wei
                             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
