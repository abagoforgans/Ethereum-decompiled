contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
mapping of uint256 sub_f73171f1;
uint256 term;
uint256 stor5;
address referrersAddress;
uint256 stor7;
uint256 minimumAmount;
uint8 stor9; offset 16
uint16 sub_75184dd6;
uint256 stor9; offset 16
array of struct stor10;
uint8 stor11;

function referrers() {
    return referrersAddress
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function paused() {
    return bool(stor2)
}

function sub_75184dd6(?) {
    return sub_75184dd6
}

function owner() {
    return owner
}

function sub_928fdbb2(?) {
    return bool(uint8(stor9.field_16))
}

function term() {
    return term
}

function minimumAmount() {
    return minimumAmount
}

function sub_f73171f1(?) {
    require calldata.size - 4 >= 32
    return sub_f73171f1[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_0bb72854(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor7 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_254ed464(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    referrersAddress = arg1
}

function updateChance(uint16 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_75184dd6 = arg1
}

function updateMinimumAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minimumAmount = arg1
}

function updateTerm(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    term = arg1
    emit 0x42abe072: term
}

function unpause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function sub_dee85e69(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(240, 0, stor9.field_16) = Mask(240, 0, arg1)
}

function renouncePauser() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function withdrawEther() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isInTerm(address arg1) {
    require calldata.size - 4 >= 32
    if sub_f73171f1[address(arg1)]:
        require sub_f73171f1[address(arg1)] + term >= sub_f73171f1[address(arg1)]
        if block.timestamp < sub_f73171f1[address(arg1)] + term:
            return 1
        else:
            return 0
    else:
        return 0
}

function sub_4c64a01f(?) {
    require calldata.size - 4 >= 64
    mem[180] = uint256(stor10.field_0)
    idx = 180
    s = 0
    while stor10.length + 180 > idx + 32:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg1:
        return uint16(Mask(16, 240, sha3(block.hash(block.number - 1), arg2, mem[180 len stor10.length])) >> 240 % arg1)
    revert
}

function sub_3696d3aa(?) {
    require calldata.size - 4 >= 32
    require not stor2
    if sub_f73171f1[address(msg.sender)]:
        require sub_f73171f1[address(msg.sender)] + term >= sub_f73171f1[address(msg.sender)]
        if block.timestamp < sub_f73171f1[address(msg.sender)] + term:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this sender got daily reward within term'
    emit Action(block.timestamp, msg.sender, arg1);
    sub_f73171f1[address(msg.sender)] = block.timestamp
}

function sub_781cbd02(?) payable {
    require calldata.size - 4 >= 32
    require not stor2
    stor5++
    if msg.value < minimumAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.value should be more than minimum ether amount'
    if arg1 == msg.sender:
        if uint8(stor9.field_16):
            require uint8(stor9.field_16)
            mem[180] = uint256(stor10.field_0)
            idx = 180
            s = 0
            while stor10.length + 180 > idx + 32:
                mem[idx + 32] = stor10[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require sub_75184dd6
            if not uint16(Mask(16, 240, sha3(block.hash(block.number - 1), msg.sender, mem[180 len stor10.length])) >> 240 % sub_75184dd6):
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        emit 0x18bdbdbc: stor11, msg.value, block.timestamp, msg.sender, 0
    else:
        if not uint8(stor9.field_16):
            if arg1:
                require ext_code.size(referrersAddress)
                staticcall referrersAddress.0xd64d6968 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not msg.value:
                        call arg1 with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require msg.value * stor7 / msg.value == stor7
                        call arg1 with:
                           value msg.value * stor7 / 100 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require uint8(stor9.field_16)
            mem[180] = uint256(stor10.field_0)
            idx = 180
            s = 0
            while stor10.length + 180 > idx + 32:
                mem[idx + 32] = stor10[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require sub_75184dd6
            if not uint16(Mask(16, 240, sha3(block.hash(block.number - 1), msg.sender, mem[180 len stor10.length])) >> 240 % sub_75184dd6):
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if arg1:
                    require ext_code.size(referrersAddress)
                    staticcall referrersAddress.0xd64d6968 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if not msg.value:
                            call arg1 with:
                                 gas 2300 wei
                        else:
                            require msg.value
                            require msg.value * stor7 / msg.value == stor7
                            call arg1 with:
                               value msg.value * stor7 / 100 wei
                                 gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        emit 0x18bdbdbc: stor11, msg.value, block.timestamp, msg.sender, arg1
    require stor5 == stor5
}



}
