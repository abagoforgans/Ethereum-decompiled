contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor0 = msg.sender
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor2 = code.data[4268 len 20]
    stor0 = code.data[4236 len 20]
    stor3 = code.data[4300 len 20]
    stor4 = code.data[4332 len 20]
    stor5 = code.data[4364 len 20]
    stor6 = code.data[4384 len 32]
    stor7 = code.data[4384 len 32] + 200000
    return code.data[238 len 3986]
}



// =====================  Runtime code  =====================


#
#  - toString(address arg1)
#
const sub_05d1c647(?) = 612500 * 10^6

const sub_10656f2b(?) = 10

const sub_62733ffc(?) = 2000

const sub_66e0694e(?) = 1365 * 10^12

const sub_72e17e80(?) = 20


address owner;
address potentialOwner;
address tokenAddress;
address teamAddress;
address sub_706bc4d6Address;
address escrowAddress;
uint256 startBlock;
uint256 endBlock;
uint8 stor8;
uint256 sub_ac2f4761;
uint256 sub_84867877;
uint256 sub_70223315;

function endBlock() {
    return endBlock
}

function escrowAddress() {
    return escrowAddress
}

function teamAddress() {
    return teamAddress
}

function startBlock() {
    return startBlock
}

function sub_70223315(?) {
    return sub_70223315
}

function sub_706bc4d6(?) {
    return sub_706bc4d6Address
}

function potentialOwner() {
    return potentialOwner
}

function sub_84867877(?) {
    return sub_84867877
}

function owner() {
    return owner
}

function icoFinalized() {
    return bool(stor8)
}

function sub_ac2f4761(?) {
    return sub_ac2f4761
}

function token() {
    return tokenAddress
}

function setTeamAddress(address arg1) {
    require owner == msg.sender
    teamAddress = arg1
}

function setExchangeRate(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    sub_ac2f4761 = arg1
}

function setOwner(address arg1) {
    require owner == msg.sender
    emit NewPotentialOwner(owner, arg1);
    potentialOwner = arg1
}

function confirmOwnership() {
    require potentialOwner == msg.sender
    emit NewOwner(owner, potentialOwner);
    owner = potentialOwner
    potentialOwner = 0
}

function isActive() {
    if stor8:
        return 0
    if block.number > endBlock:
        return 0
    if sub_84867877 >= 1364999900 * 10^6:
        return 0
    if block.number < startBlock:
        return 0
    return 1
}

function getBonus() {
    if sub_70223315 >= 500100 * 10^6:
        return 1000
    if sub_70223315 >= 300100 * 10^6:
        return 1050
    if sub_70223315 >= 200100 * 10^6:
        return 1100
    if sub_70223315 < 100100 * 10^6:
        return 1300
    return 1200
}

function calculateTokens(uint256 arg1) {
    if sub_70223315 >= 500100 * 10^6:
        if not arg1:
            return (2000 * arg1)
        if arg1:
            if 2000 * arg1 / arg1 == 2000:
                return (2000 * arg1)
    else:
        if sub_70223315 >= 300100 * 10^6:
            if not arg1:
                return (2100 * arg1)
            if arg1:
                if 2100 * arg1 / arg1 == 2100:
                    return (2100 * arg1)
        else:
            if sub_70223315 >= 200100 * 10^6:
                if not arg1:
                    return (2200 * arg1)
                if arg1:
                    if 2200 * arg1 / arg1 == 2200:
                        return (2200 * arg1)
            else:
                if sub_70223315 < 100100 * 10^6:
                    if not arg1:
                        return (2600 * arg1)
                    if arg1:
                        if 2600 * arg1 / arg1 == 2600:
                            return (2600 * arg1)
                else:
                    if not arg1:
                        return (2400 * arg1)
                    if arg1:
                        if 2400 * arg1 / arg1 == 2400:
                            return (2400 * arg1)
    revert
}

