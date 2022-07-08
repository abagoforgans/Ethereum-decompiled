contract main {




// =====================  Runtime code  =====================


uint256 pot;
uint256 bid;
address leaderAddress;
uint256 stor2;
uint256 sub_169ee8d6;
uint256 sub_b37f6e14;
uint256 sub_db9f0676;
uint256 timerStart;
uint256 number;
address stor8;

function sub_169ee8d6(?) {
    return sub_169ee8d6
}

function bid() {
    return bid
}

function leader() {
    return address(leaderAddress)
}

function pot() {
    return pot
}

function number() {
    return number
}

function sub_b37f6e14(?) {
    return sub_b37f6e14
}

function sub_db9f0676(?) {
    return sub_db9f0676
}

function timerStart() {
    return timerStart
}

function _fallback() payable {
    revert
}

function sub_3adb9114(?) {
    require timerStart <= sub_db9f0676
    require block.timestamp <= sub_db9f0676
    if not sub_db9f0676 - block.timestamp:
        if sub_db9f0676 - timerStart:
            return (0 / sub_db9f0676 - timerStart)
    else:
        if (100 * sub_db9f0676) - (100 * block.timestamp) / sub_db9f0676 - block.timestamp == 100:
            if sub_db9f0676 - timerStart:
                return ((100 * sub_db9f0676) - (100 * block.timestamp) / sub_db9f0676 - timerStart)
    revert
}

function EscapeHatch() {
    if stor8 != msg.sender:
        revert with 0, 'you're not the dev'
    require sub_db9f0676 + (24 * 3600) >= sub_db9f0676
    if block.timestamp <= sub_db9f0676 + (24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72657363617065206861746368206f6e6c7920617661696c61626c652032346820616674657220656e,
                    mem[205 len 23]
    call stor8 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function End() {
    if block.timestamp <= sub_db9f0676:
        revert with 0, 'game is still running!'
    if not pot:
        require 0 <= pot
        call 0x261d650a521103428c6827a11fc0cbce96d74dbc with:
             gas gas_remaining wei
        require ext_call.success
        pot = 0
        call address(leaderAddress) with:
           value pot wei
             gas 2300 * is_zero(value) wei
        emit 0xd32d50b4: pot, 0, number, address(leaderAddress)
    else:
        require sub_b37f6e14 * pot / pot == sub_b37f6e14
        require sub_b37f6e14 * pot / 100 <= pot
        pot -= sub_b37f6e14 * pot / 100
        call 0x261d650a521103428c6827a11fc0cbce96d74dbc with:
           value sub_b37f6e14 * pot / 100 wei
             gas gas_remaining wei
        require ext_call.success
        pot = 0
        call address(leaderAddress) with:
           value pot wei
             gas 2300 * is_zero(value) wei
        emit 0xd32d50b4: pot, sub_b37f6e14 * pot / 100, number, address(leaderAddress)
}

function Bid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= sub_db9f0676:
        revert with 0, 'game is over!'
    if msg.value <= bid:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe6e6f7420656e6f75676820746f20626561742063757272656e74206c65616465,
                    mem[197 len 31]
    if arg1 < 300:
        revert with 0, 'number too low'
    if arg1 > 3000:
        revert with 0, 'number too high'
    require msg.value + pot >= pot
    pot += msg.value
    require timerStart <= sub_db9f0676
    require block.timestamp <= sub_db9f0676
    if not sub_db9f0676 - block.timestamp:
        require sub_db9f0676 - timerStart
        sub_169ee8d6 = 0 / sub_db9f0676 - timerStart
        require 0 / sub_db9f0676 - timerStart <= 100
        sub_b37f6e14 = -(0 / sub_db9f0676 - timerStart) + 100
    else:
        require (100 * sub_db9f0676) - (100 * block.timestamp) / sub_db9f0676 - block.timestamp == 100
        require sub_db9f0676 - timerStart
        sub_169ee8d6 = (100 * sub_db9f0676) - (100 * block.timestamp) / sub_db9f0676 - timerStart
        require (100 * sub_db9f0676) - (100 * block.timestamp) / sub_db9f0676 - timerStart <= 100
        sub_b37f6e14 = -((100 * sub_db9f0676) - (100 * block.timestamp) / sub_db9f0676 - timerStart) + 100
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    number = arg1
    emit 0x1e4954a5: msg.value, arg1, pot, sub_169ee8d6, msg.sender
}



}
