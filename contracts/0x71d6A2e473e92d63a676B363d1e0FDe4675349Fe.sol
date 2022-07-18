contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address stor1;
address VOKENAddress;
address sub_94412d84Address;
uint256 stor4;
uint256 stor5;
uint256 txs;
mapping of uint8 stor7;

function txs() {
    return txs
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function sub_94412d84(?) {
    return sub_94412d84Address
}

function VOKEN() {
    return VOKENAddress
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function changeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    address(stor1.field_0) = arg1
    emit ReceiverChanged(address(stor1.field_0), arg1);
}

function withdrawEther(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not uint8(stor1.field_160):
        if arg1:
            uint8(stor1.field_160) = 1
            emit Paused(msg.sender);
    else:
        if not arg1:
            uint8(stor1.field_160) = 0
            emit Unpaused(msg.sender);
        else:
            if not uint8(stor1.field_160):
                if arg1:
                    uint8(stor1.field_160) = 1
                    emit Paused(msg.sender);
}

function rescueTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function _fallback() payable {
    if uint8(stor1.field_160):
        revert with 0, 'Paused.'
    require msg.value >= stor4
    require ext_code.size(VOKENAddress)
    staticcall VOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor5
    require ext_code.size(VOKENAddress)
    staticcall VOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(VOKENAddress)
    staticcall VOKENAddress.inWhitelist(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require not stor7[msg.sender]
    require ext_code.size(sub_94412d84Address)
    staticcall sub_94412d84Address.status() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require ext_call.return_data[0]
    if not stor5:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0]:
                if 0 == (ext_call.return_data[0] * 0 / ext_call.return_data[0]) + (0 % ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        require msg.value >= 0 / ext_call.return_data[0]
                        if msg.value <= 0 / ext_call.return_data[0]:
                            if txs + 1 >= txs:
                                txs++
                                stor7[msg.sender] = 1
                                emit 0xb7a71ffd: ext_call.return_data[0], ext_call.return_data[96], 0 / ext_call.return_data[0]
                                require ext_code.size(VOKENAddress)
                                call VOKENAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, stor5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                        else:
                            if 0 / ext_call.return_data[0] <= msg.value:
                                call msg.sender with:
                                   value msg.value - (0 / ext_call.return_data[0]) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call address(stor1.field_0) with:
                                   value 0 / ext_call.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                                if txs + 1 >= txs:
                                    txs++
                                    stor7[msg.sender] = 1
                                    emit 0xb7a71ffd: ext_call.return_data[0], ext_call.return_data[96], 0 / ext_call.return_data[0]
                                    require ext_code.size(VOKENAddress)
                                    call VOKENAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, stor5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
    else:
        if ext_call.return_data[96] * stor5 / stor5 == ext_call.return_data[96]:
            if ext_call.return_data[96] * stor5 == (10^6 * ext_call.return_data[96] * stor5 / 10^6) + (ext_call.return_data[96] * stor5 % 10^6):
                if not ext_call.return_data[96] * stor5 / 10^6:
                    if ext_call.return_data[0] > 0:
                        if ext_call.return_data[0]:
                            if 0 == (ext_call.return_data[0] * 0 / ext_call.return_data[0]) + (0 % ext_call.return_data[0]):
                                if ext_call.return_data[0]:
                                    require msg.value >= 0 / ext_call.return_data[0]
                                    if msg.value <= 0 / ext_call.return_data[0]:
                                        if txs + 1 >= txs:
                                            txs++
                                            stor7[msg.sender] = 1
                                            emit 0xb7a71ffd: ext_call.return_data[0], ext_call.return_data[96], 0 / ext_call.return_data[0]
                                            require ext_code.size(VOKENAddress)
                                            call VOKENAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, stor5
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                    else:
                                        if 0 / ext_call.return_data[0] <= msg.value:
                                            call msg.sender with:
                                               value msg.value - (0 / ext_call.return_data[0]) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call address(stor1.field_0) with:
                                               value 0 / ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            if txs + 1 >= txs:
                                                txs++
                                                stor7[msg.sender] = 1
                                                emit 0xb7a71ffd: ext_call.return_data[0], ext_call.return_data[96], 0 / ext_call.return_data[0]
                                                require ext_code.size(VOKENAddress)
                                                call VOKENAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, stor5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                else:
                    if 10^18 * ext_call.return_data[96] * stor5 / 10^6 / ext_call.return_data[96] * stor5 / 10^6 == 10^18:
                        if ext_call.return_data[0] > 0:
                            if ext_call.return_data[0]:
                                if 10^18 * ext_call.return_data[96] * stor5 / 10^6 == (ext_call.return_data[0] * 10^18 * ext_call.return_data[96] * stor5 / 10^6 / ext_call.return_data[0]) + (10^18 * ext_call.return_data[96] * stor5 / 10^6 % ext_call.return_data[0]):
                                    if ext_call.return_data[0]:
                                        require msg.value >= 10^18 * ext_call.return_data[96] * stor5 / 10^6 / ext_call.return_data[0]
                                        if msg.value <= 10^18 * ext_call.return_data[96] * stor5 / 10^6 / ext_call.return_data[0]:
                                            if txs + 1 >= txs:
                                                txs++
                                                stor7[msg.sender] = 1
                                                emit 0xb7a71ffd: ext_call.return_data[0], ext_call.return_data[96], 10^18 * ext_call.return_data[96] * stor5 / 10^6 / ext_call.return_data[0]
                                                require ext_code.size(VOKENAddress)
                                                call VOKENAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, stor5
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                        else:
                                            if 10^18 * ext_call.return_data[96] * stor5 / 10^6 / ext_call.return_data[0] <= msg.value:
                                                call msg.sender with:
                                                   value msg.value - (10^18 * ext_call.return_data[96] * stor5 / 10^6 / ext_call.return_data[0]) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call address(stor1.field_0) with:
                                                   value 10^18 * ext_call.return_data[96] * stor5 / 10^6 / ext_call.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                                if txs + 1 >= txs:
                                                    txs++
                                                    stor7[msg.sender] = 1
                                                    emit 0xb7a71ffd: ext_call.return_data[0], ext_call.return_data[96], 10^18 * ext_call.return_data[96] * stor5 / 10^6 / ext_call.return_data[0]
                                                    require ext_code.size(VOKENAddress)
                                                    call VOKENAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, stor5
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
    revert
}



}