function finalizeICO() {
    require owner == msg.sender
    if not stor8:
        if block.number <= endBlock:
            if sub_84867877 < 1364999900 * 10^6:
                require block.number < startBlock
    require block.number >= startBlock
    stor8 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == (70 * ext_call.return_data[0] / 70) + (ext_call.return_data[0] % 70)
    if ext_call.return_data[0] / 70:
        require ext_call.return_data[0] / 70
        require 20 * ext_call.return_data[0] / 70 / ext_call.return_data[0] / 70 == 20
        if ext_call.return_data[0] / 70:
            require ext_call.return_data[0] / 70
            require 10 * ext_call.return_data[0] / 70 / ext_call.return_data[0] / 70 == 10
    require (20 * ext_call.return_data[0] / 70) + ext_call.return_data[0] >= ext_call.return_data[0]
    sub_84867877 = (20 * ext_call.return_data[0] / 70) + ext_call.return_data[0]
    require 30 * ext_call.return_data[0] / 70 >= 20 * ext_call.return_data[0] / 70
    sub_84867877 = (30 * ext_call.return_data[0] / 70) + ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd1a1beb4 with:
         gas gas_remaining - 710 wei
        args teamAddress, 20 * ext_call.return_data[0] / 70, 0
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd1a1beb4 with:
         gas gas_remaining - 710 wei
        args sub_706bc4d6Address, 10 * ext_call.return_data[0] / 70, 0
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x4bb278f3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function _fallback() payable {
    if msg.value:
        require msg.value
        require sub_ac2f4761 * msg.value / msg.value == sub_ac2f4761
    require sub_ac2f4761 * msg.value == (10^18 * sub_ac2f4761 * msg.value / 10^18) + (sub_ac2f4761 * msg.value % 10^18)
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require idx < 20
        mem[idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', 'msg.sender', ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', 'msg.sender', ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    require not stor8
    require block.number <= endBlock
    require sub_84867877 < 1364999900 * 10^6
    require block.number >= startBlock
    if sub_70223315 >= 500100 * 10^6:
        if sub_ac2f4761 * msg.value / 10^18:
            require sub_ac2f4761 * msg.value / 10^18
            require 2000 * sub_ac2f4761 * msg.value / 10^18 / sub_ac2f4761 * msg.value / 10^18 == 2000
        require ext_code.size(tokenAddress)
        call tokenAddress.0xd1a1beb4 with:
             gas gas_remaining - 710 wei
            args msg.sender, 2000 * sub_ac2f4761 * msg.value / 10^18, 1
        require ext_call.success
        require ext_call.return_data[0]
        if sub_70223315 >= 500100 * 10^6:
            emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2000 * sub_ac2f4761 * msg.value / 10^18, 1000, Array(len=20, data=mem[204 len 20]), sub_70223315);
        else:
            if sub_70223315 >= 300100 * 10^6:
                emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2000 * sub_ac2f4761 * msg.value / 10^18, 1050, Array(len=20, data=mem[204 len 20]), sub_70223315);
            else:
                if sub_70223315 >= 200100 * 10^6:
                    emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2000 * sub_ac2f4761 * msg.value / 10^18, 1100, Array(len=20, data=mem[204 len 20]), sub_70223315);
                else:
                    if sub_70223315 < 100100 * 10^6:
                        emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2000 * sub_ac2f4761 * msg.value / 10^18, 1300, Array(len=20, data=mem[204 len 20]), sub_70223315);
                    else:
                        emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2000 * sub_ac2f4761 * msg.value / 10^18, 1200, Array(len=20, data=mem[204 len 20]), sub_70223315);
        require (sub_ac2f4761 * msg.value / 10^18) + sub_70223315 >= sub_70223315
        sub_70223315 += sub_ac2f4761 * msg.value / 10^18
        require (2000 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 >= sub_84867877
        require (2000 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 <= 1365 * 10^12
        require (2000 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 >= sub_84867877
        sub_84867877 += 2000 * sub_ac2f4761 * msg.value / 10^18
    else:
        if sub_70223315 >= 300100 * 10^6:
            if sub_ac2f4761 * msg.value / 10^18:
                require sub_ac2f4761 * msg.value / 10^18
                require 2100 * sub_ac2f4761 * msg.value / 10^18 / sub_ac2f4761 * msg.value / 10^18 == 2100
            require ext_code.size(tokenAddress)
            call tokenAddress.0xd1a1beb4 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2100 * sub_ac2f4761 * msg.value / 10^18, 1
            require ext_call.success
            require ext_call.return_data[0]
            if sub_70223315 >= 500100 * 10^6:
                emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2100 * sub_ac2f4761 * msg.value / 10^18, 1000, Array(len=20, data=mem[204 len 20]), sub_70223315);
            else:
                if sub_70223315 >= 300100 * 10^6:
                    emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2100 * sub_ac2f4761 * msg.value / 10^18, 1050, Array(len=20, data=mem[204 len 20]), sub_70223315);
                else:
                    if sub_70223315 >= 200100 * 10^6:
                        emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2100 * sub_ac2f4761 * msg.value / 10^18, 1100, Array(len=20, data=mem[204 len 20]), sub_70223315);
                    else:
                        if sub_70223315 < 100100 * 10^6:
                            emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2100 * sub_ac2f4761 * msg.value / 10^18, 1300, Array(len=20, data=mem[204 len 20]), sub_70223315);
                        else:
                            emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2100 * sub_ac2f4761 * msg.value / 10^18, 1200, Array(len=20, data=mem[204 len 20]), sub_70223315);
            require (sub_ac2f4761 * msg.value / 10^18) + sub_70223315 >= sub_70223315
            sub_70223315 += sub_ac2f4761 * msg.value / 10^18
            require (2100 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 >= sub_84867877
            require (2100 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 <= 1365 * 10^12
            require (2100 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 >= sub_84867877
            sub_84867877 += 2100 * sub_ac2f4761 * msg.value / 10^18
        else:
            if sub_70223315 >= 200100 * 10^6:
                if sub_ac2f4761 * msg.value / 10^18:
                    require sub_ac2f4761 * msg.value / 10^18
                    require 2200 * sub_ac2f4761 * msg.value / 10^18 / sub_ac2f4761 * msg.value / 10^18 == 2200
                require ext_code.size(tokenAddress)
                call tokenAddress.0xd1a1beb4 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2200 * sub_ac2f4761 * msg.value / 10^18, 1
                require ext_call.success
                require ext_call.return_data[0]
                if sub_70223315 >= 500100 * 10^6:
                    emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2200 * sub_ac2f4761 * msg.value / 10^18, 1000, Array(len=20, data=mem[204 len 20]), sub_70223315);
                else:
                    if sub_70223315 >= 300100 * 10^6:
                        emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2200 * sub_ac2f4761 * msg.value / 10^18, 1050, Array(len=20, data=mem[204 len 20]), sub_70223315);
                    else:
                        if sub_70223315 >= 200100 * 10^6:
                            emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2200 * sub_ac2f4761 * msg.value / 10^18, 1100, Array(len=20, data=mem[204 len 20]), sub_70223315);
                        else:
                            if sub_70223315 < 100100 * 10^6:
                                emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2200 * sub_ac2f4761 * msg.value / 10^18, 1300, Array(len=20, data=mem[204 len 20]), sub_70223315);
                            else:
                                emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2200 * sub_ac2f4761 * msg.value / 10^18, 1200, Array(len=20, data=mem[204 len 20]), sub_70223315);
                require (sub_ac2f4761 * msg.value / 10^18) + sub_70223315 >= sub_70223315
                sub_70223315 += sub_ac2f4761 * msg.value / 10^18
                require (2200 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 >= sub_84867877
                require (2200 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 <= 1365 * 10^12
                require (2200 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 >= sub_84867877
                sub_84867877 += 2200 * sub_ac2f4761 * msg.value / 10^18
            else:
                if sub_70223315 < 100100 * 10^6:
                    if sub_ac2f4761 * msg.value / 10^18:
                        require sub_ac2f4761 * msg.value / 10^18
                        require 2600 * sub_ac2f4761 * msg.value / 10^18 / sub_ac2f4761 * msg.value / 10^18 == 2600
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd1a1beb4 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 2600 * sub_ac2f4761 * msg.value / 10^18, 1
                    require ext_call.success
                    require ext_call.return_data[0]
                    if sub_70223315 >= 500100 * 10^6:
                        emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2600 * sub_ac2f4761 * msg.value / 10^18, 1000, Array(len=20, data=mem[204 len 20]), sub_70223315);
                    else:
                        if sub_70223315 >= 300100 * 10^6:
                            emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2600 * sub_ac2f4761 * msg.value / 10^18, 1050, Array(len=20, data=mem[204 len 20]), sub_70223315);
                        else:
                            if sub_70223315 >= 200100 * 10^6:
                                emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2600 * sub_ac2f4761 * msg.value / 10^18, 1100, Array(len=20, data=mem[204 len 20]), sub_70223315);
                            else:
                                if sub_70223315 < 100100 * 10^6:
                                    emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2600 * sub_ac2f4761 * msg.value / 10^18, 1300, Array(len=20, data=mem[204 len 20]), sub_70223315);
                                else:
                                    emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2600 * sub_ac2f4761 * msg.value / 10^18, 1200, Array(len=20, data=mem[204 len 20]), sub_70223315);
                    require (sub_ac2f4761 * msg.value / 10^18) + sub_70223315 >= sub_70223315
                    sub_70223315 += sub_ac2f4761 * msg.value / 10^18
                    require (2600 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 >= sub_84867877
                    require (2600 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 <= 1365 * 10^12
                    require (2600 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 >= sub_84867877
                    sub_84867877 += 2600 * sub_ac2f4761 * msg.value / 10^18
                else:
                    if sub_ac2f4761 * msg.value / 10^18:
                        require sub_ac2f4761 * msg.value / 10^18
                        require 2400 * sub_ac2f4761 * msg.value / 10^18 / sub_ac2f4761 * msg.value / 10^18 == 2400
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd1a1beb4 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 2400 * sub_ac2f4761 * msg.value / 10^18, 1
                    require ext_call.success
                    require ext_call.return_data[0]
                    if sub_70223315 >= 500100 * 10^6:
                        emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2400 * sub_ac2f4761 * msg.value / 10^18, 1000, Array(len=20, data=mem[204 len 20]), sub_70223315);
                    else:
                        if sub_70223315 >= 300100 * 10^6:
                            emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2400 * sub_ac2f4761 * msg.value / 10^18, 1050, Array(len=20, data=mem[204 len 20]), sub_70223315);
                        else:
                            if sub_70223315 >= 200100 * 10^6:
                                emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2400 * sub_ac2f4761 * msg.value / 10^18, 1100, Array(len=20, data=mem[204 len 20]), sub_70223315);
                            else:
                                if sub_70223315 < 100100 * 10^6:
                                    emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2400 * sub_ac2f4761 * msg.value / 10^18, 1300, Array(len=20, data=mem[204 len 20]), sub_70223315);
                                else:
                                    emit Investment(sub_ac2f4761 * msg.value / 10^18, msg.sender, 2400 * sub_ac2f4761 * msg.value / 10^18, 1200, Array(len=20, data=mem[204 len 20]), sub_70223315);
                    require (sub_ac2f4761 * msg.value / 10^18) + sub_70223315 >= sub_70223315
                    sub_70223315 += sub_ac2f4761 * msg.value / 10^18
                    require (2400 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 >= sub_84867877
                    require (2400 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 <= 1365 * 10^12
                    require (2400 * sub_ac2f4761 * msg.value / 10^18) + sub_84867877 >= sub_84867877
                    sub_84867877 += 2400 * sub_ac2f4761 * msg.value / 10^18
    call escrowAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function investment(uint256 arg1, address arg2, string arg3, uint256 arg4) {
    mem[128 len arg3.length] = arg3[all]
    require owner == msg.sender
    require not stor8
    require block.number <= endBlock
    require sub_84867877 < 1364999900 * 10^6
    require block.number >= startBlock
    if sub_70223315 >= 500100 * 10^6:
        if arg1:
            require arg1
            require 2000 * arg1 / arg1 == 2000
        require ext_code.size(tokenAddress)
        call tokenAddress.0xd1a1beb4 with:
             gas gas_remaining - 710 wei
            args address(arg2), 2000 * arg1, 0
        require ext_call.success
        require ext_call.return_data[0]
        mem[ceil32(arg3.length) + 128] = arg1
        mem[ceil32(arg3.length) + 160] = arg2
        mem[ceil32(arg3.length) + 192] = 2000 * arg1
        if sub_70223315 >= 500100 * 10^6:
            mem[ceil32(arg3.length) + 224] = 1000
            mem[ceil32(arg3.length) + 288] = arg4
            mem[ceil32(arg3.length) + 256] = 192
            mem[ceil32(arg3.length) + 320] = arg3.length
            if not arg3.length:
                if not arg3.length % 32:
                    emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                    arg1,
                                    0,
                                    2000 * arg1,
                                    1000,
                                    192,
                                    arg4,
                                    arg3.length,
                                    mem[ceil32(arg3.length) + 352 len arg3.length],
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                    emit Investment(arg1, address(arg2), 2000 * arg1, 1000, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
            else:
                mem[ceil32(arg3.length) + 352] = mem[128]
                mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                emit Investment(arg1, address(arg2), 2000 * arg1, 1000, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
        else:
            if sub_70223315 >= 300100 * 10^6:
                mem[ceil32(arg3.length) + 224] = 1050
                mem[ceil32(arg3.length) + 288] = arg4
                mem[ceil32(arg3.length) + 256] = 192
                mem[ceil32(arg3.length) + 320] = arg3.length
                if not arg3.length:
                    if not arg3.length % 32:
                        emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                        arg1,
                                        0,
                                        2000 * arg1,
                                        1050,
                                        192,
                                        arg4,
                                        arg3.length,
                                        mem[ceil32(arg3.length) + 352 len arg3.length],
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                        emit Investment(arg1, address(arg2), 2000 * arg1, 1050, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                else:
                    mem[ceil32(arg3.length) + 352] = mem[128]
                    mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    emit Investment(arg1, address(arg2), 2000 * arg1, 1050, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
            else:
                if sub_70223315 >= 200100 * 10^6:
                    mem[ceil32(arg3.length) + 224] = 1100
                    mem[ceil32(arg3.length) + 288] = arg4
                    mem[ceil32(arg3.length) + 256] = 192
                    mem[ceil32(arg3.length) + 320] = arg3.length
                    if not arg3.length:
                        if not arg3.length % 32:
                            emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                            arg1,
                                            0,
                                            2000 * arg1,
                                            1100,
                                            192,
                                            arg4,
                                            arg3.length,
                                            mem[ceil32(arg3.length) + 352 len arg3.length],
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                            emit Investment(arg1, address(arg2), 2000 * arg1, 1100, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                    else:
                        mem[ceil32(arg3.length) + 352] = mem[128]
                        mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        emit Investment(arg1, address(arg2), 2000 * arg1, 1100, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                else:
                    if sub_70223315 < 100100 * 10^6:
                        mem[ceil32(arg3.length) + 224] = 1300
                        mem[ceil32(arg3.length) + 288] = arg4
                        mem[ceil32(arg3.length) + 256] = 192
                        mem[ceil32(arg3.length) + 320] = arg3.length
                        if not arg3.length:
                            if not arg3.length % 32:
                                emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                arg1,
                                                0,
                                                2000 * arg1,
                                                1300,
                                                192,
                                                arg4,
                                                arg3.length,
                                                mem[ceil32(arg3.length) + 352 len arg3.length],
                            else:
                                mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                emit Investment(arg1, address(arg2), 2000 * arg1, 1300, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                        else:
                            mem[ceil32(arg3.length) + 352] = mem[128]
                            mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            emit Investment(arg1, address(arg2), 2000 * arg1, 1300, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                    else:
                        mem[ceil32(arg3.length) + 224] = 1200
                        mem[ceil32(arg3.length) + 288] = arg4
                        mem[ceil32(arg3.length) + 256] = 192
                        mem[ceil32(arg3.length) + 320] = arg3.length
                        if not arg3.length:
                            if not arg3.length % 32:
                                emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                arg1,
                                                0,
                                                2000 * arg1,
                                                1200,
                                                192,
                                                arg4,
                                                arg3.length,
                                                mem[ceil32(arg3.length) + 352 len arg3.length],
                            else:
                                mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                emit Investment(arg1, address(arg2), 2000 * arg1, 1200, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                        else:
                            mem[ceil32(arg3.length) + 352] = mem[128]
                            mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            emit Investment(arg1, address(arg2), 2000 * arg1, 1200, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
        require arg1 + sub_70223315 >= sub_70223315
        sub_70223315 += arg1
        require (2000 * arg1) + sub_84867877 >= sub_84867877
        require (2000 * arg1) + sub_84867877 <= 1365 * 10^12
        require (2000 * arg1) + sub_84867877 >= sub_84867877
        sub_84867877 += 2000 * arg1
    else:
        if sub_70223315 >= 300100 * 10^6:
            if arg1:
                require arg1
                require 2100 * arg1 / arg1 == 2100
            require ext_code.size(tokenAddress)
            call tokenAddress.0xd1a1beb4 with:
                 gas gas_remaining - 710 wei
                args address(arg2), 2100 * arg1, 0
            require ext_call.success
            require ext_call.return_data[0]
            mem[ceil32(arg3.length) + 128] = arg1
            mem[ceil32(arg3.length) + 160] = arg2
            mem[ceil32(arg3.length) + 192] = 2100 * arg1
            if sub_70223315 >= 500100 * 10^6:
                mem[ceil32(arg3.length) + 224] = 1000
                mem[ceil32(arg3.length) + 288] = arg4
                mem[ceil32(arg3.length) + 256] = 192
                mem[ceil32(arg3.length) + 320] = arg3.length
                if not arg3.length:
                    if not arg3.length % 32:
                        emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                        arg1,
                                        0,
                                        2100 * arg1,
                                        1000,
                                        192,
                                        arg4,
                                        arg3.length,
                                        mem[ceil32(arg3.length) + 352 len arg3.length],
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                        emit Investment(arg1, address(arg2), 2100 * arg1, 1000, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                else:
                    mem[ceil32(arg3.length) + 352] = mem[128]
                    mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    emit Investment(arg1, address(arg2), 2100 * arg1, 1000, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
            else:
                if sub_70223315 >= 300100 * 10^6:
                    mem[ceil32(arg3.length) + 224] = 1050
                    mem[ceil32(arg3.length) + 288] = arg4
                    mem[ceil32(arg3.length) + 256] = 192
                    mem[ceil32(arg3.length) + 320] = arg3.length
                    if not arg3.length:
                        if not arg3.length % 32:
                            emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                            arg1,
                                            0,
                                            2100 * arg1,
                                            1050,
                                            192,
                                            arg4,
                                            arg3.length,
                                            mem[ceil32(arg3.length) + 352 len arg3.length],
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                            emit Investment(arg1, address(arg2), 2100 * arg1, 1050, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                    else:
                        mem[ceil32(arg3.length) + 352] = mem[128]
                        mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        emit Investment(arg1, address(arg2), 2100 * arg1, 1050, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                else:
                    if sub_70223315 >= 200100 * 10^6:
                        mem[ceil32(arg3.length) + 224] = 1100
                        mem[ceil32(arg3.length) + 288] = arg4
                        mem[ceil32(arg3.length) + 256] = 192
                        mem[ceil32(arg3.length) + 320] = arg3.length
                        if not arg3.length:
                            if not arg3.length % 32:
                                emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                arg1,
                                                0,
                                                2100 * arg1,
                                                1100,
                                                192,
                                                arg4,
                                                arg3.length,
                                                mem[ceil32(arg3.length) + 352 len arg3.length],
                            else:
                                mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                emit Investment(arg1, address(arg2), 2100 * arg1, 1100, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                        else:
                            mem[ceil32(arg3.length) + 352] = mem[128]
                            mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            emit Investment(arg1, address(arg2), 2100 * arg1, 1100, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                    else:
                        if sub_70223315 < 100100 * 10^6:
                            mem[ceil32(arg3.length) + 224] = 1300
                            mem[ceil32(arg3.length) + 288] = arg4
                            mem[ceil32(arg3.length) + 256] = 192
                            mem[ceil32(arg3.length) + 320] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                    arg1,
                                                    0,
                                                    2100 * arg1,
                                                    1300,
                                                    192,
                                                    arg4,
                                                    arg3.length,
                                                    mem[ceil32(arg3.length) + 352 len arg3.length],
                                else:
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                    emit Investment(arg1, address(arg2), 2100 * arg1, 1300, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                            else:
                                mem[ceil32(arg3.length) + 352] = mem[128]
                                mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                emit Investment(arg1, address(arg2), 2100 * arg1, 1300, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                        else:
                            mem[ceil32(arg3.length) + 224] = 1200
                            mem[ceil32(arg3.length) + 288] = arg4
                            mem[ceil32(arg3.length) + 256] = 192
                            mem[ceil32(arg3.length) + 320] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                    arg1,
                                                    0,
                                                    2100 * arg1,
                                                    1200,
                                                    192,
                                                    arg4,
                                                    arg3.length,
                                                    mem[ceil32(arg3.length) + 352 len arg3.length],
                                else:
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                    emit Investment(arg1, address(arg2), 2100 * arg1, 1200, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                            else:
                                mem[ceil32(arg3.length) + 352] = mem[128]
                                mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                emit Investment(arg1, address(arg2), 2100 * arg1, 1200, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
            require arg1 + sub_70223315 >= sub_70223315
            sub_70223315 += arg1
            require (2100 * arg1) + sub_84867877 >= sub_84867877
            require (2100 * arg1) + sub_84867877 <= 1365 * 10^12
            require (2100 * arg1) + sub_84867877 >= sub_84867877
            sub_84867877 += 2100 * arg1
        else:
            if sub_70223315 >= 200100 * 10^6:
                if arg1:
                    require arg1
                    require 2200 * arg1 / arg1 == 2200
                require ext_code.size(tokenAddress)
                call tokenAddress.0xd1a1beb4 with:
                     gas gas_remaining - 710 wei
                    args address(arg2), 2200 * arg1, 0
                require ext_call.success
                require ext_call.return_data[0]
                mem[ceil32(arg3.length) + 128] = arg1
                mem[ceil32(arg3.length) + 160] = arg2
                mem[ceil32(arg3.length) + 192] = 2200 * arg1
                if sub_70223315 >= 500100 * 10^6:
                    mem[ceil32(arg3.length) + 224] = 1000
                    mem[ceil32(arg3.length) + 288] = arg4
                    mem[ceil32(arg3.length) + 256] = 192
                    mem[ceil32(arg3.length) + 320] = arg3.length
                    if not arg3.length:
                        if not arg3.length % 32:
                            emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                            arg1,
                                            0,
                                            2200 * arg1,
                                            1000,
                                            192,
                                            arg4,
                                            arg3.length,
                                            mem[ceil32(arg3.length) + 352 len arg3.length],
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                            emit Investment(arg1, address(arg2), 2200 * arg1, 1000, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                    else:
                        mem[ceil32(arg3.length) + 352] = mem[128]
                        mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        emit Investment(arg1, address(arg2), 2200 * arg1, 1000, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                else:
                    if sub_70223315 >= 300100 * 10^6:
                        mem[ceil32(arg3.length) + 224] = 1050
                        mem[ceil32(arg3.length) + 288] = arg4
                        mem[ceil32(arg3.length) + 256] = 192
                        mem[ceil32(arg3.length) + 320] = arg3.length
                        if not arg3.length:
                            if not arg3.length % 32:
                                emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                arg1,
                                                0,
                                                2200 * arg1,
                                                1050,
                                                192,
                                                arg4,
                                                arg3.length,
                                                mem[ceil32(arg3.length) + 352 len arg3.length],
                            else:
                                mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                emit Investment(arg1, address(arg2), 2200 * arg1, 1050, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                        else:
                            mem[ceil32(arg3.length) + 352] = mem[128]
                            mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            emit Investment(arg1, address(arg2), 2200 * arg1, 1050, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                    else:
                        if sub_70223315 >= 200100 * 10^6:
                            mem[ceil32(arg3.length) + 224] = 1100
                            mem[ceil32(arg3.length) + 288] = arg4
                            mem[ceil32(arg3.length) + 256] = 192
                            mem[ceil32(arg3.length) + 320] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                    arg1,
                                                    0,
                                                    2200 * arg1,
                                                    1100,
                                                    192,
                                                    arg4,
                                                    arg3.length,
                                                    mem[ceil32(arg3.length) + 352 len arg3.length],
                                else:
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                    emit Investment(arg1, address(arg2), 2200 * arg1, 1100, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                            else:
                                mem[ceil32(arg3.length) + 352] = mem[128]
                                mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                emit Investment(arg1, address(arg2), 2200 * arg1, 1100, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                        else:
                            if sub_70223315 < 100100 * 10^6:
                                mem[ceil32(arg3.length) + 224] = 1300
                                mem[ceil32(arg3.length) + 288] = arg4
                                mem[ceil32(arg3.length) + 256] = 192
                                mem[ceil32(arg3.length) + 320] = arg3.length
                                if not arg3.length:
                                    if not arg3.length % 32:
                                        emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                        arg1,
                                                        0,
                                                        2200 * arg1,
                                                        1300,
                                                        192,
                                                        arg4,
                                                        arg3.length,
                                                        mem[ceil32(arg3.length) + 352 len arg3.length],
                                    else:
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                        emit Investment(arg1, address(arg2), 2200 * arg1, 1300, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                                else:
                                    mem[ceil32(arg3.length) + 352] = mem[128]
                                    mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                    emit Investment(arg1, address(arg2), 2200 * arg1, 1300, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                            else:
                                mem[ceil32(arg3.length) + 224] = 1200
                                mem[ceil32(arg3.length) + 288] = arg4
                                mem[ceil32(arg3.length) + 256] = 192
                                mem[ceil32(arg3.length) + 320] = arg3.length
                                if not arg3.length:
                                    if not arg3.length % 32:
                                        emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                        arg1,
                                                        0,
                                                        2200 * arg1,
                                                        1200,
                                                        192,
                                                        arg4,
                                                        arg3.length,
                                                        mem[ceil32(arg3.length) + 352 len arg3.length],
                                    else:
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                        emit Investment(arg1, address(arg2), 2200 * arg1, 1200, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                                else:
                                    mem[ceil32(arg3.length) + 352] = mem[128]
                                    mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                    emit Investment(arg1, address(arg2), 2200 * arg1, 1200, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                require arg1 + sub_70223315 >= sub_70223315
                sub_70223315 += arg1
                require (2200 * arg1) + sub_84867877 >= sub_84867877
                require (2200 * arg1) + sub_84867877 <= 1365 * 10^12
                require (2200 * arg1) + sub_84867877 >= sub_84867877
                sub_84867877 += 2200 * arg1
            else:
                if sub_70223315 < 100100 * 10^6:
                    if arg1:
                        require arg1
                        require 2600 * arg1 / arg1 == 2600
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd1a1beb4 with:
                         gas gas_remaining - 710 wei
                        args address(arg2), 2600 * arg1, 0
                    require ext_call.success
                    require ext_call.return_data[0]
                    mem[ceil32(arg3.length) + 128] = arg1
                    mem[ceil32(arg3.length) + 160] = arg2
                    mem[ceil32(arg3.length) + 192] = 2600 * arg1
                    if sub_70223315 >= 500100 * 10^6:
                        mem[ceil32(arg3.length) + 224] = 1000
                        mem[ceil32(arg3.length) + 288] = arg4
                        mem[ceil32(arg3.length) + 256] = 192
                        mem[ceil32(arg3.length) + 320] = arg3.length
                        if not arg3.length:
                            if not arg3.length % 32:
                                emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                arg1,
                                                0,
                                                2600 * arg1,
                                                1000,
                                                192,
                                                arg4,
                                                arg3.length,
                                                mem[ceil32(arg3.length) + 352 len arg3.length],
                            else:
                                mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                emit Investment(arg1, address(arg2), 2600 * arg1, 1000, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                        else:
                            mem[ceil32(arg3.length) + 352] = mem[128]
                            mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            emit Investment(arg1, address(arg2), 2600 * arg1, 1000, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                    else:
                        if sub_70223315 >= 300100 * 10^6:
                            mem[ceil32(arg3.length) + 224] = 1050
                            mem[ceil32(arg3.length) + 288] = arg4
                            mem[ceil32(arg3.length) + 256] = 192
                            mem[ceil32(arg3.length) + 320] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                    arg1,
                                                    0,
                                                    2600 * arg1,
                                                    1050,
                                                    192,
                                                    arg4,
                                                    arg3.length,
                                                    mem[ceil32(arg3.length) + 352 len arg3.length],
                                else:
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                    emit Investment(arg1, address(arg2), 2600 * arg1, 1050, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                            else:
                                mem[ceil32(arg3.length) + 352] = mem[128]
                                mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                emit Investment(arg1, address(arg2), 2600 * arg1, 1050, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                        else:
                            if sub_70223315 >= 200100 * 10^6:
                                mem[ceil32(arg3.length) + 224] = 1100
                                mem[ceil32(arg3.length) + 288] = arg4
                                mem[ceil32(arg3.length) + 256] = 192
                                mem[ceil32(arg3.length) + 320] = arg3.length
                                if not arg3.length:
                                    if not arg3.length % 32:
                                        emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                        arg1,
                                                        0,
                                                        2600 * arg1,
                                                        1100,
                                                        192,
                                                        arg4,
                                                        arg3.length,
                                                        mem[ceil32(arg3.length) + 352 len arg3.length],
                                    else:
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                        emit Investment(arg1, address(arg2), 2600 * arg1, 1100, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                                else:
                                    mem[ceil32(arg3.length) + 352] = mem[128]
                                    mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                    emit Investment(arg1, address(arg2), 2600 * arg1, 1100, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                            else:
                                if sub_70223315 < 100100 * 10^6:
                                    mem[ceil32(arg3.length) + 224] = 1300
                                    mem[ceil32(arg3.length) + 288] = arg4
                                    mem[ceil32(arg3.length) + 256] = 192
                                    mem[ceil32(arg3.length) + 320] = arg3.length
                                    if not arg3.length:
                                        if not arg3.length % 32:
                                            emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                            arg1,
                                                            0,
                                                            2600 * arg1,
                                                            1300,
                                                            192,
                                                            arg4,
                                                            arg3.length,
                                                            mem[ceil32(arg3.length) + 352 len arg3.length],
                                        else:
                                            mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                            emit Investment(arg1, address(arg2), 2600 * arg1, 1300, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                                    else:
                                        mem[ceil32(arg3.length) + 352] = mem[128]
                                        mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                        emit Investment(arg1, address(arg2), 2600 * arg1, 1300, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                                else:
                                    mem[ceil32(arg3.length) + 224] = 1200
                                    mem[ceil32(arg3.length) + 288] = arg4
                                    mem[ceil32(arg3.length) + 256] = 192
                                    mem[ceil32(arg3.length) + 320] = arg3.length
                                    if not arg3.length:
                                        if not arg3.length % 32:
                                            emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                            arg1,
                                                            0,
                                                            2600 * arg1,
                                                            1200,
                                                            192,
                                                            arg4,
                                                            arg3.length,
                                                            mem[ceil32(arg3.length) + 352 len arg3.length],
                                        else:
                                            mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                            emit Investment(arg1, address(arg2), 2600 * arg1, 1200, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                                    else:
                                        mem[ceil32(arg3.length) + 352] = mem[128]
                                        mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                        emit Investment(arg1, address(arg2), 2600 * arg1, 1200, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                    require arg1 + sub_70223315 >= sub_70223315
                    sub_70223315 += arg1
                    require (2600 * arg1) + sub_84867877 >= sub_84867877
                    require (2600 * arg1) + sub_84867877 <= 1365 * 10^12
                    require (2600 * arg1) + sub_84867877 >= sub_84867877
                    sub_84867877 += 2600 * arg1
                else:
                    if arg1:
                        require arg1
                        require 2400 * arg1 / arg1 == 2400
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xd1a1beb4 with:
                         gas gas_remaining - 710 wei
                        args address(arg2), 2400 * arg1, 0
                    require ext_call.success
                    require ext_call.return_data[0]
                    mem[ceil32(arg3.length) + 128] = arg1
                    mem[ceil32(arg3.length) + 160] = arg2
                    mem[ceil32(arg3.length) + 192] = 2400 * arg1
                    if sub_70223315 >= 500100 * 10^6:
                        mem[ceil32(arg3.length) + 224] = 1000
                        mem[ceil32(arg3.length) + 288] = arg4
                        mem[ceil32(arg3.length) + 256] = 192
                        mem[ceil32(arg3.length) + 320] = arg3.length
                        if not arg3.length:
                            if not arg3.length % 32:
                                emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                arg1,
                                                0,
                                                2400 * arg1,
                                                1000,
                                                192,
                                                arg4,
                                                arg3.length,
                                                mem[ceil32(arg3.length) + 352 len arg3.length],
                            else:
                                mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                emit Investment(arg1, address(arg2), 2400 * arg1, 1000, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                        else:
                            mem[ceil32(arg3.length) + 352] = mem[128]
                            mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            emit Investment(arg1, address(arg2), 2400 * arg1, 1000, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                    else:
                        if sub_70223315 >= 300100 * 10^6:
                            mem[ceil32(arg3.length) + 224] = 1050
                            mem[ceil32(arg3.length) + 288] = arg4
                            mem[ceil32(arg3.length) + 256] = 192
                            mem[ceil32(arg3.length) + 320] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                    arg1,
                                                    0,
                                                    2400 * arg1,
                                                    1050,
                                                    192,
                                                    arg4,
                                                    arg3.length,
                                                    mem[ceil32(arg3.length) + 352 len arg3.length],
                                else:
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                    emit Investment(arg1, address(arg2), 2400 * arg1, 1050, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                            else:
                                mem[ceil32(arg3.length) + 352] = mem[128]
                                mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                emit Investment(arg1, address(arg2), 2400 * arg1, 1050, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                        else:
                            if sub_70223315 >= 200100 * 10^6:
                                mem[ceil32(arg3.length) + 224] = 1100
                                mem[ceil32(arg3.length) + 288] = arg4
                                mem[ceil32(arg3.length) + 256] = 192
                                mem[ceil32(arg3.length) + 320] = arg3.length
                                if not arg3.length:
                                    if not arg3.length % 32:
                                        emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                        arg1,
                                                        0,
                                                        2400 * arg1,
                                                        1100,
                                                        192,
                                                        arg4,
                                                        arg3.length,
                                                        mem[ceil32(arg3.length) + 352 len arg3.length],
                                    else:
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                        emit Investment(arg1, address(arg2), 2400 * arg1, 1100, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                                else:
                                    mem[ceil32(arg3.length) + 352] = mem[128]
                                    mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                    emit Investment(arg1, address(arg2), 2400 * arg1, 1100, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                            else:
                                if sub_70223315 < 100100 * 10^6:
                                    mem[ceil32(arg3.length) + 224] = 1300
                                    mem[ceil32(arg3.length) + 288] = arg4
                                    mem[ceil32(arg3.length) + 256] = 192
                                    mem[ceil32(arg3.length) + 320] = arg3.length
                                    if not arg3.length:
                                        if not arg3.length % 32:
                                            emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                            arg1,
                                                            0,
                                                            2400 * arg1,
                                                            1300,
                                                            192,
                                                            arg4,
                                                            arg3.length,
                                                            mem[ceil32(arg3.length) + 352 len arg3.length],
                                        else:
                                            mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                            emit Investment(arg1, address(arg2), 2400 * arg1, 1300, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                                    else:
                                        mem[ceil32(arg3.length) + 352] = mem[128]
                                        mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                        emit Investment(arg1, address(arg2), 2400 * arg1, 1300, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                                else:
                                    mem[ceil32(arg3.length) + 224] = 1200
                                    mem[ceil32(arg3.length) + 288] = arg4
                                    mem[ceil32(arg3.length) + 256] = 192
                                    mem[ceil32(arg3.length) + 320] = arg3.length
                                    if not arg3.length:
                                        if not arg3.length % 32:
                                            emit Investment(uint256 rg1, address rg2, uint256 rg3, uint256 rg4, string rg5, uint256 rg6):
                                                            arg1,
                                                            0,
                                                            2400 * arg1,
                                                            1200,
                                                            192,
                                                            arg4,
                                                            arg3.length,
                                                            mem[ceil32(arg3.length) + 352 len arg3.length],
                                        else:
                                            mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
                                            emit Investment(arg1, address(arg2), 2400 * arg1, 1200, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len floor32(arg3.length) + 32]), arg4);
                                    else:
                                        mem[ceil32(arg3.length) + 352] = mem[128]
                                        mem[ceil32(arg3.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                        emit Investment(arg1, address(arg2), 2400 * arg1, 1200, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 352 len arg3.length]), arg4);
                    require arg1 + sub_70223315 >= sub_70223315
                    sub_70223315 += arg1
                    require (2400 * arg1) + sub_84867877 >= sub_84867877
                    require (2400 * arg1) + sub_84867877 <= 1365 * 10^12
                    require (2400 * arg1) + sub_84867877 >= sub_84867877
                    sub_84867877 += 2400 * arg1
}



}
