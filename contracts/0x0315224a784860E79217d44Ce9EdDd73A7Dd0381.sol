contract main {




// =====================  Runtime code  =====================


#
#  - payout(uint256 arg1)
#
const MINIMUM_INVEST = 10^16

const MASS_TRANSACTION_LIMIT = 150

const INTEREST = 3


address owner;
address adminAddr;
uint256 depositAmount;
uint256 round;
uint256 lastPaymentDate;
address stor5;
uint256 stor5;
uint256 stor6;
array of address addresses;
mapping of struct investors;
uint8 stor9;

function round() {
    return round
}

function depositAmount() {
    return depositAmount
}

function investors(address arg1) {
    return investors[arg1].field_0, 
           investors[arg1].field_256,
           investors[arg1].field_512,
           investors[arg1].field_768,
           investors[arg1].field_1024
}

function lastPaymentDate() {
    return lastPaymentDate
}

function adminAddr() {
    return adminAddr
}

function pause() {
    return bool(stor9)
}

function owner() {
    return owner
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return address(addresses[arg1])
}

function gorgonaKiller() {
    return address(stor5), stor6
}

function getInvestorCount() {
    return (addresses.length - 1)
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function getInvestorDividendsAmount(address arg1) {
    return ((3 * block.timestamp * investors[address(arg1)].field_256 / 100) - (3 * investors[address(arg1)].field_768 * investors[address(arg1)].field_256 / 100) / 24 * 3600)
}

function addInvestors(address[] arg1, uint256[] arg2, uint256[] arg3, address[] arg4) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if msg.sender == owner:
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            if investors[mem[(32 * idx) + 140 len 20]].field_256 != 0:
                _86 = mem[64]
                mem[64] = mem[64] + 160
                mem[_86] = addresses.length
                require idx < mem[(32 * arg1.length) + 128]
                mem[_86 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[_86 + 64] = 1
                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                mem[_86 + 96] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
                require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
                mem[_86 + 128] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 236 len 20]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 8
                investors[mem[(32 * idx) + 140 len 20]].field_0 = addresses.length
                investors[mem[(32 * idx) + 140 len 20]].field_256 = mem[_86 + 32]
                investors[mem[(32 * idx) + 140 len 20]].field_512 = 1
                investors[mem[(32 * idx) + 140 len 20]].field_768 = mem[_86 + 96]
                investors[mem[(32 * idx) + 140 len 20]].field_1024 = mem[_86 + 140 len 20]
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                _115 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
                _119 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 224]
                mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 32] = _115
                mem[mem[64] + 64] = address(_119)
                emit Invest(mem[mem[64]], _115, address(_119));
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 8
                if investors[mem[(32 * idx) + 140 len 20]].field_256 > stor6:
                    _135 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_135] = mem[(32 * idx) + 140 len 20]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 8
                    mem[_135 + 32] = investors[mem[(32 * idx) + 140 len 20]].field_256
                    address(stor5) = mem[_135 + 12 len 20]
                    stor6 = investors[mem[0]].field_256
            else:
                require idx < mem[96]
                addresses.length++
                mem[0] = 7
                address(addresses[addresses.length]) = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * arg1.length) + 128]
                depositAmount += mem[(32 * arg1.length) + (32 * idx) + 160]
                _99 = mem[64]
                mem[64] = mem[64] + 160
                mem[_99] = addresses.length
                require idx < mem[(32 * arg1.length) + 128]
                mem[_99 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[_99 + 64] = 1
                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
                mem[_99 + 96] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
                require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
                mem[_99 + 128] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 236 len 20]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 8
                investors[mem[(32 * idx) + 140 len 20]].field_0 = addresses.length
                investors[mem[(32 * idx) + 140 len 20]].field_256 = mem[_99 + 32]
                investors[mem[(32 * idx) + 140 len 20]].field_512 = 1
                investors[mem[(32 * idx) + 140 len 20]].field_768 = mem[_99 + 96]
                investors[mem[(32 * idx) + 140 len 20]].field_1024 = mem[_99 + 140 len 20]
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                _137 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
                _141 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 224]
                mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 32] = _137
                mem[mem[64] + 64] = address(_141)
                emit Invest(mem[mem[64]], _137, address(_141));
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 8
                if investors[mem[(32 * idx) + 140 len 20]].field_256 > stor6:
                    _151 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_151] = mem[(32 * idx) + 140 len 20]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 8
                    mem[_151 + 32] = investors[mem[(32 * idx) + 140 len 20]].field_256
                    address(stor5) = mem[_151 + 12 len 20]
                    stor6 = investors[mem[0]].field_256
            s = addresses.length
            idx = idx + 1
            continue 
        lastPaymentDate = block.timestamp
}

function _fallback() payable {
    if owner != msg.sender:
        if not msg.value:
            if 0 >= investors[msg.sender].field_0:
                revert with 0, 'Investor not found.'
            investors[msg.sender].field_768 = block.timestamp
            if (3 * block.timestamp * investors[address(msg.sender)].field_256 / 100) - (3 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 100) / 24 * 3600 > eth.balance(this.address):
                stor9 = 1
            else:
                call msg.sender with:
                   value (3 * block.timestamp * investors[address(msg.sender)].field_256 / 100) - (3 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 100) / 24 * 3600 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Payout(address arg1, uint256 arg2, string arg3, address arg4):
                            msg.sender,
                            (3 * block.timestamp * investors[address(msg.sender)].field_256 / 100) - (3 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 100) / 24 * 3600,
                            128,
                            0,
                            11,
                            'self-payout',
        else:
            if stor9:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Gorgona is restarting. Please wait.'
            if msg.value < 10^16:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too small amount, minimum 0.01 ether'
            if investors[msg.sender].field_0:
                if 0 >= investors[msg.sender].field_0:
                    revert with 0, 'Investor not found.'
                investors[msg.sender].field_768 = block.timestamp
                if (3 * block.timestamp * investors[address(msg.sender)].field_256 / 100) - (3 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 100) / 24 * 3600 > eth.balance(this.address):
                    stor9 = 1
                    investors[msg.sender].field_256 += msg.value
                    investors[msg.sender].field_512++
                    emit Invest(msg.sender, msg.value, investors[msg.sender].field_1024);
                    depositAmount += msg.value
                    lastPaymentDate = block.timestamp
                    call adminAddr with:
                       value msg.value / 5 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call msg.sender with:
                       value (3 * block.timestamp * investors[address(msg.sender)].field_256 / 100) - (3 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 100) / 24 * 3600 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Payout(address arg1, uint256 arg2, string arg3, address arg4):
                                msg.sender,
                                (3 * block.timestamp * investors[address(msg.sender)].field_256 / 100) - (3 * investors[address(msg.sender)].field_768 * investors[address(msg.sender)].field_256 / 100) / 24 * 3600,
                                128,
                                0,
                                11,
                                'self-payout',
                    investors[msg.sender].field_256 += msg.value
                    investors[msg.sender].field_512++
                    emit Invest(msg.sender, msg.value, investors[msg.sender].field_1024);
                    depositAmount += msg.value
                    lastPaymentDate = block.timestamp
                    call adminAddr with:
                       value msg.value / 5 wei
                         gas 2300 * is_zero(value) wei
            else:
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                addresses.length++
                uint256(addresses[addresses.length]) = msg.sender or Mask(96, 160, uint256(addresses[addresses.length]))
                investors[msg.sender].field_0 = addresses.length
                investors[msg.sender].field_768 = block.timestamp
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                if 0 < investors[mem[128 len 20]].field_256:
                    if mem[128 len 20] != msg.sender:
                        investors[msg.sender].field_1024 = mem[128 len 20]
                investors[msg.sender].field_256 += msg.value
                investors[msg.sender].field_512++
                emit Invest(msg.sender, msg.value, investors[msg.sender].field_1024);
                depositAmount += msg.value
                lastPaymentDate = block.timestamp
                call adminAddr with:
                   value msg.value / 5 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if investors[msg.sender].field_1024 <= 0:
                if address(stor5) <= 0:
                    if investors[msg.sender].field_256 > stor6:
                        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                        stor6 = investors[msg.sender].field_256
                        emit GorgonaKillerChanged(msg.sender, investors[msg.sender].field_256);
                else:
                    call address(stor5) with:
                       value 3 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit Payout(address(stor5), 3 * msg.value / 100, Array(len=6, data='killer'), msg.sender);
                    if investors[msg.sender].field_256 > stor6:
                        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                        stor6 = investors[msg.sender].field_256
                        emit GorgonaKillerChanged(msg.sender, investors[msg.sender].field_256);
            else:
                call investors[msg.sender].field_1024 with:
                   value 3 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit Payout(investors[msg.sender].field_1024, 3 * msg.value / 100, Array(len=8, data='referral'), msg.sender);
                if investors[msg.sender].field_512 != 1:
                    if investors[msg.sender].field_256 > stor6:
                        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                        stor6 = investors[msg.sender].field_256
                        emit GorgonaKillerChanged(msg.sender, investors[msg.sender].field_256);
                else:
                    call msg.sender with:
                       value 3 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit Payout(address arg1, uint256 arg2, string arg3, address arg4):
                                    msg.sender,
                                    3 * msg.value / 100,
                                    128,
                                    0,
                                    9,
                                    'cash-back',
                    if investors[msg.sender].field_256 > stor6:
                        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
                        stor6 = investors[msg.sender].field_256
                        emit GorgonaKillerChanged(msg.sender, investors[msg.sender].field_256);
}



}
